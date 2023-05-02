//
//  RecipesViewController.swift
//  TasteTogether
//
//  Created by Samyak Jain on 5/1/23.
//

import Foundation
import UIKit
import AssetsLibrary


class RecipesViewController: UIViewController {

    // MARK: Models

    

  let penne =  Recipes(strMeal: "Spicy Arrabiata Penne",
                  strCategory: "Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil. Drain the pasta and add it to the sauce. Garnish  with Parmigiano-Reggiano flakes and more basil and serve warm.",
                  
                       MealImage: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
                       strIngredients: "penne rigate, olive oil, garlic, chopped tomatoes, red chile flakes, italian seasoning, basil, Parmigiano-Reggiano ")
          
          
         let pizza = Recipes(strMeal: "Pizza Express Margherita",
                  strCategory: "Vegetarian",
                  strArea: "Italian",
                  strInstructions: "To make a pizza, preheat the oven to 230°C. Mix sugar, fresh yeast, and warm water, and let it sit for 10-15 minutes. Sift flour and salt into a bowl, add the yeast mixture and olive oil, and knead the dough for 10 minutes. Place the dough in a baking tray, spread tomato sauce, add cheese, oregano, black pepper, and olive oil. Bake for 10-12 minutes, add a basil leaf on top, and serve.",
                  
                             MealImage: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
                             strIngredients: "water, sugar, yeast, plain flour, salt, olive oil, tomato sauce, mozzarella, oregano, basil, black pepper")
          
    let alfredo =   Recipes(strMeal: "Chicken Alfredo Primavera",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "This recipe involves cooking chicken breasts in a skillet and seasoning them with salt and pepper. Meanwhile, pasta is cooked separately in boiling water and then drained, reserving some of the pasta water. The same skillet used for cooking the chicken is then used to cook vegetables and garlic, deglazed with white wine, and then simmered with milk, heavy cream, and Parmesan cheese. Finally, the cooked pasta is added to the skillet with the sauce and mixed together before serving. The dish can be garnished with additional Parmesan cheese and parsley.",
                  
                          MealImage: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
                            strIngredients: "butter, olive oil, chicken, salt, squash, broccoli, mushrooms, pepper, onion, garlic, red pepper flakes, white wine, milk, heavy cream, parmesan cheese, bowtie pasta, salt, pepper, parsley")
          
      let osso =    Recipes(strMeal: "Osso Buco alla Milanese",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "This recipe is for braised veal shanks, which are first dredged in flour and browned in a Dutch oven or heavy braising pot. Aromatics such as onion, carrot, celery, and fennel are added, along with garlic, orange zest, marjoram, bay leaf, wine, stock, and tomatoes. The shanks are placed in the pot with the bone side facing up, covered with parchment paper and a lid, and braised for about 2 hours until tender. A gremolata made of garlic, parsley, and lemon zest is prepared separately and added to the shanks along with a sauce made from the braising liquid. The shanks are then served with the sauce and a side of risotto.",
                  
                 MealImage: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
                            strIngredients: "Veal, Flour, Olive Oil, Butter, Onion, Carrot, Celery, Fennel, Garlic, Orange Zest, Marjoram, Bay Leaf, Dry White Wine, Chicken Stock, Tomatos, Parsley, Garlic, Lemon Zest")
          
        let pilchard =   Recipes(strMeal: "Pilchard puttanesca",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Cook the pasta following pack instructions. Heat the oil in a non-stick frying pan and cook the onion, garlic and chilli for 3-4 mins to soften. Stir in the tomato purée and cook for 1 min, then add the pilchards with their sauce. Cook, breaking up the fish with a wooden spoon, then add the olives and continue to cook for a few more mins. Drain the pasta and add to the pan with 2-3 tbsp of the cooking water. Toss everything together well, then divide between plates and serve, scattered with Parmesan.",
                  
                               MealImage: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5d/4d/f9/5d4df96a-e95e-2fe9-404a-5d570513762d/20UMGIM15390.rgb.jpg/100x100bb.jpg")!,
                                 strIngredients: "olive oil, onion, garlic, red chilli, tomato puree, pilchards, black olives, parmesan")
    
    

    // Array for storing Dinosaurs
    var strRecipe: [Recipes] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Store recipe models
        strRecipe = [penne, pilchard, alfredo, osso, pizza]

            }
    
    @IBAction func tappedRecipe(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.Recipes = strRecipe[0]
            } else if tappedView.tag == 1 {
                detailViewController.Recipes = strRecipe[1]
            } else if tappedView.tag == 2 {
                detailViewController.Recipes = strRecipe[2]
            } else if tappedView.tag == 3 {
                detailViewController.Recipes = strRecipe[3]
            } else if tappedView.tag == 4 {
                detailViewController.Recipes = strRecipe[4]
            } else {
                print("no Recipe was tapped, please check your selection.")
            }
        }
    }
    
    
    
    
    
    }
    
    
    
    
    
        
        
    
    




