//
//  TabBarViewController.swift
//  VirtualWallet
//
//  Created by solmit on 1/23/20.
//  Copyright © 2020 Brahua. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        customButtom()
    }
    
    func customButtom() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBar.frame.origin.y + 5
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "plus-white"), for: .normal)
        
        menuButton.backgroundColor = UIColor(named: "Secondary")
        menuButton.layer.cornerRadius = 16
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }

}
