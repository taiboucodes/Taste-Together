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
                  
                       MealImage: UIImage(named: "penne")!,
                       strIngredients: "penne rigate, olive oil, garlic, chopped tomatoes, red chile flakes, italian seasoning, basil, Parmigiano-Reggiano ")
          
          
         let pizza = Recipes(strMeal: "Pizza Express Margherita",
                  strCategory: "Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Preheat the oven to 230°C. Add the sugar and crumble the fresh yeast into warm water. Allow the mixture to stand for 10 – 15 minutes in a warm place until froth develops on the surface. Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil. Lightly flour your hands, and slowly mix the ingredients together until they bind. Generously dust your surface with flour. Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft. Place in a lightly oiled, non-stick baking tray. Spread the tomato sauce on top making sure you go to the edge. Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil. Cook in the oven for 10 – 12 minutes until the cheese slightly colours. When ready, place the basil leaf on top and tuck in!",
                  
                             MealImage: UIImage(named: "pizza")!,
                             strIngredients: "water, sugar, yeast, plain flour, salt, olive oil, tomato sauce, mozzarella, oregano, basil, black pepper")
          
    let alfredo =  Recipes(strMeal: "Chicken Alfredo Primavera",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Heat 1 tablespoon of butter and 2 tablespoons of olive oil in a large skillet over medium-high heat. Season both sides of each chicken breast with seasoned salt and a pinch of pepper. Add the chicken to the skillet and cook for 5-7 minutes on each side, or until cooked through.  While the chicken is cooking, bring a large pot of water to a boil. Season the boiling water with a few generous pinches of kosher salt. Add the pasta and give it a stir. Cook, stirring occasionally, until al dente, about 12 minutes. Reserve 1/2 cup of  pasta water before draining the pasta.  Remove the chicken from the pan and transfer it to a cutting board; allow it to rest. Turn the heat down to medium and dd the remaining 1 tablespoon of butter and olive oil to the same pan you used to cook the chicken. Add the veggies (minus the garlic) and red pepper flakes to the pan and stir to coat with the oil and butter (refrain from seasoning with salt until the veggies are finished browning). Cook, stirring often, until the veggies are tender, about 5 minutes. Add the garlic and a generous pinch of salt and pepper to the pan and cook for 1 minute.  Deglaze the pan with the white wine. Continue to cook until the wine has reduced by half, about 3 minutes. Stir in the milk, heavy cream, and reserved pasta water. Bring the mixture to a gentle boil and allow to simmer and reduce for 2-3 minutes. Turn off the heat and add the Parmesan cheese and cooked pasta. Season with salt and pepper to taste. Garnish with Parmesan cheese and chopped parsley, if desired. ",
                  
                          MealImage: UIImage(named: "alfredo")!,
                            strIngredients: "butter, olive oil, chicken, salt, squash, broccoli, mushrooms, pepper, onion, garlic, red pepper flakes, white wine, milk, heavy cream, parmesan cheese, bowtie pasta, salt, pepper, parsley")
          
      let osso =    Recipes(strMeal: "Osso Buco alla Milanese",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Heat the oven to 300 degrees. Dredging the shanks: pour the flour into a shallow dish (a pie plate works nicely). Season the veal shanks on all sides with salt and pepper. One at a time, roll the shanks around in the flour coat, and shake and pat the shank to remove any excuses flour. Discard the remaining flour.Browning the shanks: put the oil and 1 tablespoon of the butter in a wide Dutch oven or heavy braising pot (6 to 7 quart) and heat over medium-high heat. When the butter has melted and the oil is shimmering, lower the shanks into the pot, flat side down; if the shanks won’t fit without touching one another, do this in batches. Brown the shanks, turning once with tongs, until both flat sides are well caramelized, about 5 minutes per side. If the butter-oil mixture starts to burn, lower the heat just a bit. Transfer the shanks to a large platter or tray and set aside.The aromatics: pour off and discard the fat from the pot. Wipe out any burnt bits with a damp paper towel, being careful not to remove any delicious little caramelized bits. Ad the remaining 2 tablespoons butter to the pot and melt it over medium heat. When the butter has stopped foaming, add the onion, carrot, celery, and fennel. Season with salt and pepper, stir, and cook the vegetables until they begin to soften but do not brown, about 6 minutes. Stir in the garlic, orange zest, marjoram, and bay leaf, and stew for another minute or two.The braising liquid: add the wine, increase the heat to high, and bring to a boil. Boil, stirring occasionally, to reduce the wine by about half, 5 minutes. Add the stock and tomatoes, with their juice, and boil again to reduce the liquid to about 1 cup total, about 10 minutes.The braise: Place the shanks in the pot so that they are sitting with the exposed bone facing up, and pour over any juices that accumulated as they sat. Cover with parchment paper, pressing down so the parchment nearly touches the veal and the edges hang over the sides of the pot by about an inch. Cover tightly with the lid, and slide into the lower part of the oven to braise at a gentle simmer. Check the pot after the first 15 minutes, and if the liquid is simmering too aggressively, lower the oven heat by 10 or 15 degrees. Continue braising, turning the shanks and spooning some pan juices over the top after the first 40 minutes, until the meat is completely tender and pulling away from the bone, about 2 hours.The gremolata: While the shanks are braising, stir together the garlic, parsley, and lemon zest in a small bowl. Cover with plastic wrap and set aside in a cool place (or the refrigerator, if your kitchen is very warm.)\r\nThe finish: When the veal is fork-tender and falling away from the bone, remove the lid and sprinkle over half of the gremolata. Return the veal to the oven, uncovered, for another 15 minutes to caramelize it some.Using a slotted spatula or spoon, carefully lift the shanks from the braising liquid, doing your best to keep them intact. The shanks will be very tender and threatening to fall into pieces, and the marrow will be wobbly inside the bones, so this can be a bit tricky. But if they do break apart, don’t worry, the flavor won’t suffer at all. Arrange the shanks on a serving platter or other large plate, without stacking, and cover with foil to keep warm.Finishing the sauce: Set the braising pot on top of the stove and evaluate the sauce: if there is a visible layer of fat floating on the surface, use a large spoon to skim it off and discard it. Taste the sauce for concentration of flavor. If it tastes a bit weak or flat, bring it to a boil over high heat, and boil to reduce the volume and intensify the flavor for 5 to 10 minutes. Taste again for salt and pepper. If the sauce wants more zip, stir in a teaspoon or two of the remaining gremolata. Portioning the veal shanks: if the shanks are reasonably sized, serve one per person. If the shanks are gargantuan or you’re dealing with modest appetites, pull apart the larger shanks, separating them at their natural seams, and serve smaller amounts. Be sure to give the marrow bones to whomever prizes them most.Serving: Arrange the veal shanks on warm dinner plates accompanied by the risotto, if serving. Just before carrying the plates to the table, sprinkle on the remaining gremolata and then spoon over a generous amount of sauce – the contact with the hot liquid will aromatize the gremolata and perk up everyone’s appetite with the whiff of garlic and lemon.",
                  
                 MealImage: UIImage(named: "osso")!,
                            strIngredients: "Veal, Flour, Olive Oil, Butter, Onion, Carrot, Celery, Fennel, Garlic, Orange Zest, Marjoram, Bay Leaf, Dry White Wine, Chicken Stock, Tomatos, Parsley, Garlic, Lemon Zest")
          
        let pilchard =   Recipes(strMeal: "Pilchard puttanesca",
                  strCategory: "Non-Vegetarian",
                  strArea: "Italian",
                  strInstructions: "Cook the pasta following pack instructions. Heat the oil in a non-stick frying pan and cook the onion, garlic and chilli for 3-4 mins to soften. Stir in the tomato purée and cook for 1 min, then add the pilchards with their sauce. Cook, breaking up the fish with a wooden spoon, then add the olives and continue to cook for a few more mins. Drain the pasta and add to the pan with 2-3 tbsp of the cooking water. Toss everything together well, then divide between plates and serve, scattered with Parmesan.",
                  
                               MealImage: UIImage(named: "pilchard")!,
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
    
    
    
    
    
        
        
    
    




