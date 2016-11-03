//
//  secondViewController.swift
//  sampleOmikujiHyper
//
//  Created by Eriko Ichinohe on 2016/07/29.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
    var message = ["かなりいいことあるはず","なにげに中吉よりいい運勢","幸せのハードル下げたらハッピー","自分からの笑顔はキメよう","幸せは細部に宿ってるのかも","何事も視点を変えればいい点あるよ","多分明日大吉だと思う"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //AppDelegateにアクセスするための準備をして
        let myAp = UIApplication.shared.delegate as! AppDelegate
        
        //プロパティの値を読みだす
        let selectedDate = myAp.selectedDate
        
        //占いのどれか一つをランダムに選ぶ
        let r = Int(arc4random()) % omikuji.count
        
        //ラベルに表示
        titleLabel.text = "\(selectedDate)の運勢:\(omikuji[r])"
        
        
        myImageView.image = UIImage(named: "\(r).png")
        
        messageLabel.text = message[r]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
