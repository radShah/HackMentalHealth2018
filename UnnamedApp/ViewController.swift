//
//  ViewController.swift
//  UnnamedApp
//
//  Created by Radha Shah on 2/3/18.
//  Copyright © 2018 HackMentalHealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let answerButton1 = UIButton()
        addRestraintsToButton(answerButton: answerButton1, verticalConstraint: 125)

        let answerButton2 = UIButton()
        addRestraintsToButton(answerButton: answerButton2, verticalConstraint: 200)
        
        let answerButton3 = UIButton()
        addRestraintsToButton(answerButton: answerButton3, verticalConstraint: 275)

    }
    
    func addRestraintsToButton(answerButton: UIButton, verticalConstraint: Int) {
        answerButton.backgroundColor = UIColor.green
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(answerButton)
        
        let leadingMarginContraints = NSLayoutConstraint(item: answerButton, attribute:.leadingMargin, relatedBy: .equal, toItem: view, attribute: .leadingMargin, multiplier: 1.0, constant: 0)
        let trailingMarginContraints = NSLayoutConstraint(item: answerButton, attribute:.trailingMargin, relatedBy: .equal, toItem: view, attribute: .trailingMargin, multiplier: 1.0, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: CGFloat(verticalConstraint))
        let heightConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 50)
        view.addConstraints([leadingMarginContraints, trailingMarginContraints, verticalConstraint, heightConstraint])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    fileprivate func createFirstAnswerButton() {
        let answerButton1 = UIButton()
        answerButton1.backgroundColor = UIColor.green
        answerButton1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(answerButton1)
        
 
    }


}

