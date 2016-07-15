package recipe;

import recipe.db.RecipeDAO;

public class RecipeController {
	private RecipeDAO recipeDAO;

	public void setRecipeDAO(RecipeDAO recipeDAO) {
		this.recipeDAO = recipeDAO;
	}
	
}
