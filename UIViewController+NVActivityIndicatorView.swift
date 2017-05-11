//
//  UIViewController+ NVActivityIndicatorView.swift
//  wddouble
//
//  Created by Keith Lee on 2017/3/3.
//  Copyright © 2017年 git4u. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
extension UIViewController {
    func animateIndicator(message: String? = nil) {
        let data = ActivityData.init(
            size: nil,
            message: message,
            type: nil,
            color: nil,
            padding: nil,
            displayTimeThreshold: nil,
            minimumDisplayTime: nil
        )
        
        DispatchQueue.main.async ({
            NVActivityIndicatorPresenter.sharedInstance.startAnimating(data)
        })
    }
    
    func hideIndicator() {
        DispatchQueue.main.async ({
            NVActivityIndicatorPresenter.sharedInstance.stopAnimating()
        })
    }
}

