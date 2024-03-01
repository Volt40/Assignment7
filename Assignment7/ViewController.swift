//
//  ViewController.swift
//  Assignment7
//
//  Created by Michael Baljet on 2/28/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let recipies = Recipe.allRecipes;
        content.text = recipies[indexPath.row].name
        content.secondaryText = recipies[indexPath.row].ingredients
        cell.contentConfiguration = content;
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // Deselect the row after selection
        
        // Get the selected recipe
        let selectedRecipe = Recipe.allRecipes[indexPath.row]
        
        // Perform segue to the second view controller
        performSegue(withIdentifier: "showRecipeDetails", sender: selectedRecipe)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetails",
            let recipeDetailsVC = segue.destination as? RecipeViewController,
            let selectedIndexPath = tableView.indexPathForSelectedRow, // Get the index path of the selected row
            let selectedRecipe = Recipe.allRecipes[selectedIndexPath.row] as? Recipe {
            // Pass the selected recipe and index path to the destination view controller
            recipeDetailsVC.recipe = selectedRecipe
        }
    }


}

