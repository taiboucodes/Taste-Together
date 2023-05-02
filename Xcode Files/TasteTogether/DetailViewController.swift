//
//  DetailViewController.swift
//  TasteTogether
//
//  Created by Samyak Jain on 5/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var Recipes: Recipes?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let Recipes = Recipes {
            print(Recipes.strMeal)
            
            RecipeName.text = Recipes.strMeal
            Category.text = Recipes.strCategory
            Area.text = Recipes.strArea
            ImageView.image = Recipes.MealImage
          Ingredients_outlet.text  = Recipes.strIngredients
            Instructions.text  = Recipes.strInstructions
            
        }
        else {
            print("Error: luffy_struct is nil")
        }
            
           
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    

    @IBOutlet weak var RecipeName: UILabel!
    
    @IBOutlet weak var Category: UILabel!
    
    @IBOutlet weak var Area: UILabel!
    
    
    
    
    @IBOutlet weak var Ingredients_outlet: UILabel!
    
    @IBOutlet weak var Instructions: UILabel!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
