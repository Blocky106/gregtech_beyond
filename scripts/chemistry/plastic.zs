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











distillery.recipeBuilder()
    .fluidInputs(<liquid:xenoxene>*1000)
    .inputs(<gregtech:meta_item_1:2310>*12)
    .fluidOutputs(<liquid:rawradox>*500)
    .duration(8000)
    .EUt(260000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:rawradox>*5000)
    .fluidOutputs(<liquid:oil_heavy>*200,<liquid:distilled_water>*500,<liquid:waterplasma>*50,<liquid:biomass>*200,<liquid:oil_light>*400,<liquid:xenoxene>*100,<liquid:lightradox>*1000,<liquid:heavyradox>*500)
    .outputs(<gregtech:meta_item_1:2331>)
    .duration(400)
    .EUt(52000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:crackedheavyradox>*1000)
    .outputs(<gregtech:meta_item_1:2109>)
    .fluidOutputs(<liquid:rawradox>*750,<liquid:purifiedradox>*250)
    .duration(500)
    .EUt(34000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:crackedlightradox>*1000)
    .outputs(<gregtech:meta_item_1:2189>)
    .fluidOutputs(<liquid:rawradox>*900,<liquid:purifiedradox>*100)
    .duration(500)
    .EUt(34000)
    .buildAndRegister();

fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:purifiedradox>*125,<liquid:plasma.neutronium>*125)
    .fluidOutputs(<liquid:radoxpolymer>*125)
    .property("eu_to_start", 640000000)
    .duration(500)
    .EUt(500000)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2848>*4,<gtadditions:ga_dust:28>*3)
    .outputs(<gtadditions:ga_dust:32001>*7)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:triethylaluminium>*1000,<liquid:titanium_tetrachloride>*1000)
    .outputs(<gtadditions:ga_dust:32002>)
    .duration(900)
    .EUt(100)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:triethylaluminium>*1000,<liquid:titanium_tetrachloride>*1000)
    .outputs(<gtadditions:ga_dust:32002>)
    .duration(900)
    .EUt(100)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:plastic>*144], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:plastic>*216], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:plastic>*3240], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:plastic>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:plastic>*144], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:plastic>*216], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:plastic>*3240], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:plastic>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:polybenzimidazole>*1008], true);

lcr.recipeBuilder()
    .fluidInputs(<liquid:diphenylisophtalate>*1000,<liquid:diaminobenzidine>*1000)  
    .fluidOutputs(<liquid:water>*2000,<liquid:phenol>*2000,<liquid:polybenzimidazoleprepolymerfoam>*1000) 
    .duration(200)
    .EUt(300)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:impurepolybenzimidazolesolution>*2000)
    .fluidOutputs(<liquid:polybenzimidazolesolution>*1000,<liquid:polybenzimidazolewaste>*1000)
    .duration(120)
    .EUt(290)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polybenzimidazolesolution>*1000)
    .fluidOutputs(<liquid:water>*100)
    .outputs(<gregtech:meta_item_1:2840>*7)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polybenzimidazolewaste>*1000)
    .fluidOutputs(<liquid:water>*4000,<liquid:dimethylacetamide>*1000,<liquid:phenol>*1000)
    .outputs(<gregtech:meta_item_1:2155>*4)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polystyrene>*144], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polystyrene>*216], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polystyrene>*3240], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polystyrene>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:polystyrene>*144], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polystyrene>*216], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polystyrene>*3240], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polystyrene>*4320], true);

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polytetrafluoroethylene>*144], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polytetrafluoroethylene>*216], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polytetrafluoroethylene>*3240], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polytetrafluoroethylene>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:polytetrafluoroethylene>*144], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polytetrafluoroethylene>*216], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polytetrafluoroethylene>*3240], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polytetrafluoroethylene>*4320], true);

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_acetate>*144], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_acetate>*216], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_acetate>*3240], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_acetate>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_acetate>*144], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_acetate>*216], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_acetate>*3240], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_acetate>*4320], true);

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_chloride>*144], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_chloride>*216], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_chloride>*3240], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:polyvinyl_chloride>*4320], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_chloride>*144], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_chloride>*216], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_chloride>*3240], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:polyvinyl_chloride>*4320], true);


Utils.removeRecipeByOutput(chemReactor, [], [<liquid:styrene_butadiene_rubber>*1296], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:rubber>*1296], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:silicon_rubber>*1296], true);

Utils.removeRecipeByOutput(lcr, [], [<liquid:styrene_butadiene_rubber>*1296], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:rubber>*1296], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:silicon_rubber>*1296], true);



chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32169>*2)
    .fluidInputs(<liquid:oxydianiline>*3000)
    .fluidOutputs(<liquid:impure_kapton_k_solution>*5000)
    .duration(250)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32169>*2)
    .fluidInputs(<liquid:oxydianiline>*3000)
    .fluidOutputs(<liquid:impure_kapton_k_solution>*5000)
    .duration(250)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:toluene>*1000)
    .inputs(<gtadditions:ga_dust:32094>*4,<gregtech:meta_item_1:2926>*4)
    .fluidOutputs(<liquid:pmda_solution>*4000)
    .duration(2000)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:toluene>*1000)
    .inputs(<gtadditions:ga_dust:32094>*4,<gregtech:meta_item_1:2926>*4)
    .fluidOutputs(<liquid:pmda_solution>*4000)
    .duration(2000)
    .EUt(700)
    .buildAndRegister();
