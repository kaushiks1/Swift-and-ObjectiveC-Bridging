//
//  ViewController.swift
//  ObjectiveCSwiftBrifging
//
//  Created by Roshan Sequeira on 06/05/16.
//  Copyright © 2016 Saltmines Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.swiftFunction()
        print(self.swiftFunctionWithReturnValue())
        self.swiftFunctionPassingValueToObjectiveCClass()
        self.callOjectiveC()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    
    func callOjectiveC()
    {
        let objClass:ObjectiveCClass =  ObjectiveCClass()
        objClass.callASwiftFunction()
    }
    
    func  swiftFunction()
    {
        //Using objective c function here
        print("Swift Class \(#function)")
        let objClass:ObjectiveCClass =  ObjectiveCClass()
        objClass.objectiveCfunction()
    }
    
    func swiftFunctionWithReturnValue()->String
    {
        var returnValue:String;
        let objClass:ObjectiveCClass =  ObjectiveCClass()
        let objCReturn:String = objClass.objectiveCFunctionWithReturnValue()
        returnValue = "Returning  from swiftFunctionWithReturnValue , appending \(objCReturn) "
        return returnValue
    }
    
    func swiftFunctionPassingValueToObjectiveCClass()
    {
        let objClass:ObjectiveCClass =  ObjectiveCClass()
        objClass.objectiveCfunctionWithValuePassed(fromSwiftClass: "Passing a string from Swift Class");
    }
    
    func functionFromObjectiveC()
    {
        print("In swift class , Function from objective c");
    }
}

