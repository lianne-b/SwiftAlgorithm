import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var count: Int = 0
    var pastCount: [Int] = []
    var leftRightArr: [Int] = []
    var result: Int = 0
    // left~right - 하나씩 약수의 개수가 몇개인지 계산 / 짝수의 합 - 홀수의 합
    // 숫자 하나를 약수로 구하기
    // ex. 12 - 1 2 3 4 6 12 / 12 % a = 0
    
    
for i in left...right {
    for j in 1...i {
        if i % j == 0 {
            count += 1
        }
    }
    leftRightArr.append(i)
    pastCount.append(count)
    count = 0
  }
    
    for i in 0..<leftRightArr.count {
        if pastCount[i] % 2 == 0 {
            result += leftRightArr[i]
        } else {
            result -= leftRightArr[i]
        }
    }
    
    return result
}