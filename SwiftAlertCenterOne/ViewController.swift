//
//  ViewController.swift
//  SwiftAlertCenterOne
//
//  Created by NextDot on 1/31/16.
//  Copyright © 2016 RzRasel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //|------------------------------------|
    var rzAlertView: RzAlertView!;
    var blurEffectView: UIVisualEffectView!;
    //|------------------------------------|
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    @IBAction func sysBtnOnClickAlertLeftToRight(sender: AnyObject) {
        //|------------------------------------|
        print("RZ_MSG:- click AlertLeftToRight");
        //|------------------------------------|
        //|------------------------------------|
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        //|------------------------------------|
        let detailsWidth: CGFloat = view.bounds.width;
        let detailsHeight: CGFloat = view.bounds.height;
        //let detailsHeightFourth: CGFloat = detailsHeight / 4;
        rzAlertView =  RzAlertView(frame: CGRectMake(self.view.frame.width / 4, self.view.frame.height / 4, detailsWidth / 2, detailsHeight / 2));
        rzAlertView.sysBtnOnClickOkAlertView.addTarget(self, action: "funCancelAlertDialog:", forControlEvents: UIControlEvents.TouchUpInside);
        //|------------------------------------|
        rzAlertView.slideInFromLeft();
        self.view.addSubview(blurEffectView)
        self.view.addSubview(rzAlertView);
        //rzAlertView.slideInFromLeft();
        //|------------------------------------|
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    @IBAction func sysBtnOnClickAlertRightToLeft(sender: AnyObject) {
        //|------------------------------------|
        print("RZ_MSG:- click AlertRightToLeft");
        //|------------------------------------|
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        //|------------------------------------|
        let detailsWidth: CGFloat = view.bounds.width;
        let detailsHeight: CGFloat = view.bounds.height;
        //let detailsHeightFourth: CGFloat = detailsHeight / 4;
        rzAlertView =  RzAlertView(frame: CGRectMake(self.view.frame.width / 4, self.view.frame.height / 4, detailsWidth / 2, detailsHeight / 2));
        rzAlertView.sysBtnOnClickOkAlertView.addTarget(self, action: "funCancelAlertDialog:", forControlEvents: UIControlEvents.TouchUpInside);
        //|------------------------------------|
        rzAlertView.slideInFromRight();
        self.view.addSubview(blurEffectView)
        self.view.addSubview(rzAlertView);
        //|------------------------------------|
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    @IBAction func sysBtnOnClickAlertBottomToTop(sender: AnyObject) {
        //|------------------------------------|
        print("RZ_MSG:- click AlertBottomToTop");
        //|------------------------------------|
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        //|------------------------------------|
        let detailsWidth: CGFloat = view.bounds.width;
        let detailsHeight: CGFloat = view.bounds.height;
        //let detailsHeightFourth: CGFloat = detailsHeight / 4;
        rzAlertView =  RzAlertView(frame: CGRectMake(self.view.frame.width / 4, self.view.frame.height / 4, detailsWidth / 2, detailsHeight / 2));
        rzAlertView.sysBtnOnClickOkAlertView.addTarget(self, action: "funCancelAlertDialog:", forControlEvents: UIControlEvents.TouchUpInside);
        //|------------------------------------|
        rzAlertView.slideInFromBottom();
        self.view.addSubview(blurEffectView)
        self.view.addSubview(rzAlertView);
        //|------------------------------------|
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    @IBAction func sysBtnOnClickAlertTopToBottom(sender: AnyObject) {
        //|------------------------------------|
        print("RZ_MSG:- click AlertTopToBottom");
        //|------------------------------------|
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        //|------------------------------------|
        var detailsWidth: CGFloat = view.bounds.width;
        var detailsHeight: CGFloat = view.bounds.height;
        //let detailsHeightFourth: CGFloat = detailsHeight / 4;
        detailsWidth = detailsWidth - 100;
        detailsHeight = detailsHeight - 100;
        let xPos = (view.bounds.width - detailsWidth) / 2;
        let yPos = (view.bounds.height - detailsHeight) / 2;
        rzAlertView =  RzAlertView(frame: CGRectMake(xPos, yPos, detailsWidth, detailsHeight));
        rzAlertView.sysBtnOnClickOkAlertView.addTarget(self, action: "funCancelAlertDialog:", forControlEvents: UIControlEvents.TouchUpInside);
        //|------------------------------------|
        rzAlertView.slideInFromTop();
        self.view.addSubview(blurEffectView)
        self.view.addSubview(rzAlertView);
        //|------------------------------------|
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
    func funCancelAlertDialog(sender: UIButton)
    {
        print("RZ_MSG:- click CancelAlertDialog");
        blurEffectView.removeFromSuperview();
        rzAlertView.removeFromSuperview();
    }
    //|~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|
}