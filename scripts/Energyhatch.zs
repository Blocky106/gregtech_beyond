import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;

Utils.removeRecipeByOutput(c, [<gregtech:machine:704>], [], false);

recipes.addShaped(<gregtech:machine:704>, 
[	[<gregtech:cable:5035>, <gregtech:meta_item_1:12035>, <gregtech:cable:5035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:5035>, <gregtech:meta_item_1:12035>, <gregtech:cable:5035>]]);

assembler.recipeBuilder()
    .inputs()
    .outputs()
    .duration(40)
    .EUt(30)
    .buildAndRegister();

