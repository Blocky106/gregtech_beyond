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


Utils.removeRecipeByOutput(ebf,[<gregtech:meta_item_1:10519>],[],false);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .outputs(<gregtech:meta_item_1:11519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .fluidInputs(<liquid:radon>*1000)
    .duration(1400)
    .EUt(120)
    .property("temperature", 4300)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .outputs(<gregtech:meta_item_1:11519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .fluidInputs(<liquid:xenon>*500)
    .duration(1250)
    .EUt(120)
    .property("temperature", 4300)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .outputs(<gregtech:meta_item_1:11519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .fluidInputs(<liquid:nitrogen>*1200)
    .duration(1600)
    .EUt(120)
    .property("temperature", 4300)
    .buildAndRegister();

Utils.removeRecipeByOutput(vacfreezer,[<gregtech:meta_item_1:10519>],[],false);

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11519>)
    .outputs(<gregtech:meta_item_1:10519>)
    .duration(450)
    .EUt(120)
    .buildAndRegister();