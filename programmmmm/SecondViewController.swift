//
//  SecondViewController.swift
//  programmmmm
//
//  Created by 김민서 on 2017. 9. 4..
//  Copyright © 2017년 김민서. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setUI()
    }
    
    func setUI() {
        let label = UILabel(frame: CGRect(x: 0, y: view.frame.height * 0.5 - 15, width: view.frame.width, height: 30))
        label.text = "Welcome!!!"
        label.textColor = .white
        label.font = UIFont(name: "Noteworthy", size: 20.0)
        view.addSubview(label)
    }
}
