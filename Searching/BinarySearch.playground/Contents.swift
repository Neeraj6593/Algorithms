import UIKit

func binarySearch(data:[Int],element:Int)->(Bool,Int){
    let result = (false,-1)
    
    if element > data[data.count/2]{
        for i in (data.count/2 ..< data.count).reversed(){
            if element == (data[i]){
            return  (true,i)
            }
        }
    }else if element < data[data.count/2]{
        for i in (0 ..< data.count/2){
            if element == (data[i]){
                return  (true,i)
               
            }
        }
    }else{
        if element == data[data.count/2]{
            return (true,data.count/2)
        }
    }
    return result
}
var arr = [4,8,12,56,98,105,198,224,298,311]
binarySearch(data: arr, element: 105)
