//
//  VariableEvent.swift
//  EmitterKit
//
//  Created by Nghia Tran on 9/5/18.
//  Copyright © 2018 Alec Larson. All rights reserved.
//

import Foundation

public final class VariableEvent<T>: Event<T> {

    // MARK: - Variable
    public private(set) var value: T?

    // MARK: - Init
    public init(_ value: T) {
        self.value = value
        super.init()
    }

    public override func emit (_ data: T, on target: AnyObject) {
        value = data
        super.emit(data, on: target)
    }

    public override func emit(_ data: T) {
        value = data
        super.emit(data)
    }

    public override func emit(_ data: T, on targets: [AnyObject]) {
        value = data
        super.emit(data, on: targets)
    }
}
