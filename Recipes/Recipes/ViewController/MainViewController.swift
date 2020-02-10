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
    
    var recipesTableViewController: RecipesTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkClient.fetchRecipes { (recipe, error) in
            if let error = error {
                NSLog("Error loading recipes: \(error)")
                return
            }
        }
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TableViewEmbededSegue" {
            recipesTableViewController = segue.destination as? RecipesTableViewController
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }
    

}
