import Foundation

func solution(_ s:String) -> String {
    
    let array = s.components(separatedBy: " ")
    let intArr = array.map {Int($0)!}
    let orderedArr = intArr.sorted(by: <)
    let stringArr = orderedArr.map {String($0)} // min max
    
    return ("\(stringArr[0]) \(stringArr[stringArr.count - 1])")
    
}