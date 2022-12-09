import Foundation

func solution(_ x:Int, _ n:Int) -> [Int] {
    var array: [Int] = []
    
    for i in 1...n {
        array.append(i * x)
    }
    return array
    
}
