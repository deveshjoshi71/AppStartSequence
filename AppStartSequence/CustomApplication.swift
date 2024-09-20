//
//  CustomApplication.swift
//  AppStartSequence
//
//  Created by Devesh Joshi on 20/09/24.
//

import UIKit

class CustomApplication: UIApplication {

    override func sendEvent(_ event: UIEvent) {
        print("Intercepted event \(event)")
        super.sendEvent(event)
    }
}
