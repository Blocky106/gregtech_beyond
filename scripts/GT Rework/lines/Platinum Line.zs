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


centrifuge.recipeBuilder()
    .fluidInputs(<liquid:ammonium_chloride>*200,<liquid:platinum_solution>*2000)
    .outputs(<gregtech:meta_item_1:1902>*10,<gregtech:meta_item_1:2896>*2)
    .fluidOutputs(<liquid:nitric_acid>*2000,<liquid:hydrogen>*1200)
    .EUt(30)
    .duration(1200)
    .buildAndRegister();

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
    .fluidOutputs(<liquid:palladium_mother_liqour>*1200,<liquid:platinum_extraction_mixture>*800,<liquid:palladium_enriched_ammonia>*1000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()  
    .fluidInputs(<liquid:palladium_mother_liqour>*1200)
    .fluidOutputs(<liquid:platinum_extraction_mixture>*200,<liquid:water>*800,<liquid:ammonium_chloride>*200)
    .outputs(<gtadditions:ga_dust:130>*2)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:rhodium_filter_cake_solution>*1000)
    .outputs(<gregtech:meta_item_1:2869>)
    .fluidOutputs(<liquid:ammonia>*2000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(dehydrator,[<gregtech:meta_item_1:2869>],[<liquid:ammonia>*2000],true);

fluidExtractor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2888>)
    .fluidOutputs(<liquid:potassium_disulfate>*1000)
    .duration(800)
    .EUt(280)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:platinum_extraction_mixture>*4000,<liquid:platinum_concentrate>*4000)
    .fluidOutputs(<liquid:platinum_extract>*3000,<liquid:palladium_extract>*1000)
    .duration(300)
    .EUt(170)
    .buildAndRegister();

Utils.removeRecipeByOutput(ebf,[<gregtech:meta_item_1:2887>*4,<gtadditions:ga_dust:115>*7],[<liquid:rhodium_sulfate>*1000],true);

roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2898>*4,<gtadditions:ga_dust:115>*7)
    .fluidInputs(<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:platinum_residue_solution>*1000)
    .duration(300)
    .EUt(170)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:platinum_residue_solution>*1000)
    .fluidOutputs(<liquid:rhodium_sulfate>*1000,<liquid:diluted_leach_residue>*1000)
    .outputs(<gtadditions:ga_dust:115>*7)
    .duration(300)
    .EUt(170)
    .buildAndRegister();

lcr.findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 9})], [<liquid:ammonium_chloride>*800,<liquid:platinum_concentrate>*8000]).remove();

cstr_s.recipeBuilder()
    .fluidOutputs(<liquid:platinum_concentrate>*2000)
    .inputs(<gregtech:meta_item_1:2900>*3)
    .outputs(<gregtech:meta_item_1:2898>)
    .fluidInputs(<liquid:aqua_regia>*2000)
    .EUt(200)
    .duration(200)
    .buildAndRegister();


Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_1:898>*5],[<liquid:platinum_concentrate>*1000],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_1:898>*5],[<liquid:platinum_concentrate>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_1:2898>*5],[<liquid:platinum_concentrate>*9000],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_1:2898>*5],[<liquid:platinum_concentrate>*9000],true);

Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_1:2887>*4],[<liquid:rhodium_sulfate_solution>*27000],true);
Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_1:887>*4],[<liquid:rhodium_sulfate_solution>*3000],true);

Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_1:2887>*4],[<liquid:rhodium_sulfate_solution>*27000],true);
Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_1:887>*4],[<liquid:rhodium_sulfate_solution>*3000],true);

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_1:2047>],[<liquid:chlorine>*8000,<liquid:water>*5000],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_1:2047>],[<liquid:chlorine>*8000,<liquid:water>*5000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:carbon_monoxide>*1000,<liquid:methyl_isobutyl_ketone>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:carbon_monoxide>*1000,<liquid:methyl_isobutyl_ketone>*1000],true);

chemReactor.recipeBuilder()
    .fluidOutputs(<liquid:carbon_monoxide>*1000,<liquid:methyl_isobutyl_ketone>*1000)
    .notConsumable(<gregtech:meta_item_1:2012>)
    .fluidInputs(<liquid:mesityl_oxide>*1000,<liquid:water>*1000)
    .EUt(400)
    .duration(200)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidOutputs(<liquid:carbon_monoxide>*1000,<liquid:methyl_isobutyl_ketone>*1000)
    .notConsumable(<gregtech:meta_item_1:2012>)
    .fluidInputs(<liquid:mesityl_oxide>*1000,<liquid:water>*1000)
    .EUt(400)
    .duration(200)
    .buildAndRegister();