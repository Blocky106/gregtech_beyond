import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;


chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethanol>*100,<liquid:trimetylamine>*500,<liquid:bromine>*40)
    .fluidOutputs(<liquid:cetane_trimethyl_ammonium_bromide>*1000)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ethanol>*100,<liquid:trimetylamine>*500,<liquid:bromine>*40)
    .fluidOutputs(<liquid:cetane_trimethyl_ammonium_bromide>*1000)
    .duration(400)
    .EUt(700)
    .buildAndRegister();