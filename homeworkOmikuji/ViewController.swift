//
//  ViewController.swift
//  homeworkOmikuji
//
//  Created by 仲松拓哉 on 16/01/2018.
//  Copyright © 2018 仲松拓哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // おみくじの結果を配列に格納する
    var omikuji = ["大吉","吉","中吉","小吉","末吉","大凶","凶"]
    
    @IBOutlet weak var imageResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageResult.image = UIImage(named:"eriko.png")
    }

    
    //占うボタンが押された時発動
    @IBAction func tapUranai(_ sender: UIButton) {
//        print(omokuji[0])
        
        //占いの結果をランダムに選ぶための数字を作成
        //Int(arc4random()) はランダムな数字が出力される
        // 例)71(ランダムな数)を7で割った余り->1なので、吉
        let r = Int(arc4random()) % omikuji.count
        print(omikuji[r])
        
        //TODO:アラートに運勢を表示した上で、画面上に表示
        //部品となるアラートを作成
        let alert = UIAlertController(title:"今日の運勢", message:"\(omikuji[r])",preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title:"OK", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
        
        //TODO:画像をおみくじの運勢分用意して、OKが押されたら対応する画像を表示する
        //条件分岐: おみくじの結果毎に画像を変数に代入    
        
        switch omikuji[r] {
            case "大吉":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"daikyou.png")
            
            case "吉":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"kichi.png")
            
            case "中吉":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"chuukichi.png")
            
            case "小吉":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"shoukichi.png")
            
            case "末吉":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"suekichi.png")
            
            case "大凶":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"daikyou.png")
            
            case "凶":
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"kyou.png")
            
            default:
                imageResult.bounds.size.width = 253
                imageResult.bounds.size.height = 113
                imageResult.image = UIImage(named:"sonota.png")
        }
        
        
        //TODO:出来上がったら、Githubにコミットプッシュ
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

