//
//  RzAlertView.swift
//  SwiftAlertCenterOne
//
//  Created by NextDot on 1/31/16.
//  Copyright © 2016 RzRasel. All rights reserved.
//

import UIKit

class RzAlertView: UIView {
    //|------------------------------------|
    var view: UIView!
    @IBOutlet var sysBtnOnClickOkAlertView: UIButton!
    //|------------------------------------|
    
    //var window: UIWindow!
    /*required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }*/
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadViewFromNib()
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func loadViewFromNib() {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "RzAlertView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        self.addSubview(view);
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
}
//|------------------------------------|
extension UIView {
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    // Name this function in a way that makes sense to you...
    // slideFromLeft, slideRight, slideLeftToRight, etc. are great alternative names
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func slideInFromLeft(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        // Create a CATransition animation
        let slideInFromLeftTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        if let delegate: AnyObject = completionDelegate {
            slideInFromLeftTransition.delegate = delegate
        }
        
        // Customize the animation's properties
        slideInFromLeftTransition.type = kCATransitionPush
        slideInFromLeftTransition.subtype = kCATransitionFromLeft
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromLeftTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.addAnimation(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func slideInFromRight(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        // Create a CATransition animation
        let slideInFromLeftTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        if let delegate: AnyObject = completionDelegate {
            slideInFromLeftTransition.delegate = delegate
        }
        
        // Customize the animation's properties
        slideInFromLeftTransition.type = kCATransitionPush
        slideInFromLeftTransition.subtype = kCATransitionFromRight
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromLeftTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.addAnimation(slideInFromLeftTransition, forKey: "slideInFromRightTransition")
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func slideInFromTop(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        // Create a CATransition animation
        let slideInFromTopTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        if let delegate: AnyObject = completionDelegate {
            slideInFromTopTransition.delegate = delegate
        }
        
        // Customize the animation's properties
        slideInFromTopTransition.type = kCATransitionPush
        slideInFromTopTransition.subtype = kCATransitionFromBottom
        slideInFromTopTransition.duration = duration
        slideInFromTopTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromTopTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.addAnimation(slideInFromTopTransition, forKey: "slideInFromTopTransition")
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func slideInFromBottom(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        // Create a CATransition animation
        let slideInFromBottomTransition = CATransition()
        
        // Set its callback delegate to the completionDelegate that was provided (if any)
        if let delegate: AnyObject = completionDelegate {
            slideInFromBottomTransition.delegate = delegate
        }
        
        // Customize the animation's properties
        slideInFromBottomTransition.type = kCATransitionPush
        slideInFromBottomTransition.subtype = kCATransitionFromTop
        slideInFromBottomTransition.duration = duration
        slideInFromBottomTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        slideInFromBottomTransition.fillMode = kCAFillModeRemoved
        
        // Add the animation to the View's layer
        self.layer.addAnimation(slideInFromBottomTransition, forKey: "slideInFromBottomTransition")
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
}
//|------------------------------------|