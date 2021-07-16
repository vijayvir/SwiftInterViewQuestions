//
//  NestedFunctions.swift
//  AdvanceConceptOfSwift
//
//  Created by vijayvir on 09/07/2021.
//

import Foundation

func chooseStepFunction(backward: Bool) ->( Int) -> Int  {
    
    func stepForward(input : Int) -> Int {
        return input + 1
    }
    
    func stepBackward(input : Int) -> Int {
        return input - 1
    }
    
    return backward ? stepBackward  : stepForward
}
    func  testNestedFunction(){
        var currentValue = -4
        
        let moveNearToZero = chooseStepFunction(backward: currentValue > 0)
        
        while currentValue != 0 {
            print(currentValue)
            currentValue = moveNearToZero(currentValue)
        }
        print(currentValue)
    }
