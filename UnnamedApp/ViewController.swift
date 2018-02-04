//
//  ViewController.swift
//  UnnamedApp
//
//  Created by Radha Shah on 2/3/18.
//  Copyright © 2018 HackMentalHealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let questionLabel = UILabel()
    let answerButton1 = UIButton()
    let answerButton2 = UIButton()
    let answerButton3 = UIButton()



    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        addRestraintsToQuestionLabel()
        addRestraintsToButton(answerButton: answerButton1, verticalConstraint: 125)
        addRestraintsToButton(answerButton: answerButton2, verticalConstraint: 200)
        addRestraintsToButton(answerButton: answerButton3, verticalConstraint: 275)
        setFirstScenerio()
    }
    
    func addRestraintsToQuestionLabel() {
        questionLabel.backgroundColor = UIColor.green
        questionLabel.font =  UIFont(name: "HelveticaNeue", size: 20)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionLabel)
        let horizontalConstraint = NSLayoutConstraint(item: questionLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: -200)
        let verticalConstraint = NSLayoutConstraint(item: questionLabel, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 100)
        let widthConstraint = NSLayoutConstraint(item: questionLabel, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 400)
        let heightConstraint = NSLayoutConstraint(item: questionLabel, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 400)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
    
    func addRestraintsToButton(answerButton: UIButton, verticalConstraint: Int) {
        answerButton.backgroundColor = UIColor.green
        answerButton.titleLabel!.font =  UIFont(name: "HelveticaNeue-Thin", size: 18)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(answerButton)
        let horizontalConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: CGFloat(verticalConstraint))
        let widthConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 376)
        let heightConstraint = NSLayoutConstraint(item: answerButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 60)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
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
    
    func setFirstScenerio() {
        questionLabel.text = "You are at work, and you have noticed your colleague, John, has been quiet and withdrawn today.  He seems to sweating a little bit and is lost in his thoughts."
        answerButton1.setTitle("Don’t do anything, he looks like he doesn’t want to be bothered.", for: .normal)
        answerButton2.setTitle("Is everything okay, John? You look like you have something on your mind.", for: .normal)
        answerButton3.setTitle("Turn that smile upside down! Cheer up!", for: .normal)
    }


}

