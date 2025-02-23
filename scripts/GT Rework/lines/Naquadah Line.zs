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


cstr_s.recipeBuilder()
    .fluidInputs(<liquid:phosphoric_acid>*1000)
    .inputs(<contenttweaker:floated_naquadah_concentrate>*5)
    .fluidOutputs(<liquid:acidic_naquadah_concentrate>*1000)
    .duration(800)
    .EUt(8000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:naquadah_extraction_mixture>*2000,<liquid:acidic_naquadah_concentrate>*1000)
    .fluidOutputs(<liquid:naquadah_mother_liqour>*1000,<liquid:naquadah_extract>*1000)
    .duration(1200)
    .EUt(8000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:naquadah_mother_liqour>*1000)
    .fluidOutputs(<liquid:naquadah_extraction_mixture>*1000,<liquid:trinium_solution>*100,<liquid:arsenic_solution>*400)
    .outputs(<gregtech:meta_item_1:2827>*3)
    .duration(600)
    .EUt(4000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:naquadah_extract>*1000)
    .fluidOutputs(<liquid:naquadah_extraction_mixture>*1000,<liquid:naquadah_oxide_solution>*1000)
    .duration(600)
    .EUt(5000)
    .buildAndRegister();

