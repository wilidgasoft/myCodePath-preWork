//
//  ViewController.swift
//  Pre-workCodePath
//
//  Created by wilman garcia on 28/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var uilMyNextJob: UILabel!
    @IBOutlet weak var uilUniversity: UILabel!
    @IBOutlet weak var uilName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        let fontSize = changeFontSize()
        let randomColorLabel = changeColor()
        
        view.backgroundColor = randomColor
        
        
        uilName.backgroundColor = randomColorLabel
        uilUniversity.backgroundColor = randomColorLabel
        uilMyNextJob.backgroundColor = randomColorLabel
        
        uilName.textColor = .white
        uilUniversity.textColor = .white
        uilMyNextJob.textColor = .white
        
        uilName.font = UIFont.systemFont(ofSize: fontSize)
        uilUniversity.font = UIFont.systemFont(ofSize: fontSize)
        uilMyNextJob.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func changeFontSize() -> CGFloat{
        let fontSize = CGFloat.random(in: 10...20)
        return fontSize
    }
}

