//
//  Recipe.swift
//  Assignment7
//
//  Created by Michael Baljet on 2/28/24.
//

import Foundation

enum Recipe {
    case spaghettiCarbonara
    case chickenTikkaMasala
    case chocolateChipCookies
    case vegetableStirFry
    case classicCaesarSalad
    case beefTacos
    case mushroomRisotto
    case bananaBread
    case grilledCheeseSandwich
    case chickenNoodleSoup
    
    var name: String {
        switch self {
        case .spaghettiCarbonara: return "Spaghetti Carbonara"
        case .chickenTikkaMasala: return "Chicken Tikka Masala"
        case .chocolateChipCookies: return "Chocolate Chip Cookies"
        case .vegetableStirFry: return "Vegetable Stir Fry"
        case .classicCaesarSalad: return "Classic Caesar Salad"
        case .beefTacos: return "Beef Tacos"
        case .mushroomRisotto: return "Mushroom Risotto"
        case .bananaBread: return "Banana Bread"
        case .grilledCheeseSandwich: return "Grilled Cheese Sandwich"
        case .chickenNoodleSoup: return "Chicken Noodle Soup"
        }
    }
    
    var ingredients: String {
        switch self {
        case .spaghettiCarbonara: return "Spaghetti, eggs, pancetta, Parmesan cheese, black pepper"
        case .chickenTikkaMasala: return "Chicken breast, yogurt, tomato sauce, spices, cream"
        case .chocolateChipCookies: return "Flour, sugar, butter, chocolate chips, eggs, vanilla extract"
        case .vegetableStirFry: return "Assorted vegetables, soy sauce, garlic, ginger, vegetable oil"
        case .classicCaesarSalad: return "Romaine lettuce, croutons, Parmesan cheese, Caesar dressing"
        case .beefTacos: return "Ground beef, taco seasoning, tortillas, lettuce, cheese, salsa"
        case .mushroomRisotto: return "Arborio rice, mushrooms, onion, garlic, vegetable broth, Parmesan cheese"
        case .bananaBread: return "Bananas, flour, sugar, eggs, butter, baking soda"
        case .grilledCheeseSandwich: return "Bread, cheese, butter"
        case .chickenNoodleSoup: return "Chicken, noodles, carrots, celery, onion, chicken broth"
        }
    }
    
    var instructions: String {
        switch self {
        case .spaghettiCarbonara: return "Cook spaghetti. Cook pancetta until crisp. Whisk eggs, cheese, and pepper. Toss hot pasta with egg mixture and pancetta."
        case .chickenTikkaMasala: return "Marinate chicken in yogurt and spices. Grill chicken. Simmer in tomato sauce and cream."
        case .chocolateChipCookies: return "Cream butter and sugar. Add eggs and vanilla. Mix in dry ingredients and chocolate chips. Bake."
        case .vegetableStirFry: return "Stir-fry vegetables in oil with garlic and ginger. Add soy sauce."
        case .classicCaesarSalad: return "Toss lettuce with dressing, croutons, and cheese."
        case .beefTacos: return "Cook beef with taco seasoning. Serve in tortillas with toppings."
        case .mushroomRisotto: return "Sauté mushrooms and onion. Add rice and broth gradually, stirring until creamy. Stir in Parmesan."
        case .bananaBread: return "Mash bananas. Mix with sugar, eggs, and melted butter. Stir in dry ingredients. Bake."
        case .grilledCheeseSandwich: return "Butter bread. Place cheese between slices. Grill until golden brown."
        case .chickenNoodleSoup: return "Boil chicken in broth. Add vegetables and noodles. Simmer until cooked."
        }
    }
    
    static var allRecipes: [Recipe] {
        return [
            .spaghettiCarbonara,
            .chickenTikkaMasala,
            .chocolateChipCookies,
            .vegetableStirFry,
            .classicCaesarSalad,
            .beefTacos,
            .mushroomRisotto,
            .bananaBread,
            .grilledCheeseSandwich,
            .chickenNoodleSoup
        ]
    }
}
