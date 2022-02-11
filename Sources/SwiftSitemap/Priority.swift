//
//  Priority.swift
//  SwiftSitemap
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

open class Priority: Tag {

    public init(_ value: Double) {
        super.init()
        setContents(String(value))
    }
}
