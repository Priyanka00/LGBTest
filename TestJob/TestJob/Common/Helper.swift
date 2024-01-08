//
//  Helper.swift
//  TestJob
//
//  Created by Priyanka Sinha on 26/12/23.
//

import Foundation
import UIKit



class AppColour: NSObject {

    
    static func appThemeColour() -> UIColor {
        //Theme Green Colour
        return UIColor(hexString: "#479B5F");
    }
    
    
    static func textWhiteColour() -> UIColor {
        return UIColor.init(named: "textColorWhite")!;
    }
    
    static func textBlackColour() -> UIColor {
        return UIColor.init(named: "textColorBlack")!;
    }
   
    
}

class AppFont: NSObject {
    
    static func normalSmallFont () -> UIFont{
        return UIFont.systemFont(ofSize: 13);
    }
    
    static func normalMediumFont () -> UIFont{
        return UIFont.systemFont(ofSize: 15);
    }
    
    static func normalFont () -> UIFont{
        return UIFont.systemFont(ofSize: 17);
    }
    
    static func normalLargeFont () -> UIFont {
        return UIFont.systemFont(ofSize: 24);
    }
    
    
    static func normalSmallBoldFont () -> UIFont{
        return UIFont.boldSystemFont(ofSize: 13);
    }
    
    static func normalMediumBoldFont () -> UIFont{
        return UIFont.boldSystemFont(ofSize: 15);
    }
    
    static func normalBoldFont () -> UIFont{
        return UIFont.boldSystemFont(ofSize: 17);
    }
    
    static func normalLargeBoldFont () -> UIFont {
        return UIFont.boldSystemFont(ofSize: 28);
    }
    
}



class Helper: NSObject {
    
    static func showLoaderInView(container: UIView)
    {
        let loadingView = ActivityLoaderView.init(frame: container.bounds);
        loadingView.tag = 999999;
        container.addSubview(loadingView);
    }
    
    static func removeLoaderFromView(container: UIView)
    {
        let loader = container.viewWithTag(999999)
        loader?.removeFromSuperview();
    }
}
