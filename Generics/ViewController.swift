//
//  ViewController.swift
//  Generics
//
//  Created by apple on 11/11/24.
//

import UIKit

struct Addition<Element>{
    
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let answer = self.additionOfTwoValues(v1: 8, v2: Int(8.16))
        print(answer)
        let doubleAnswer = self.additionOfTwoDouble(v1: 8, v2: 8.16)
        print(doubleAnswer)
        
        //generic use
        
        let generic1 = self.additionUsingGeneric(v1: 8, v2: 8)
        print(generic1)
        let generic2 = self.additionUsingGeneric(v1: 8, v2: 8.16)
        print(generic2)
        self.getData()
    }
    
    //MARK: Integer
    
    func additionOfTwoValues(v1: Int, v2: Int) -> Int{
        let answer = v1 + v2
        return answer
    }
    
    //MARK: double

    func additionOfTwoDouble(v1: Double, v2: Double) -> Double{
        let answer = v1 + v2
        return answer
    }
    
    //MARK: generic
    
    func additionUsingGeneric<T: Numeric>(v1: T, v2: T) -> T{
        return v1 + v2
    }
    
    //MARK: Structure
    
    func getData(){
        var add = Addition<Double>()
        add.push(8.16)
        add.push(100)
        print(add)
        let pop = add.pop()
        add.push(125)
        print(add)
        
        var str = Addition<String>()
        str.push("Rucha")
        str.push("Developer")
        print(str)
        let s1 = str.pop()
        print(str)
    }
    
}

