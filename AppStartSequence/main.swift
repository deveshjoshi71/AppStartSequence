//
//  Main.swift
//  AppStartSequence
//
//  Created by Devesh Joshi on 20/09/24.
//

import UIKit

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    NSStringFromClass(CustomApplication.self), // to use the CustomApplicationObject => For monitering Event happing like userTouch
    NSStringFromClass(AppDelegate.self)
)
