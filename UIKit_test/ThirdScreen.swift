//
//  ThirdScreen.swift
//  UIKit_test
//
//  Created by Gabriel Gandur on 13/06/23.
//

import UIKit

class ThirdScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemIndigo
        title = "3rd Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
