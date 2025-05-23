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
	.inputs(<gregtech:meta_item_1:2065>)
	.fluidInputs(<liquid:fluorine>*6000)
	.fluidOutputs(<liquid:sulfur_hexafluoride>*1000)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide>)
	.fluidInputs(<liquid:acetic_acid>*144, <liquid:propylene>*600, <liquid:water>*144)
	.fluidOutputs(<liquid:glycidol>*500)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:benzene>*720, <liquid:methanol>*720)
	.fluidOutputs(<liquid:toluene>*720, <liquid:water>*720)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:acetone>*500, <liquid:hydrofluoric_acid>*3000)
	.fluidOutputs(<liquid:hexafluoroacetone>*500, <liquid:hydrochloric_acid>*3000)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2065>)
	.fluidInputs(<liquid:fluorine>*6000)
	.fluidOutputs(<liquid:sulfur_hexafluoride>*1000)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide>)
	.fluidInputs(<liquid:acetic_acid>*144, <liquid:propylene>*600, <liquid:water>*144)
	.fluidOutputs(<liquid:glycidol>*500)
	.duration(200)
	.EUt(480)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:benzene>*720, <liquid:methanol>*720)
	.fluidOutputs(<liquid:toluene>*720, <liquid:water>*720)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:acetone>*500, <liquid:hydrofluoric_acid>*3000)
	.fluidOutputs(<liquid:hexafluoroacetone>*500, <liquid:hydrochloric_acid>*3000)
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
	.fluidOutputs(<liquid:glycidol_ether>*800)
    .notConsumable(<ore:dustAluminiumChloride>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:glycidol>*800, <liquid:phenol>*1000, <liquid:glycidol_preparation_mixture>*1000)
	.fluidOutputs(<liquid:glycidol_ether>*800)
    .notConsumable(<ore:dustAluminiumChloride>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2017>)
	.fluidInputs(<liquid:nitric_acid>*144)
	.outputs(<gtadditions:ga_dust:32232>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:370>)
    .fluidInputs(<liquid:water>*500)
	.fluidOutputs(<liquid:cyandiamide>*720)
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

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2017>)
	.fluidInputs(<liquid:nitric_acid>*144)
	.outputs(<gtadditions:ga_dust:32232>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:370>)
    .fluidInputs(<liquid:water>*500)
	.fluidOutputs(<liquid:cyandiamide>*720)
    .outputs(<gtadditions:ga_dust:24>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*1000, <liquid:cyandiamide>*1000)
	.fluidOutputs(<liquid:dicyandiamide>*1000, <liquid:hydrogen>*1000)
	.outputs(<gtadditions:ga_dust:32233>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sulfur_hexafluoride>*144, <liquid:water>*1000, <liquid:dicyandiamide>*1000)
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

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:chloroform>*1000, <liquid:hydrofluoric_acid>*500)
	.fluidOutputs(<liquid:chlorodifluoromethane>*1000)
	.duration(2400)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2013>*2)
	.fluidInputs(<liquid:sulfuric_acid>*1000)
	.outputs(<gtadditions:ga_dust:32234>*5)
	.fluidOutputs(<liquid:hydrogen_sulfide>*1000, <liquid:oxygen>*1000)
	.duration(300)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:chlorodifluoromethane>*1000, <liquid:hydrogen>*2000)
	.notConsumable(<gtadditions:ga_dust:32234>*2)
	.fluidOutputs(<liquid:trifluoroethylene>*1000, <liquid:hydrochloric_acid>*2000)
	.duration(2400)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2772>*2)
	.fluidInputs(<liquid:trifluoroethylene>*1000)
	.fluidOutputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.outputs(<gtadditions:ga_dust:32235>)
	.duration(1200)
	.EUt(350)
	.buildAndRegister();

pyro.recipeBuilder()
	.fluidInputs(<liquid:tetrafluoroethylene_mixture>*1000)
	.inputs(<gregtech:meta_item_1:14184>)
	.outputs(<contenttweaker:wet_steel_rod>)
	.fluidOutputs(<liquid:tetrafluoroethylene>*1000)
	.duration(400)
	.EUt(200)
	.buildAndRegister();

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
	.fluidInputs(<liquid:ammonium_persulfate>*288, <liquid:triton_x100>*200)
	.fluidOutputs(<liquid:ptfe_preparation_mixture>*500)
	.duration(1200)
	.EUt(120)
	.buildAndRegister();

Utils.removeRecipeByOutput(lcr, [], [<liquid:tetraethylene>*1000], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:tetrafluoroethylene>*1000], false);

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:sulfuric_acid>*1000, <liquid:nitric_acid>*1000, <liquid:phenol>*500)
	.fluidOutputs(<liquid:4-nitrophenol>*500, <liquid:diluted_sulfuric_acid>*1500)
	.duration(400)
	.EUt(450)
	.buildAndRegister();

rotary_evaporator.recipeBuilder()
    .fluidInputs(<liquid:antimony_pentafluoride>*1000)
    .outputs(<gtadditions:ga_dust:32268>*4)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32269>*2)
	.fluidInputs(<liquid:4-nitrophenol>*1000)
	.notConsumable(<gtadditions:ga_dust:32268>*2)
    .fluidOutputs(<liquid:4-nitrofluorophenol>*500, <liquid:fluorinated_nitrophenol_residue>*500)
    .EUt(500)
    .duration(1200)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fluorinated_nitrophenol_residue>*500)
    .fluidOutputs(<liquid:dinitrofluorophenol>*500, <liquid:trinitrofluorophenol>*400, <liquid:tetranitrofluorophenol>*300)
    .outputs(<gregtech:meta_item_1:2062>*4)
    .duration(400)
    .EUt(500)
    .buildAndRegister();

distillery.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_nitrophenol_residue>*500)
	.fluidOutputs(<liquid:dinitrofluorophenol>*250)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.duration(400)
	.EUt(500)
	.buildAndRegister();

distillery.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_nitrophenol_residue>*500)
	.fluidOutputs(<liquid:trinitrofluorophenol>*200)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
	.duration(400)
	.EUt(500)
	.buildAndRegister();

distillery.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_nitrophenol_residue>*500)
	.fluidOutputs(<liquid:tetranitrofluorophenol>*150)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
	.duration(400)
	.EUt(500)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2009>*5,<gtadditions:ga_dust:114>*3)
	.fluidOutputs(<liquid:chlorine>*500)
	.outputs(<gtadditions:ga_dust:32270>*5)
	.duration(450)
	.EUt(350)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:tetranitrofluorophenol>*300, <liquid:hydrogen>*1000)
	.fluidOutputs(<liquid:trinitrofluorophenol>*1000, <liquid:hydrogen_fluoride>*300)
	.notConsumable(<gtadditions:ga_dust:32270>)
	.duration(450)
	.EUt(350)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:trinitrofluorophenol>*400, <liquid:hydrogen>*1000)
	.fluidOutputs(<liquid:dinitrofluorophenol>*1000, <liquid:hydrogen_fluoride>*200)
	.notConsumable(<gtadditions:ga_dust:32270>)
	.duration(450)
	.EUt(350)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:dinitrofluorophenol>*500, <liquid:hydrogen>*1000)
	.fluidOutputs(<liquid:4-nitrofluorophenol>*1000, <liquid:hydrogen_fluoride>*100)
	.notConsumable(<gtadditions:ga_dust:32270>)
	.duration(450)
	.EUt(350)
	.buildAndRegister();

cstr_s.recipeBuilder()
	.fluidInputs(<liquid:4-nitrofluorophenol>*500, <liquid:4-nitrophenol>*500)
	.notConsumable(<gtadditions:ga_dust:106>)
    .fluidOutputs(<liquid:4-4_dinitrofluorodiphenyl_ether>*800, <liquid:water>*200)
    .EUt(5000)
    .duration(240)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:4-4_dinitrofluorodiphenyl_ether>*400, <liquid:hydrogen>*400)
	.notConsumable(<gtadditions:ga_dust:32240>*2)
 	.fluidOutputs(<liquid:fluorinated_diaminodiphenyl_ether>*800)
    .EUt(5000)
    .duration(570)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:toluene>*1000, <liquid:hydrofluoric_acid>*500)
	.notConsumable(<gtadditions:ga_dust:32268>*3)
 	.fluidOutputs(<liquid:trifluorotoluene>*1000, <liquid:hydrogen>*200)
    .EUt(1250)
    .duration(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:sulfuric_acid>*500, <liquid:sodium_dichromate_solution>*500)
 	.fluidOutputs(<liquid:chromic_acid>*1000)
    .EUt(200)
    .duration(120)
    .buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32272>*5)
	.fluidInputs(<liquid:trifluorotoluene>*500, <liquid:fluorine>*1000, <liquid:chromic_acid>*1000)
	.notConsumable(<gtadditions:ga_dust:32268>*5)
	.notConsumable(<liquid:fluoroantimonic_acid>*2000)	
	.fluidOutputs(<liquid:fluorinated_isophthalic_acid>*2500, <liquid:hydrogen_fluoride>*200)
	.outputs(<gtadditions:ga_dust:359>*5)
	.duration(8500)
	.EUt(1250)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_diaminodiphenyl_ether>*1000, <liquid:fluorinated_isophthalic_acid>*1000, <liquid:phosphoric_acid>*1000)
	.fluidOutputs(<liquid:fluorinated_benzimidazole_mixture>*3000)
	.duration(8500)
	.EUt(1250)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_benzimidazole_mixture>*1500)
	.fluidOutputs(<liquid:fluorinated_benzimidazole>*800, <liquid:phosphoric_acid>*500, <liquid:water>*200)
	.duration(400)
	.EUt(120)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:fluorinated_benzimidazole>*200, <liquid:hydrogen>*300)
 	.fluidOutputs(<liquid:benzimidazole>*300, <liquid:hydrogen_fluoride>*200)
	.notConsumable(<gtadditions:ga_dust:32270>)
    .EUt(2650)
    .duration(40)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2460>*2, <gtadditions:ga_dust:28>*4)
 	.outputs(<gtadditions:ga_dust:32271>*4)
    .EUt(160)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*500, <liquid:y-butyrolactone>*500)
	.notConsumable(<gtadditions:ga_dust:32271>)
    .fluidOutputs(<liquid:2-pyrrolidone>*1000)
    .EUt(400)
    .duration(350)
    .buildAndRegister();

chemReactor.recipeBuilder()
	.fluidInputs(<liquid:methylamine>*1000, <liquid:2-pyrrolidone>*500)
 	.fluidOutputs(<liquid:n-methylpyrrolidone>*1000)
	.notConsumable(<liquid:potassium_hydroxide>*1000)
    .EUt(4000)
    .duration(400)
    .buildAndRegister();