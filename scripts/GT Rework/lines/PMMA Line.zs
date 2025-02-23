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
import mods.gtadditions.recipe.Utils;

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_cyanide>*1000,<liquid:acetone>*1000)
    .fluidOutputs(<liquid:acetone_cyanohydrin>*1000)
    .duration(200)
    .EUt(5800)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:methacrylamide_sulfate>*1000,<liquid:methanol>*1000)
    .fluidOutputs(<liquid:methyl_methacrylate>*1000)
    .duration(200)
    .EUt(3800)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:methyl_methacrylate>*1000,<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:32265>*7)
    .fluidOutputs(<liquid:methyl_methacrylate_emulsion>*1000)
    .duration(200)
    .EUt(4800)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:wet_pmma_emulsion>*1000)
    .fluidOutputs(<liquid:dried_pmma_emulsion>*1000,<liquid:water>*1000)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:dried_pmma_emulsion>*1000)
    .fluidOutputs(<liquid:potassium_persulfate_solution>*1000,<liquid:pmma>*1000)
    .outputs(<gtadditions:ga_dust:116>)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();
