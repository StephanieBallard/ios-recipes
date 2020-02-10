//
//  MainViewController.swift
//  Recipes
//
//  Created by Stephanie Ballard on 2/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

let networkClient = RecipesNetworkClient()

var allRecipes: [Recipe] = []

class MainViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func searchTextFieldTapped(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
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
