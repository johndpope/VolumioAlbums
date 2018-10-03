//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.file` struct is generated, and contains static references to 1 files.
  struct file {
    /// Resource file `a2212145730_16.jpg`.
    static let a2212145730_16Jpg = Rswift.FileResource(bundle: R.hostingBundle, name: "a2212145730_16", pathExtension: "jpg")
    
    /// `bundle.url(forResource: "a2212145730_16", withExtension: "jpg")`
    static func a2212145730_16Jpg(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.a2212145730_16Jpg
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 1 images.
  struct image {
    /// Image `a2212145730_16.jpg`.
    static let a2212145730_16Jpg = Rswift.ImageResource(bundle: R.hostingBundle, name: "a2212145730_16.jpg")
    
    /// `UIImage(named: "a2212145730_16.jpg", bundle: ..., traitCollection: ...)`
    static func a2212145730_16Jpg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.a2212145730_16Jpg, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 9 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `HeaderCell`.
    static let headerCell: Rswift.ReuseIdentifier<AlbumTracksHeaderCell> = Rswift.ReuseIdentifier(identifier: "HeaderCell")
    /// Reuse identifier `TrackCell`.
    static let trackCell: Rswift.ReuseIdentifier<AlbumTracksTrackCell> = Rswift.ReuseIdentifier(identifier: "TrackCell")
    /// Reuse identifier `albumCell`.
    static let albumCell: Rswift.ReuseIdentifier<AlbumCoverCollectionViewCell> = Rswift.ReuseIdentifier(identifier: "albumCell")
    /// Reuse identifier `artistCell`.
    static let artistCell: Rswift.ReuseIdentifier<AlbumCoverCollectionViewCell> = Rswift.ReuseIdentifier(identifier: "artistCell")
    /// Reuse identifier `controlsCell`.
    static let controlsCell: Rswift.ReuseIdentifier<PlaybackControlsCell> = Rswift.ReuseIdentifier(identifier: "controlsCell")
    /// Reuse identifier `genreCell`.
    static let genreCell: Rswift.ReuseIdentifier<AlbumCoverCollectionViewCell> = Rswift.ReuseIdentifier(identifier: "genreCell")
    /// Reuse identifier `imageViewCell`.
    static let imageViewCell: Rswift.ReuseIdentifier<PlaybackArtworkCell> = Rswift.ReuseIdentifier(identifier: "imageViewCell")
    /// Reuse identifier `informationCell`.
    static let informationCell: Rswift.ReuseIdentifier<PlaybackInformationCell> = Rswift.ReuseIdentifier(identifier: "informationCell")
    /// Reuse identifier `playbackTrackCell`.
    static let playbackTrackCell: Rswift.ReuseIdentifier<PlaybackTrackCell> = Rswift.ReuseIdentifier(identifier: "playbackTrackCell")
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 4 localization keys.
    struct localizable {
      /// en translation: Albums
      /// 
      /// Locales: en
      static let albums = Rswift.StringResource(key: "albums", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Artists
      /// 
      /// Locales: en
      static let artists = Rswift.StringResource(key: "artists", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Genres
      /// 
      /// Locales: en
      static let genres = Rswift.StringResource(key: "genres", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      /// en translation: Tracks
      /// 
      /// Locales: en
      static let tracks = Rswift.StringResource(key: "tracks", tableName: "Localizable", bundle: R.hostingBundle, locales: ["en"], comment: nil)
      
      /// en translation: Albums
      /// 
      /// Locales: en
      static func albums(_: Void = ()) -> String {
        return NSLocalizedString("albums", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Artists
      /// 
      /// Locales: en
      static func artists(_: Void = ()) -> String {
        return NSLocalizedString("artists", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Genres
      /// 
      /// Locales: en
      static func genres(_: Void = ()) -> String {
        return NSLocalizedString("genres", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: Tracks
      /// 
      /// Locales: en
      static func tracks(_: Void = ()) -> String {
        return NSLocalizedString("tracks", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let albumTracksViewController = StoryboardViewControllerResource<AlbumTracksViewController>(identifier: "AlbumTracksViewController")
      let browseViewController = StoryboardViewControllerResource<BrowseViewController>(identifier: "BrowseViewController")
      let bundle = R.hostingBundle
      let name = "Main"
      
      func albumTracksViewController(_: Void = ()) -> AlbumTracksViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: albumTracksViewController)
      }
      
      func browseViewController(_: Void = ()) -> BrowseViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: browseViewController)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "a2164104584_16.jpg") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'a2164104584_16.jpg' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "a2212145730_16.jpg") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'a2212145730_16.jpg' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.main().browseViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'browseViewController' could not be loaded from storyboard 'Main' as 'BrowseViewController'.") }
        if _R.storyboard.main().albumTracksViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'albumTracksViewController' could not be loaded from storyboard 'Main' as 'AlbumTracksViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
