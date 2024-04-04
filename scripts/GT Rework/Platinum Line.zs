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


lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:ammonium_chloride>*200,<liquid:platinum_solution>*2000)
    .outputs(<gregtech:meta_item_1:1902>*10,<gregtech:meta_item_1:2896>*2)
    .fluidOutputs(<liquid:nitric_acid>*2000,<liquid:hydrogen>*1200)
    .EUt(30)
    .duration(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:benzene>*1000,<liquid:kerosene>*1000,<liquid:methyl_isobutyl_ketone>*1000)
    .fluidOutputs(<liquid:platinum_extraction_mixture>*3000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:benzene>*1000,<liquid:kerosene>*1000,<liquid:methyl_isobutyl_ketone>*1000)
    .fluidOutputs(<liquid:platinum_extraction_mixture>*3000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:platinum_extraction_mixture>*4000,<liquid:platinum_concentrate>*4000)
    .fluidOutputs(<liquid:platinum_extract>*3000,<liquid:palladium_extract>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:platinum_extract>*1000)
    .fluidOutputs(<liquid:platinum_solution>*1000,<liquid:platinum_extraction_mixture>*1000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:palladium_extract>*1000)
    .fluidOutputs(<liquid:palladium_mother_liqour>*1000,<liquid:platinum_extraction_mixture>*1000,<liquid:palladium_enriched_ammonia>*1000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();