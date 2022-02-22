//
//  SecondViewController.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 22.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("loadViewSecond")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoadSecond")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppearSecond")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppearSecond")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDidDisappearSecond")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappearSecond")
    }
}
