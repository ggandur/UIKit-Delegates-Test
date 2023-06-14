//
//  SecondScreen.swift
//  UIKit_test
//
//  Created by Gabriel Gandur on 13/06/23.
//

import UIKit

class SecondScreen: UIViewController {
    let nextButton = UIButton()
    let animal = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let firstScreenVC = FirstScreen()
        firstScreenVC.delegate = self
        
        view.backgroundColor = .systemTeal
        
        title = "2nd Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupButton()
        setupAnimal()
    }
    
    func setupButton(){
        view.addSubview(nextButton)
        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        
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
        let nextScreen = ThirdScreen()
        
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    func setupAnimal(){
        view.addSubview(animal)
        
        animal.text = "🙈"
        animal.textAlignment = .center
        animal.font = UIFont.systemFont(ofSize: 36)
        animal.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animal.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension SecondScreen: animalSelectionDelegate {
    func didSelectAnimal(animalString: String) {
        animal.text = animalString
    }
}
