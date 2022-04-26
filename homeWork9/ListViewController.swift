//
//  listViewController.swift
//  homeWork9
//
//  Created by Natia's Mac on 02/10/2021.
//

import UIKit
protocol ListDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class ListViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var voteDelegate: ListDelegate!
    
   var stackView = UIStackView()
    
    @IBOutlet weak var confirm: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirm.layer.cornerRadius = confirm.frame.size.height/2
        configureStackView()
    }
    
    func configureStackView(){
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        addButtons()
        setConstraintStackView()
    }
    func addButtons(){
        
        let listItems = ["(5) ერთიანი ნაციონალური მოძრაობა", "(41) ქართული ოცნება", "(9) ლელო საქართველოსთვის","(8) პატრიოტთა ალიანსი", "(27) სტრატეგია აღმაშენებელი", "(10) ლეიბორისტული პარტია","(45) გირჩი", "(24) ალეკო ელისაშვილი - მოქალაქეები"]
        for items in listItems {
            let btn = ListItemsButton()
            let spaced = "  " + items
            btn.setTitle(spaced, for: .normal)
            btn.addTarget(self, action: #selector(doneButton), for: .touchUpInside)
            stackView.addArrangedSubview(btn)
        }
        
    }



    func setConstraintStackView(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 30).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant:  -30).isActive = true
        stackView.bottomAnchor.constraint(equalTo: confirm.topAnchor, constant: -20).isActive = true
    }
    @objc func doneButton(_ sender: UIButton) {
      
        let listItem = sender.titleLabel?.text
        
        switch listItem {
        case "  (5) ერთიანი ნაციონალური მოძრაობა" :
            voteDelegate.didTapChoice(image: UIImage(named:"enm")!, name: "ერთიანი ნაციონალური მოძრაობა", color: .red)
            print("yes")
                    dismiss(animated: true, completion: nil)
        case "  (41) ქართული ოცნება":
            voteDelegate.didTapChoice(image: UIImage(named:"ocneba")!, name: "ქართული ოცნება", color: .blue)
                    dismiss(animated: true, completion: nil)
        case "  (9) ლელო საქართველოსთვის":
            voteDelegate.didTapChoice(image: UIImage(named:"lelo")!, name: "ლელო საქართველოსთვის", color: .yellow)
                    dismiss(animated: true, completion: nil)
            
        default: break
        }

    }
    

}
