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
import mods.gtadditions.recipe.Utils;

chemReactor.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide>)
	.fluidInputs(<liquid:acetic_acid>*200, <liquid:propylene>*1000, <liquid:water>*400)
	.fluidOutputs(<liquid:glycidol>*1000)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:benzene>*1000, <liquid:methanol>*1000)
	.fluidOutputs(<liquid:toluene>*1000, <liquid:water>*1000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:acetone>*1000, <liquid:hydrofluoric_acid>*6000)
	.fluidOutputs(<liquid:hexafluoroacetone>*1000, <liquid:hydrochloric_acid>*6000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:hexafluoroacetone>*100, <liquid:toluene>*600)
    .fluidOutputs(<liquid:glycidol_preparation_mixture>*500)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:glycidol>*800, <liquid:phenol>*1000, <liquid:glycidol_preparation_mixture>*1000)
	.fluidOutputs(<liquid:glycidol_ether>*1000)
    .notConsumable(<ore:dustAluminiumChloride>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2017>)
	.fluidInputs(<liquid:nitric_acid>*500)
	.outputs(<gtadditions:ga_dust:32232>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:370>)
    .fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:cyandiamide>*1000)
    .outputs(<gtadditions:ga_dust:24>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*1000, <liquid:cyandiamide>*1000)
	.fluidOutputs(<liquid:dicyandiamide>*1000, <liquid:hydrogen>*1000)
	.outputs(<gtadditions:ga_dust:32233>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sulfur_hexafluoride>*1000, <liquid:water>*1000, <liquid:dicyandiamide>*1000)
    .fluidOutputs(<liquid:resin_enhancer>*3000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:unrefined_epoxy_resin>*1000, <liquid:acetone>*1000)
    .fluidOutputs(<liquid:epoxid>*1000)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*288], false);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*1000], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*288], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*1000], false);


lcr.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide>)
	.fluidInputs(<liquid:acetic_acid>*200, <liquid:propylene>*1000, <liquid:water>*400)
	.fluidOutputs(<liquid:glycidol>*1000)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:benzene>*1000, <liquid:methanol>*1000)
	.fluidOutputs(<liquid:toluene>*1000, <liquid:water>*1000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:acetone>*1000, <liquid:hydrofluoric_acid>*6000)
	.fluidOutputs(<liquid:hexafluoroacetone>*1000, <liquid:hydrochloric_acid>*6000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:glycidol>*800, <liquid:phenol>*1000, <liquid:glycidol_preparation_mixture>*1000)
	.fluidOutputs(<liquid:glycidol_ether>*1000)
    .notConsumable(<ore:dustAluminiumChloride>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2017>)
	.fluidInputs(<liquid:nitric_acid>*500)
	.outputs(<gtadditions:ga_dust:32232>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:370>)
    .fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:cyandiamide>*1000)
    .outputs(<gtadditions:ga_dust:24>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*1000, <liquid:cyandiamide>*1000)
	.outputs(<gtadditions:ga_dust:32233>)
	.fluidOutputs(<liquid:dicyandiamide>*1000, <liquid:hydrogen>*1000)
	.duration(120)
	.EUt(40)
	.buildAndRegister();