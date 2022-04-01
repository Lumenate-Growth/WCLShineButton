//
//  File.swift
//  
//
//  Created by Simon Mitchell on 01/04/2022.
//

import Foundation

#if !SPM

private class MyBundleFinder {}

extension Bundle {
    /**
     The bundle associated with the current module..
     - important: When `DateTimePicker` is distributed via Swift Package Manager, it will be synthesized automatically in the name of `Bundle.module`.
     */
    static var module: Bundle {
        return Bundle(for: MyBundleFinder.self)
    }
}

#endif


