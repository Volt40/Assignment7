//
//  RecipeViewController.swift
//  Assignment7
//
//  Created by Michael Baljet on 2/29/24.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var text: UITextView!
    var recipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = recipe?.instructions
    }
    
}
