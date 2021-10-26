//
//  UserAgreement_VC.swift
//  ARK
//
//  Created by Raphael Fernandez Gonzalez on 8/2/19.
//  Copyright © 2019 Raphael Fernandez. All rights reserved.
//

import UIKit

class Constants: NSObject {
    
    struct navigationTitles {
        static let userAgreement = "User Agreement"
        static let home = "Home"
        static let configuration = "Configuration"
        
    }
    
    
    struct carSize {
        static let small = "Small"
        static let medium = "Medium"
        static let large = "Large"
    }
    
    
    struct ErrorMessages {
        static let acceptTermsAndConditions = "Please accept Terms and Conditions"
    }

    static let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    struct defaultsKey {
        static let isAgreementAccepted = "isAgreementAccepted"
        static let okay = "okay"
        static let device = "device"
        static let deviceName = "devicename"
    }
}
