//
//  ViewController.swift
//  TestCanOpenApi
//
//  Created by Phineas.Huang on 2018/10/31.
//  Copyright © 2018 Phineas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var index:Int = 0
    var listIndex:Int = 0
    
    let urlList:[String] = [
       "kkbox://",
       "comgooglemaps-x-callback://",
       "wechat://",
       "line://",
       "skype://", // 4
       "whatsapp://",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionButtonClick(_ sender: Any) {
        label.text = testCanOpenApi(url: urlList[getIndex()])
    }
    
    func getIndex() -> Int {
        listIndex += 1
        if (listIndex >= urlList.count) {
            listIndex = 0
        }
        return listIndex
    }
    
    func testCanOpenApi(url:String) -> String {
        let openURL = URL.init(fileURLWithPath: url)
        let canOpen = UIApplication.shared.canOpenURL(openURL)
        let message = "[\(index)] \(url) => result:" + (canOpen ? "YES" : "NO")
        index += 1
        return message
    }
    
}

