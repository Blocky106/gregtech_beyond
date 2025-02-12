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
    .fluidInputs(<liquid:sulfur_hexafluoride>*1000,<liquid:dicyandiamide>*1000)
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

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*288], true);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:epoxid>*1000], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*288], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*1000], true);


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

Utils.removeRecipeByOutput(lcr, [], [<liquid:epoxid>*1000], true);

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:chloroform>*1000, <liquid:hydrofluoric_acid>*500)
	.fluidOutputs(<liquid:chlorodifluoromethane>*1000)
	.duration(2400)
	.EUt(120)
	.buildAndRegister();
	
chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2013>*2)
	.fluidInputs(<liquid:sulfuric_acid>*1000)
	.outputs(<gtadditions:ga_dust:32260>*4)
	.fluidOutputs(<liquid:hydrogen_sulfide>*1000, <liquid:oxygen>*1000)
	.duration(300)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:chlorodifluoromethane>*1000, <liquid:hydrogen>*2000)
	.notConsumable(<gtadditions:ga_dust:32234>*2)
	.fluidOutputs(<liquid:trifluoroethylene>*1000, <liquid:hydrochloric_acid>*2000)
	.duration(240)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2772>*2)
	.fluidInputs(<liquid:trifluoroethylene>*1000)
	.fluidOutputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.outputs(<gtadditions:ga_dust:32266>)
	.duration(1200)
	.EUt(350)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2065>)
	.fluidInputs(<liquid:fluorine>*6000)
	.fluidOutputs(<liquid:sulfur_hexafluoride>*1000)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

pyro.recipeBuilder()
	.fluidInputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.inputs(<gregtech:meta_item_1:14184>)
	.outputs(<contenttweaker:wet_steel_rod>)
	.fluidOutputs(<liquid:tetrafluoroethylene>*1000)
	.duration(400)
	.EUt(200)
	.buildAndRegister();

ebf.recipeBuilder()
	.outputs(<gregtech:meta_item_1:14184>)
	.inputs(<contenttweaker:wet_steel_rod>)
	.duration(20)
	.EUt(12)
	.property("temperature", 400)
	.buildAndRegister();

Utils.removeRecipeByOutput(lcr, [],[<liquid:hydrochloric_acid>*6000,<liquid:tetrafluoroethylene>*1000],true);

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:hydrogen>*1000, <liquid:nonene>*500)
	.fluidOutputs(<liquid:nonanol>*1000)
	.notConsumable(<gregtech:meta_item_1:2044>)
	.duration(400)
	.EUt(500)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2373>)
	.fluidInputs(<liquid:phenol>*1000, <liquid:ethylene_oxide>*144, <liquid:nonanol>*500)
	.fluidOutputs(<liquid:peg_alkylphenol>*1000)
	.duration(1200)
	.EUt(450)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2373>)
	.fluidInputs(<liquid:peg_alkylphenol>*500, <liquid:sulfuric_acid>*1000)
	.fluidOutputs(<liquid:triton_x100>*1000, <liquid:water>*500)
	.duration(600)
	.EUt(350)
	.buildAndRegister();

mixer.recipeBuilder()
	.fluidInputs(<liquid:ammonium_persulfate>*144, <liquid:triton_x100>*200)
	.fluidOutputs(<liquid:ptfe_preparation_mixture>*1000)
	.duration(1200)
	.EUt(120)
	.buildAndRegister();
