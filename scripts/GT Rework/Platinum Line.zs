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
    .fluidInputs(<liquid:ammonium_chloride>*100,<liquid:platinum_concentrate>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:1902>*5,<gregtech:meta_item_1:2900>)
    .fluidOutputs(<liquid:palladium_enriched_ammonia>*100,<liquid:nitric_acid>*1000,<liquid:hydrogen>*600)
    .EUt(30)
    .duration(1200)
    .buildAndRegister();
