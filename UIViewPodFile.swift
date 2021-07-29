//
//  UIViewPodFile.swift
//  MyCocoapodsLibrary
//
//  Created by surya-zstk231 on 28/07/21.
//

import Foundation

public class UIViewPodFile {
    public init(){}
    public func backgroundColourChange(view: UIView, bgColour: UIColor){
        view.backgroundColor = bgColour
    }
    public func changeLabelTextColour(label:UILabel, txtColour: UIColor){
        label.textColor = txtColour
    }
    public func changeAlpha(element:UIView,alphaValue: CGFloat){
        element.alpha = alphaValue
    }
    public func forCreateButton(frame: CGRect, btnText:String = "", bgColour: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) -> UIButton{
        let btn = UIButton(frame: frame)
        btn.setTitle(btnText, for: .normal)
        btn.backgroundColor = bgColour
        btn.layer.cornerRadius = frame.height/2
        return btn
    }
}
