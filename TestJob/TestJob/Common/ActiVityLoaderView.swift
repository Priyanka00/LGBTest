//
//  ActiVityLoaderView.swift
//  TestJob
//
//  Created by Priyanka Sinha on 26/12/23.
//

import UIKit

class ActivityLoaderView: UIView {

    private var activityIndication: UIActivityIndicatorView!;
    private var titleLabel: UILabel!;
    private var container: UIView!;
    //initWithFrame to init view from code
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupView()
    }
      
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView()
    {
        container = UIView.init(frame: CGRect(x: 0, y: 0, width: 200.0, height: 100.0));
        container.backgroundColor = UIColor.systemBackground;
        container.layer.cornerRadius = 10.0;
        container.clipsToBounds = true;
        container.dropShadow(color: AppColour.appThemeColour(), offSet: CGSize(width: 5.5, height: 3.2));
        container.center = self.center;
        self.addSubview(container);
        
        
        activityIndication = UIActivityIndicatorView.init(style: .large);
        activityIndication.tintColor = AppColour.appThemeColour();
        activityIndication.frame = CGRect(x: container.frame.size.width / 2 - 20, y: container.frame.size.height / 2 - 30, width: 40, height: 40);
        activityIndication.startAnimating();
        
        container.addSubview(activityIndication);
        
        
        titleLabel = UILabel.init(frame: CGRect(x: 10, y: activityIndication.frame.size.height + activityIndication.frame.origin.y, width: container.frame.size.width - 20, height: 30));
        titleLabel.textColor = AppColour.appThemeColour();
        titleLabel.font = AppFont.normalMediumBoldFont();
        titleLabel.text = "Please wait...";
        titleLabel.textAlignment = .center;
        
        container.addSubview(titleLabel);
        
        self.backgroundColor = UIColor.systemGray2.withAlphaComponent(0.4);
    }

}

