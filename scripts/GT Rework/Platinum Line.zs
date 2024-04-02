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


lcr.recipeBuilder()
    .fluidInputs(<liquid:ammonium_chloride>*200,<liquid:platinum_concentrate>*2000)
    .outputs(<gregtech:meta_item_1:1902>*10,<gregtech:meta_item_1:2900>*2)
    .fluidOutputs(<liquid:palladium_enriched_ammonia>*200,<liquid:nitric_acid>*1000,<liquid:hydrogen>*1200)
    .EUt(30)
    .duration(1200)
    .buildAndRegister();
