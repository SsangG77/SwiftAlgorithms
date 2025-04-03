//
//  MakeJadenCaseString.swift
//  SwiftAlgorithms
//
//  Created by 차상진 on 4/3/25.
//

import Foundation



/*
    1. 매개 변수 첫번째 글자 가져오기
    2. 첫번째 글자가 정수로 형변환이 가능하거나, 띄어쓰기인지 확인
    3. 두번째 경우면 바로 리턴
    4. 두번째 경우가 아니면 첫번째 문자를 대문자로 바꿔서 리턴
    */

func makeJadenCaseString(_ s: String) -> String {
    
    
     var result = ""
     
     for i in 0...s.count-1 {
         let index = s.index(s.startIndex, offsetBy: i)
         
         if i == 0 { // 첫번째일때
             if s[index].isNumber || s[index] == " " { //숫자거나 공백이면 넣기
                 result += String(s[index])
             } else {
                 result += String(s[index]).uppercased() // 아니면 대문자로 넣기
             }
         } else { // 첫번째가 아닐때
             if let last = result.last { // result 마지막 값
                 if last == " " { // result 마지막 값이 공백일때
                     result += String(s[index]).uppercased()
                 } else {
                     result += String(s[index]).lowercased()
                 }
             }
         }
     }
    
    return result
     
}
