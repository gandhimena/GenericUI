//
//  CustomOperators.swift
//  FunctionalUI
//
//  Created by spy chatter on 2/19/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import UIKit

precedencegroup SingleTypeComposition {
    associativity: right
}

infix operator<>: SingleTypeComposition
func <> <A: AnyObject>(f: @escaping (A) -> Void, g: @escaping (A) -> Void) -> (A) -> Void {
    return { a in
        f(a)
        g(a)
    }
}
