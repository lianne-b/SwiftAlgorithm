import Foundation

func solution(_ hp:Int) -> Int {
 
    var jang: Int = 0
    var byeong: Int = 0
    var ill: Int = 0
    
    jang = hp / 5
    byeong = (hp % 5) / 3
    if jang * 5 + byeong * 3 != hp {
        ill = hp - (jang * 5 + byeong * 3)
    }

    return jang + byeong + ill
}