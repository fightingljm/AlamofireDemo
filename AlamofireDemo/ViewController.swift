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
        
        Alamofire.request("http://httpbin.org/get",method: .get).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error ?? "default value")
                return
            }
            print(result)
        }
        
        Alamofire.request("http://httpbin.org/post",method: .post,parameters: ["name":"ljm"]).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error ?? "default value")
                return
            }
            print(result)
        }
        
    }


}

