//
//  ViewController.swift
//  sampleOmikujiHyper
//
//  Created by Eriko Ichinohe on 2016/07/29.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        //AppDelegateに選ばれてる日付を保存
        
        //AppDelegateにアクセスするための準備をして
        let myAp = UIApplication.shared.delegate as! AppDelegate
        
        //プロパティの値を書き換えて
        let df = DateFormatter()
        df.dateFormat = "yyyy年MM月dd日"
        myAp.selectedDate = df.string(from: myDatePicker.date)
        
        //プロパティの値を読みだす（確認）
        print("選択された日付:\(myAp.selectedDate)")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

