//
//  ViewController.swift
//  CallofDutyFriendsStats
//
//  Created by Jesus Alvelo on 9/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var username = "jesusalejandroap11@gmail.com"
        var password = "Lashocker0"
        
        //URL
        let url = URL(string: "https://s.activision.com/activision/login" )!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
     
//        guard url != nil else {
//            print("Error creating url object")
//        }
        //URL REQUEST
//        var request = URLRequest(url: <#T##URL#>, cachePolicy: <#T##URLRequest.CachePolicy#>, timeoutInterval: <#T##TimeInterval#>)
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }

        task.resume()
    }


}

