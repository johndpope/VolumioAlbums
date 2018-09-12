//
//  BrowseViewController.swift
//  VolumioAlbums
//
//  Created by Sebastian Cohausz on 23.07.18.
//  Copyright © 2018 scgmbh. All rights reserved.
//

import UIKit
import RxSwift
import SocketIO

class BrowseViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var client = VolumioClient()
    
    var disposeBag = DisposeBag()
    
    var items: [Category] = []
    var categoryType: CategoryType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView?.delegate = self
        self.collectionView?.setCollectionViewLayout(AlbumCoverFlowLayout(), animated: false)
        
        client.playBackState.asObservable().subscribe(onNext: { playbackstate in
            print("from Observer: \(playbackstate)")
        }).disposed(by: disposeBag)
    }
    
    func setup<T: Category>(type: T.Type) {
        //this is very ugly, can't this be done without using Generics?
        categoryType = T.categoryType
        client.fetchCategoryItems().subscribe(onNext: { (items: [T]) in
            self.items = items
            self.collectionView?.reloadData()
        }).disposed(by: disposeBag)
    }
    
    func drillDown<T: Category, U: Category>(item: T, nextType: U.Type) {
        categoryType = U.categoryType
        client.drillDown(item: item).subscribe(onNext: { (items: [U]) in
            self.items = items
            self.collectionView?.reloadData()
        }).disposed(by: disposeBag)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 4
        let height = width * 4 / 3
        return CGSize(width: width, height: height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return CollectionViewCellHelper.cellFor(item: items[indexPath.row], collectionView: collectionView, indexPath: indexPath)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let bvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseViewController") as! BrowseViewController
        
        if let item = items[indexPath.row] as? Artist {
            bvc.drillDown(item: item, nextType: Album.self)
            self.navigationController?.pushViewController(bvc, animated: true)
        }
        
        
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
}

