//
//  MainViewController.swift
//  Recipes
//
//  Created by Stephanie Ballard on 2/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

let networkClient = RecipesNetworkClient()

class MainViewController: UIViewController {
    
    var filteredRecipes: [Recipe] = [] {
        didSet {
            filteredRecipes1()
        }
    }
    
    var allRecipes: [Recipe] = [] {
        didSet {
            filteredRecipes1()
        }
    }
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBAction func searchTextFieldTapped(_ sender: UITextField) {
        resignFirstResponder()
        filteredRecipes1()
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

    func filteredRecipes1() {
        DispatchQueue.main.async {
            guard let search = self.searchTextField.text else {return}
            if search == "" {
                self.filteredRecipes = self.allRecipes
            } else {
                self.filteredRecipes = self.allRecipes.filter{ $0.name.contains(search) || $0.instructions.contains(search) }
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
