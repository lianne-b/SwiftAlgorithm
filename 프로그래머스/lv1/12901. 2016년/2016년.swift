func solution(_ a:Int, _ b:Int) -> String {
    
    var numResult: Int = 0
    var remain: Int = 0
    
    // 1. 주어진 날짜의 누적 일수?를 7로 나눈다
    // 2. 12개월을 30,31,29일로 구분한다
    
    // 31 29 31 30 31 30 31 31 30 31 30 31
    // ex. 5월 24일 - 31 28 31 30 31 + 24
    // 합 % 7 -> [SUN,MON,TUE,WED,THU,FRI,SAT]의 인덱스
    
    let months: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let weekdays: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED",]
    
    for i in 0..<a-1 {
        numResult += months[i]
    } 
    
    numResult += b
    remain = numResult % 7


    return weekdays[remain]
}