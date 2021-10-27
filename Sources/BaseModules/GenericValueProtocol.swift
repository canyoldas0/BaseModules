//
//  File.swift
//  
//
//  Created by Can Yoldas on 27.10.2021.
//

import Foundation

public protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
