//  Identifier.swift
//
//  Created by Jonathan Hull on 6/23/20.
//  Copyright © 2020 UX Detectives. All rights reserved.

import Foundation

public struct Identifier<T>:Hashable,ExpressibleByStringLiteral,Codable {
    var value:String
        
    public init(_ value:String = UUID().uuidString) {
        self.value = value
    }
    
    public init(stringLiteral value: StringLiteralType) {
        self.value = value
    }
}

extension Identifier:CustomStringConvertible {
    public var description: String {
        return value
    }
}

extension Identifier:CustomDebugStringConvertible {
    public var debugDescription: String {
        return "Id<\(T.self)>(\(value))"
    }
}
