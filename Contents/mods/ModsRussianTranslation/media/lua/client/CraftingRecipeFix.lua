
local recipesList = ScriptManager.instance:getAllRecipes()
local recipesFix = {
	-- '69 Mini Mk2
	["Pry Open Crate of Tea"] = "Cooking",
}

for i = 0, recipesList:size() - 1 do
	local recipe = recipesList:get(i)
	local recipeName = recipe:getOriginalname()
	
	if recipesFix[recipeName] then
		recipe:setCategory(recipesFix[recipeName])
	end
end
