//
//  ViewController.swift
//  ADG-task-4
//
//  Created by Nishika Agarwal on 08/02/20.
//  Copyright © 2020 Nishika Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func even(n: Int)
    { for i in 1...n {
        if i % 2 == 0 {
            print(i)
            }
            
        }
    }
    
    func stringlength(str1: String, str2: String)
    {   let length1 = str1.count
        let length2 = str2.count

        if length1 > length2 {
           print(str1)
           }

       else {
           print(str2)
           }
    }
        
   func swapstring(array: [String], index: Int)
        {   var array:[String] = ["a","b","c","d","e"]
            array.swapAt(0,index)
            print(array)
        }

        
    override func viewDidLoad() {
    super.viewDidLoad()
        
       even(n:40)

       stringlength(str1: "This is the first string", str2: "we have to print the longer string")
       
       let array:[String] = ["a","b","c","d","e"]
       let n = array.count
       let index = 4
       if index<n {
       print(swapstring(array:["a","b","c","d","e"], index:4))
        }
       
}
}

