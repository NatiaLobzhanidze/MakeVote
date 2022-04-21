//
//  listViewController.swift
//  homeWork9
//
//  Created by Natia's Mac on 02/10/2021.
//

import UIKit
protocol listDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class listViewController: UIViewController {

    var voteDelegate: listDelegate!
    
   
    @IBOutlet weak var confirm: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirm.layer.cornerRadius = confirm.frame.size.height/2
        
    }
    
    @IBAction func donebutton(_ sender: Any) {
      
//        let numbers = textFild.text
//        if numbers == "5" {
//            voteDelegate.didTapChoice(image: UIImage(named:"enm")!, name: "ერთიანი ნაციონალური მოძრაობა", color: .red)
//            dismiss(animated: true, completion: nil)
//        }
//        else if numbers == "9" {
//            voteDelegate.didTapChoice(image: UIImage(named:"lelo")!, name: "ლელო საქართველოსთვის", color: .yellow)
//            dismiss(animated: true, completion: nil)
//        }
//        if numbers == "41" {
//            voteDelegate.didTapChoice(image: UIImage(named:"ocneba")!, name: "ქართული ოცნება", color: .blue)
//            dismiss(animated: true, completion: nil)
//        }
    }
    

}
