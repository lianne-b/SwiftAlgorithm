import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    // 튜플, 딕셔너리 없이 풀기:
    // 1. 배열을 내림차순으로 정렬한 사본 생성
    // 2. 응급도를 담을 변수, 응급도의 순서를 담을 빈 배열 생성
    // 3. 원본 배열과 사본 배열 항목 1대1 비교
        // emergency의 a가 sortedEmergency의 b보다 크거나 같으면 응급도 +1
    
    var sortedEmergency = emergency.sorted(by: >)
    var orderArr: [Int] = []
    
    for i in emergency {
        
        var index = 1
        
        for j in sortedEmergency { // 76, 24, 3
            if i == j {
                break
            }
            index += 1
        }
        orderArr.append(index)
    }
 
    return orderArr
}