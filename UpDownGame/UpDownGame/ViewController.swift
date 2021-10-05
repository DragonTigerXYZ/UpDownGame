//
//  ViewController.swift
//  UpDownGame
//
//  Created by YB on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    
//    // 내가 선택한 숫자를 담는 변수
//    var myNumber: Int = 1
    
    
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()

        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        
        // 2) 숫자 레이블은 ""
        numberLabel.text = ""


    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자 레이블이 숫자에 따라 변하도록
        numberLabel.text = numString
        
//        // 3) 선택한 숫자를 변수에다가 저장(선택사항)
//        // 문자열을 숫자로 변환한다음 저장
//        guard let num = Int(numString) else { return }
//
//        myNumber = num
        
        
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 추가 방법
        // 숫자레이블에 있는 문자열 가져오기(옵셔널 언랩핑)
        
        guard let myNumString = numberLabel.text else { return }
        // 타입변환 문자열->정수로
        guard let myNumber = Int(myNumString) else { return }
        
        
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP / DOWN / Bingo (메인레이블에)
        
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😁"
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 숫자레이블을 ""(빈문자열)
        numberLabel.text = ""
        // 3) 컴퓨터의 랜덤숫자를 다시 선택하게
        comNumber = Int.random(in: 1...10)

    }
    


}

