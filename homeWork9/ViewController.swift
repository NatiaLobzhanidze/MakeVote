//
//  ViewController.swift
//  homeWork9
//
//  Created by Natia's Mac on 02/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainButton.layer.cornerRadius = mainButton.frame.size.height/3
        logoimage.frame.size.height = 150
        logoimage.frame.size.width = 150
        logoimage.layer.cornerRadius = logoimage.frame.size.height/5
        
    }


    @IBAction func votebutton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "listViewController")as!ListViewController
        vc.voteDelegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: ListDelegate{
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        logoimage.image = image
        mainLabel.text = name
        view.backgroundColor = color
        
    }
    
    
}
