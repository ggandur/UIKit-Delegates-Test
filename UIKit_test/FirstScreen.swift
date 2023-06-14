//
//  FirstScreen.swift
//  UIKit_test
//
//  Created by Gabriel Gandur on 12/06/23.
//

import UIKit

protocol animalSelectionDelegate: AnyObject{
    func didSelectAnimal(animalString: String)
}

class FirstScreen: UIViewController {
    let nextButton = UIButton()
    let dogButton = UIButton()
    let catButton = UIButton()
    
    weak var delegate: animalSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemMint
        
        title = "1st Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupButton()
        setupDogButton()
        setupCatButton()
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
        navigationController?.pushViewController(SecondScreen(), animated: true)
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
        delegate?.didSelectAnimal(animalString: "🐕")
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
        delegate?.didSelectAnimal(animalString: "🐈")
    }
    
}
