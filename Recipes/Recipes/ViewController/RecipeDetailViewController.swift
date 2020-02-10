//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Stephanie Ballard on 2/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeTextView: UITextView!
    
    //In the RecipeDetailViewController, add a variable recipe: Recipe?.
    //Call updateViews() in viewDidLoad() and in didSet of the recipe variable.
    var recipe: Recipe? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    //Create a function called updateViews(). This should take the values of the recipe and place them in the corresponding outlets. The recipe's name should go in the label, and the instructions in the text view. Check that the view is loaded when unwrapping the recipe object by using the view controller's isViewLoaded property.
    func updateViews() {
        if self.isViewLoaded, let recipe = recipe {
            
            recipeNameLabel.text = recipe.name
            recipeTextView.text = recipe.instructions
        }
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
