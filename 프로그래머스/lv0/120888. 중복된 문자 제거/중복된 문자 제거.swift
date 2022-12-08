import Foundation

func solution(_ my_string:String) -> String {

    let array = my_string.map { String($0) }
    var newArray: [String] = []

    for i in array {
        if newArray.contains(i) == false {
            newArray.append(i)
        }
    }
    return newArray.joined()
    
}
