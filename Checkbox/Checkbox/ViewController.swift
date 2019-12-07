//
//  ViewController.swift
//  Checkbox
//
//  Created by Alok Subedi on 12/7/19.
//  Copyright © 2019 Alok Subedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var button:CheckboxButton = {
        let button = CheckboxButton(frame: CGRect(x: 50, y: 200, width: 200, height: 50), title: "ButtonButton")
        button.addTarget(self, action: #selector(onTap(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var button1:CheckboxButton = {
        let button = CheckboxButton(frame: CGRect(x: 0, y: 300, width: 100, height: 30), title: "Button")
        button.addTarget(self, action: #selector(onTap(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var button2:CheckboxButton = {
        let button = CheckboxButton(frame: CGRect(x: 10, y: 400, width: 300, height: 100), title: "ButtonButtonButton")
        button.addTarget(self, action: #selector(onTap(sender:)), for: .touchUpInside)
        return button
    }()
    
    @objc func onTap(sender: CheckboxButton){
        sender.tapped()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(button)
        view.addSubview(button2)
        view.addSubview(button1)
    }


}

