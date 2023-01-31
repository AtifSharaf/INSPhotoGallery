//
//  BundleImageFetcher.swift
//  INSPhotoGalleryFramework
//
//  Created by Atif khan - Sharaf DG on 31/01/2023.
//  Copyright © 2023 Inspace Labs Sp z o. o. Spółka Komandytowa. All rights reserved.
//

import UIKit



extension Bundle {

    static func getBundleImage(forName name: String) -> UIImage? {
       
        if let bundlePath =  Bundle.init(for: INSPhotosOverlayView.self).path(forResource: "INSPhotoGallery", ofType: "bundle") {
            let bundle = Bundle(path: bundlePath)
            return  UIImage(named: name, in: bundle, compatibleWith: nil)
        } else {
            return nil
        }
    }


    
}

