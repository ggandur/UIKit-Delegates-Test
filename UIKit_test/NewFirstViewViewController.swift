//
//  NewFirstViewViewController.swift
//  UIKit_test
//
//  Created by Gabriel Gandur on 14/06/23.
//

import UIKit

class NewFirstScreen: UIViewController {
    let nextButton = UIButton()
    let myPet = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemMint
        
        title = "My pet"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupButton()
        setupPet()
    }
    
    func setupButton(){
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Select Pet"
        
        nextButton.addTarget(self, action: #selector(NavigateToNextScreen), for: .touchUpInside)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func NavigateToNextScreen(){
        let controller = NewSecondScreen()
        controller.delegate = self
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func setupPet(){
        view.addSubview(myPet)
        
        myPet.text = "🙈"
        myPet.textAlignment = .center
        myPet.font = UIFont.systemFont(ofSize: 80)
        myPet.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myPet.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myPet.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension NewFirstScreen: petSelectionViewControllerDelegate{
    func didSelectPet(pet: String) {
        myPet.text = pet
    }
}

