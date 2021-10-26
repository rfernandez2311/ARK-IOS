//
//  UserAgreement_VC.swift
//  ARK
//
//  Created by Raphael Fernandez Gonzalez on 8/2/19.
//  Copyright © 2019 Raphael Fernandez. All rights reserved.
//

import UIKit

class CommonFunctions: NSObject {
    
    static let shared = CommonFunctions()
    
    
    func makeNavigation_transparent(navController: UINavigationController?){
        navController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navController?.navigationBar.shadowImage = UIImage()
        navController?.navigationBar.isTranslucent = true
    }
    
    func makeButtonCornerRounds(button: UIButton? , cornerRadius: CGFloat?){
        button?.layer.cornerRadius = cornerRadius!
        button?.clipsToBounds = true
    }
    
    func makeViewCornerRounds(view: UIView? , cornerRadius: CGFloat?){
        view?.layer.cornerRadius = cornerRadius!
        view?.clipsToBounds = true
    }
    
    
    func isAgreementAccepted() ->Bool{
        return (UserDefaults.standard.value(forKey: Constants.defaultsKey.isAgreementAccepted) != nil)
    }
    
    func saveAgreementAcceptance(value: Bool){
        UserDefaults.standard.set(value , forKey: Constants.defaultsKey.isAgreementAccepted)
    }
    
    func isOkayAccepted() ->Bool{
        return (UserDefaults.standard.value(forKey: Constants.defaultsKey.device) != nil)
    }
    
    func saveOkayAcceptance(value: Bool){
        UserDefaults.standard.set(value , forKey: Constants.defaultsKey.device)
    }
    
    func whiteColour() ->UIColor {
        return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    }
    
    func AppColour_Gray() ->UIColor {
        return UIColor(red: 67.0/255.0, green: 68.0/255.0, blue: 81.0/255.0, alpha: 1.0)
    }
    
}

extension Date {
    func toMillis() -> Int64! {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}
