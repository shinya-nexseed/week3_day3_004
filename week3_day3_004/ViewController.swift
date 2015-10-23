//
//  ViewController.swift
//  week3_day3_004
//
//  Created by Shinya Hirai on 2015/10/21.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // json
//        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
//        println(path!)
//        
//        var jsondata = NSData(contentsOfFile: path!)
//        
//        // 読み込んだjsonデータを配列に変換 (これはjsonの中身が配列だから)
//        let jsonArray = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSArray
//        
//        // 配列の個数だけ繰り返して表示する
//        // 高速列挙文 (普通のfor文より処理が早いです)
//        for dat in jsonArray {
//            println("値=[\(dat)]")
//        }
//        
//        // 例
//        for (var i = 0; i < jsonArray.count; i++) {
//            println("値=[\(jsonArray[i])]")
//        }
        
        // クラスのメンバー情報を返すjsonを作成し、読み込んでみる
        var path = NSBundle.mainBundle().pathForResource("members", ofType: "txt")
        var jsondata = NSData(contentsOfFile: path!)
        
//        // 辞書データに変換
//        let jsonDictionary = NSJSONSerialization.JSONObjectWithData(jsondata!, options: nil, error: nil) as! NSDictionary
//        
//        // 辞書データを高速列挙する
//        for (key,value) in jsonDictionary {
//            var d1 = value["name"] as! String
//            var d2 = value["age"] as! String
//            var d3 = value["gender"] as! String
//            
//            println(key)
//            println(d1)
//            println(d2)
//            println(d3)
//            println("======================")
//        }
        
        // TODO: members.jsonを使って、TableViewと組み合わせて表示するプログラムを作る
        
        var endpoint = NSURL(string: "https://itunes.apple.com/search?term=beatles&country=JP&lang=ja_jp&media=music")
        var data = NSData(contentsOfURL: endpoint!)
        
        // 辞書データに変換
        let jsonDictionary = NSJSONSerialization.JSONObjectWithData(data!, options: nil, error: nil) as! NSDictionary
        
//        println(jsonDictionary["results"])
        var ary = jsonDictionary["results"] as! NSArray
        println(ary[0]["trackName"])
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

