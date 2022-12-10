func solution(_ seoul:[String]) -> String {
    var seobangnim = seoul.firstIndex(of: "Kim")
    return "김서방은 \(seobangnim ?? 0)에 있다"
}
