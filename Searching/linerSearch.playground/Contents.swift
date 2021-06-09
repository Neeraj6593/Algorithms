import Foundation

func linerSearch<T:Equatable>(data: [Any],element:Any, type:T.Type)->(Bool,Int){
    var result = (false,-1)
    for i in 0 ..< data.count{
        if (data[i] as? T)  == (element as? T){
            result = (true,i)
            return result
        }
    }
    return result
}


func searchIntegersExample(){
let arr = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
let searchElement = 80


let result = linerSearch(data: arr, element: searchElement, type: Int.self)

switch result.0 {
case true:
    print("\(searchElement) found at \(result.1)")
case false:
    print("\(searchElement) Not found")
}
}


func searchStringExample(){
let arr = ["neeraj","ajay","akshay","jyoti","divya"]
let searchElement = "akshay"


let result = linerSearch(data: arr, element: searchElement, type: String.self)

switch result.0 {
case true:
    print("\(searchElement) found at \(result.1)")
case false:
    print("\(searchElement) Not found")
}
}

searchStringExample()
