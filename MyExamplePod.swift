//
//  MyExamplePod.swift
//  MyCocoapodsLibrary
//
//  Created by surya-zstk231 on 28/07/21.
//

import Foundation

public class MyExamplePod {
    var count: Int = 0 {
        didSet {
            printedFunc()
        }
    }
    public init(times: Int){
        self.count = times
    }
    
    public func printedFunc(){
        for i in 0..<count {
            print(i)
        }
    }
}
