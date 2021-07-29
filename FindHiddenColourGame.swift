//
//  FindHiddenColourGame.swift
//  MyCocoapodsLibrary
//
//  Created by surya-zstk231 on 28/07/21.
//

import Foundation

public class FindHiddenColourGame {
    var frame:CGRect
    var view:UIView = UIView()
    public init(frame: CGRect){
        self.frame = frame
        view.frame = frame
    }
    public func addColourView() -> UIView{
        let UIViewPod = UIViewPodFile()
        let btn1 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 100, width: 50, height: 50), bgColour: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        let btn2 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 150, width: 50, height: 50), bgColour: #colorLiteral(red: 0.757755816, green: 0.1455075741, blue: 0.1555967331, alpha: 1))
        let btn3 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 200, width: 50, height: 50), bgColour: #colorLiteral(red: 0.9991992116, green: 0.5006501675, blue: 0.3011707067, alpha: 1))
        let btn4 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 250, width: 50, height: 50), bgColour: #colorLiteral(red: 0, green: 0.99747473, blue: 0.001711818273, alpha: 1))
        let btn5 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 300, width: 50, height: 50), bgColour: #colorLiteral(red: 0, green: 0.8845372796, blue: 0.8209421039, alpha: 1))
        let btn6 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 350, width: 50, height: 50), bgColour: #colorLiteral(red: 0.5962640047, green: 0.0002363130625, blue: 0.5222158432, alpha: 1))
        let btn7 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 400, width: 50, height: 50), bgColour: #colorLiteral(red: 1, green: 0.8041787744, blue: 0.8124701381, alpha: 1))
        let btn8 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 450, width: 50, height: 50), bgColour: #colorLiteral(red: 0.9981487393, green: 0.60504812, blue: 0.004281711765, alpha: 1))
        let btn9 = UIViewPod.forCreateButton(frame: CGRect(x: 0, y: 500, width: 50, height: 50), bgColour: #colorLiteral(red: 0.05510231107, green: 0.00211964664, blue: 0.9971206784, alpha: 1))
        let btn10 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 100, width: 50, height: 50), bgColour: #colorLiteral(red: 0, green: 0.5056267977, blue: 0.5187323689, alpha: 1))
        let btn11 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 150, width: 50, height: 50), bgColour: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        let btn12 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 200, width: 50, height: 50), bgColour:  #colorLiteral(red: 0.01348287798, green: 0, blue: 0.5200457573, alpha: 1))
        let btn13 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 250, width: 50, height: 50), bgColour: #colorLiteral(red: 0, green: 0.9989327788, blue: 0.9996770024, alpha: 1))
        let btn14 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 300, width: 50, height: 50), bgColour: #colorLiteral(red: 1, green: 0.8466913104, blue: 0, alpha: 1))
        let btn15 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 350, width: 50, height: 50), bgColour: #colorLiteral(red: 0.9996961951, green: 0.5141763091, blue: 0.9514821172, alpha: 1))
        let btn16 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 400, width: 50, height: 50), bgColour: #colorLiteral(red: 0.9982646108, green: 0.998481214, blue: 0, alpha: 1))
        let btn17 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 450, width: 50, height: 50), bgColour: #colorLiteral(red: 0.006642263383, green: 0.6053087115, blue: 0.008204825222, alpha: 1))
        let btn18 = UIViewPod.forCreateButton(frame: CGRect(x: 50, y: 500, width: 50, height: 50), bgColour: #colorLiteral(red: 0.9964460731, green: 0.006271040998, blue: 0.00862262398, alpha: 1))
        let btns = [btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9,btn10,btn11,btn12,btn13,btn14,btn15,btn16,btn17,btn18].forEach { btn in
            btn.addTarget(self, action: #selector(btnTapped(_:)), for: .touchUpInside)
            view.addSubview(btn)
        }
        return view
    }
    @objc func btnTapped(_ sender: UIButton){
        view.backgroundColor = sender.backgroundColor
    }
}
