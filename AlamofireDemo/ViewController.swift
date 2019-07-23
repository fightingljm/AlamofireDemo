//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by 刘金萌 on 2019/7/23.
//  Copyright © 2019 刘金萌. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkTools.requestData(type: .GET, URLString: "http://httpbin.org/get") { (result) in
            print(result)
        }
        
        NetworkTools.requestData(type: .POST, URLString: "http://httpbin.org/post", parameters: ["name":"刘小鱼鱼鱼"]) { (result) in
            print(result)
        }
        
    }


}

