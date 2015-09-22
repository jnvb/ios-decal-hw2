//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var customBtn1: UIButton!
    @IBOutlet var customBtn2: UIButton!
    @IBOutlet var iosDecalBtn: UIButton!
    @IBOutlet var deleteBtn: UIButton!
    @IBOutlet var returnBtn: UIButton!
    @IBOutlet var imageBtn: UIButton!
    @IBOutlet var pizzaBtn: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        customBtn1.addTarget(self, action: "customBtn1Press", forControlEvents: .TouchUpInside)
        customBtn2.addTarget(self, action: "customBtn2Press", forControlEvents: .TouchUpInside)
        iosDecalBtn.addTarget(self, action: "iosDecalBtnPress", forControlEvents: .TouchUpInside)
        deleteBtn.addTarget(self, action: "deleteBtnPress", forControlEvents: .TouchUpInside)
        returnBtn.addTarget(self, action: "returnBtnPress", forControlEvents: .TouchUpInside)
        imageBtn.addTarget(self, action: "imageBtnPress", forControlEvents: .TouchUpInside)
        pizzaBtn.addTarget(self, action: "pizzaBtnPress", forControlEvents: .TouchUpInside)
    }
    
    func deleteBtnPress()
    {
        textDocumentProxy.deleteBackward()
    }
    
    func returnBtnPress()
    {
        textDocumentProxy.insertText("\n")
    }

    func customBtn1Press()
    {
        textDocumentProxy.insertText(">.<")
    }
    
    func customBtn2Press()
    {
        textDocumentProxy.insertText("@.@")
    }
    
    func iosDecalBtnPress()
    {
        textDocumentProxy.insertText("IOS Decal!!")
    }
    
    func imageBtnPress()
    {
        textDocumentProxy.insertText("")
    }
    
    func pizzaBtnPress()
    {
        textDocumentProxy.insertText("🍕");
    }

}
