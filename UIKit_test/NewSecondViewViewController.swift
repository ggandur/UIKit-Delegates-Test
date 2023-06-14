//
//  NewSecondViewViewController.swift
//  UIKit_test
//
//  Created by Gabriel Gandur on 14/06/23.
//

import UIKit

protocol petSelectionViewControllerDelegate{
    func didSelectPet(pet: String)
}

class NewSecondScreen: UIViewController {
    let backButton = UIButton()
    let dogButton = UIButton()
    let catButton = UIButton()
    
    var delegate: petSelectionViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .systemTeal
        
        title = "Select your pet"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupDogButton()
        setupCatButton()
    }
    
    func setupDogButton(){
        view.addSubview(dogButton)
        
        dogButton.configuration = .filled()
        dogButton.configuration?.baseBackgroundColor = .systemPink
        dogButton.configuration?.title = "🐕"
        
        dogButton.addTarget(self, action: #selector(dogButtonTapped), for: .touchUpInside)
        
        dogButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dogButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -64),
            dogButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dogButton.widthAnchor.constraint(equalToConstant: 100),
            dogButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func dogButtonTapped(){
        print("🐕")
        delegate?.didSelectPet(pet: "🐕")
        navigationController?.popViewController(animated: true)
        //delegate?.didSelectAnimal(animalString: "🐕")
    }
    
    func setupCatButton(){
        view.addSubview(catButton)
        
        catButton.configuration = .filled()
        catButton.configuration?.baseBackgroundColor = .systemPink
        catButton.configuration?.title = "🐈"
        
        catButton.addTarget(self, action: #selector(catButtonTapped), for: .touchUpInside)
        
        catButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            catButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 64),
            catButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            catButton.widthAnchor.constraint(equalToConstant: 100),
            catButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func catButtonTapped(){
        print("🐈")
        delegate?.didSelectPet(pet: "🐈")
        navigationController?.popViewController(animated: true)
        //delegate?.didSelectAnimal(animalString: "🐈")
    }
    
    @objc func NavigateToNextScreen(){
        //navigationController?.pushViewController(nextScreen, animated: true)
        //navigationController?.popViewController(animated: true)
    }
}
