import Foundation

func solution(_ numbers:[Int]) -> Int {
    let sum = numbers.reduce(0) { $0 + $1 }
    return 45 - sum
}