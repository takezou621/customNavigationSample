//
//  ViewController.swift
//  customNavigationSample
//
//  Created by Takeshi Kawai on 2015/05/25.
//  Copyright (c) 2015年 Takeshi Kawai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightBarButtonItem: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // ナビゲーションバー
        // 背景を透明にする
        self.navigationController?.navigationBar.setBackgroundImage(UIImage.new(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController!.navigationBar.shadowImage = UIImage.new()
        
        // タイトル画像
        let titleImageView = UIImageView(image: UIImage(named: "logo"))
        self.navigationItem.titleView = titleImageView
        self.navigationItem.titleView!.frame = CGRectMake(0, 0, titleImageView.frame.size.width, titleImageView.frame.size.height)
        self.navigationItem.titleView!.center = CGPointMake(self.view.frame.size.width / 2,titleImageView.frame.size.height / 2)
        
        // 右側のバーアイテムの色をhex形式で指定
        rightBarButtonItem.tintColor = UIColor(rgba: "#ff00ff")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

