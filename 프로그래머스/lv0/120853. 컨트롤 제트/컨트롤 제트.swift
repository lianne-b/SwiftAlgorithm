import Foundation

func solution(_ s:String) -> Int {
    
    var array = s.split(separator: " ")
    var numArr: [Int] = []
    var zIndex: Int = 0
    var result = 0
    
    // 1. 문자열s가 Z를 포함하지 않을 때까지 while문 돌리기
    // 2. Z가 있다면 인덱스를 찾아서 Z와 Z 이전 수 모두 배열에서 빼낸다
    while array.contains("Z") {
        zIndex = array.firstIndex(of: "Z")!
        array.remove(at: zIndex)
        if (zIndex > 0) { // Z가 첫 항목일 경우 예외 처리
            array.remove(at: zIndex - 1)
        }
    }
    
    // 3. 없다면 숫자 배열에 다시 담기
    for num in array {
        numArr.append(Int(num) ?? 0)
    }

    // 4. 숫자 배열에 있는 모든 값 더하기
    for num in numArr {
        result += num
    }

    return result
}


