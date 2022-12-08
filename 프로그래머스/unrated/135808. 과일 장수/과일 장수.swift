import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    // 1. 점수 비교를 위해 내림차순 정렬 
    // 2. 앞에서부터 m만큼 배열을 자르고 (최대 점수를 포함한 박스), 오름차순 정렬 (그 중 최저 점수 찾기)
    // 3. 박스1 내의 최저 점수에 사과 개수 m을 곱한 결과 저장
    // 4. 다음 박스로 넘어가기 (2~3번을 남은 항목 개수가 m보다 작을 때까지 반복)

    let sortedArr: [Int] = score.sorted(by: >)
    var slicingPoint: Int = 0
    let boxCount: Int = score.count / m // ex. 4
    var total: Int = 0
    
    // boxCount > 1의 경우: 
    // ex. 1 3 3 1 1 1 1 1 1 1 2 1 1 1 (m: 3)
        // boxCount: 14 / 3 = 4
        // 박스 분류: 3 3 2, 1 1 1, 1 1 1, 1 1 1 (남은 1 1 버려짐)
    
    // boxCount = 1의 경우: 
    // ex. 1 3 3 1 1 1 1 1 1 1 2 1 1 1 (m: 8)
        // boxCount: 14 / 8 = 1
    
    // boxCount = 0의 경우 (이익 없음): 
        // ex. 1 3 3 1 1 1 1 1 1 (m: 10)
        // boxCount: 9 / 10 = 0
    
    // 	3, 4, [1, 2, 3, 1, 2, 3, 1]
    
    if boxCount >= 1 {
        for _ in 0...boxCount-1 {
            let box = Array(sortedArr[slicingPoint..<slicingPoint + m]).sorted(by: <)
            slicingPoint += m
            total += box[0] * m
        }
    } else {
        total = 0
    }
    return total
}
