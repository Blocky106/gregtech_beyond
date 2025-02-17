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


cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:sulfuric_acid>*2000)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*3000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:acetic_acid>*1000)
    .fluidOutputs(<liquid:diluted_acetic_acid>*2000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:dilute_nitric_acid>*2000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:hydrochloric_acid>*1000)
    .fluidOutputs(<liquid:diluted_hydrochloric_acid>*2000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:fluorine>*1000)
    .fluidOutputs(<liquid:hydrogen_fluoride>*2000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:antimony_pentafluoride>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:antimony_pentafluoride>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*2000)
    .inputs(<gtadditions:ga_dust>*4)
    .fluidOutputs(<liquid:antimony_pentafluoride>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000,<liquid:acetic_acid>*1000)
    .fluidOutputs(<liquid:methyl_acetate>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:nitrogen_dioxide>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:nitrogen_dioxide>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*1000,<liquid:oxygen>*2000)
    .fluidOutputs(<liquid:nitrogen_dioxide>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:nitric_acid>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:nitric_acid>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:nitric_acid>*2000,<liquid:nitric_oxide>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:nitric_acid>*2000,<liquid:nitric_oxide>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:nitrogen_dioxide>*2000)
    .fluidOutputs(<liquid:nitric_acid>*1000,<liquid:nitric_oxide>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:nitrogen_dioxide>*2000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:nitric_acid>*2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:dimethylhidrazine>*1000,<liquid:diluted_hydrochloric_acid>*2000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:dimethylhidrazine>*1000,<liquid:diluted_hydrochloric_acid>*2000],true);

cstr_s.recipeBuilder()
    .fluidOutputs(<liquid:dimethylhidrazine>*1000,<liquid:diluted_hydrochloric_acid>*1000)
    .fluidInputs(<liquid:methanol>*2000,<liquid:ammonia>*2000,<liquid:hypochlorous_acid>*1000)
    .duration(200)
    .EUt(500)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:ehtanol_water_azeotrope>*1000)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*1000,<liquid:ethylene>*1000)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*1000,<liquid:ethylene>*1000)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcr,[],[<liquid:allyl_chloride>*1000,<liquid:hydrochloric_acid>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*1000,<liquid:propene>*1000)
    .fluidOutputs(<liquid:allyl_chloride>*1000,<liquid:hydrochloric_acid>*1000)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:bromine>*2000,<liquid:butane>*1000)
    .notConsumable(<gtadditions:ga_meta_item:32463>)
    .fluidOutputs(<liquid:bromobutane>*2000,<liquid:hydrobromic_acid>*1000)
    .duration(80)
    .EUt(120)
    .buildAndRegister();


Utils.removeRecipeByOutput(chemReactor,[],[<liquid:bromobutane>*2000,<liquid:hydrobromic_acid>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:bromobutane>*2000,<liquid:hydrobromic_acid>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:acetic_anhydride>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:acetic_anhydride>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:ethenone>*1000,<liquid:acetic_acid>*1000)
    .fluidOutputs(<liquid:acetic_anhydride>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*1000,<liquid:carbon_monoxide>*1000)
    .fluidOutputs(<liquid:dimethylformamide>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:propene>*8000,<liquid:benzene>*8000)
    .notConsumable(<liquid:phosphoric_acid>)
    .fluidOutputs(<liquid:cumene>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:cumene>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:cumene>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:ethylanthraquinone>*1000,<liquid:hydrogen_peroxide>*2000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:ethylanthraquinone>*1000,<liquid:hydrogen_peroxide>*2000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:ammonium_sulfate>*1000,<liquid:acetic_acid>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:ammonium_sulfate>*1000,<liquid:acetic_acid>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:ammonium_sulfate>*1000,<liquid:acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:912>*3)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*3000)
    .inputs(<gregtech:meta_item_1:2050>)
    .fluidOutputs(<liquid:phosphorus_trichloride>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:ethylene_oxide>*1000)
    .fluidOutputs(<liquid:wet_etylene_oxide>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(mixer, [],[<liquid:wet_etylene_oxide>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:benzene>*1000)
    .fluidOutputs(<liquid:ethylbenzene>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:ethylbenzene>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:ethylbenzene>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:1,4-butanediol>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:1,4-butanediol>*1000],true);

cstr_s.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2049>)
    .fluidInputs(<liquid:1,4-butynediol>*1000,<liquid:hydrogen>*4000)
    .fluidOutputs(<liquid:1,4-butanediol>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*1500,<liquid:nitric_acid>*500)
    .fluidOutputs(<liquid:aqua_regia>*2000)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2102>*7],[]).remove();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:formaldehyde>*50,<liquid:phenol>*50)
    .fluidOutputs(<liquid:novolacs_photoresist>*100)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*2000,<liquid:carbon_monoxide>*1000)
    .notConsumable(<gregtech:meta_item_1:2012>)
    .fluidOutputs(<liquid:phosgene>*1000)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:phosgene>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:phosgene>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:bastnasiteconcentrate>*1000,<liquid:sulfuric_acid>*250)
    .fluidOutputs(<liquid:acidicbastnasiteconcentrate>*1000)
    .duration(90)
    .EUt(2490)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:acidicbastnasiteconcentrate>*1000,<liquid:fluorine>*1000)
    .fluidOutputs(<liquid:ceriumcontainingbastnasiteconcentrate>*1000,<liquid:hydrofluoric_acid>*1000)
    .duration(800)
    .EUt(3400)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:bastnasiterarerearthconcentrate>*1000,<liquid:water>*4000)
    .fluidOutputs(<liquid:wetbastnasiterareearthconcentrate>*5000)
    .duration(820)
    .EUt(1490)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32084>)
    .fluidInputs(<liquid:nitric_acid>*750)
    .fluidOutputs(<liquid:nitrogenatedbastnasiterarerearthoxides>*1000)
    .duration(820)
    .EUt(1490)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:nitrogenatedbastnasiterarerearthoxides>*1000,<liquid:hydrochloric_acid>*500,<liquid:acetic_acid>*500)
    .fluidOutputs(<liquid:bastnasiterarerearthoxidesemulsion>*2000)
    .duration(820)
    .EUt(1490)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:chlorine>*1000)
    .fluidOutputs(<liquid:hydrogen_chloride>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .inputs(<gtadditions:ga_dust:164>*2)
    .outputs(<gtadditions:ga_dust:32240>)
    .fluidOutputs(<liquid:fuming_hydrogen>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:oleic_acid_mixture>*1000)
    .notConsumable(<gtadditions:ga_dust:270>)
    .fluidOutputs(<liquid:dihydroxystearic_acid>*1000)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:selenite_tellurite_mixture>*1000)
    .EUt(800)
    .outputs(<gtadditions:ga_dust:174>*3)
    .fluidOutputs(<liquid:water>*1000,<liquid:sulfur_trioxide>*1000,<liquid:carbon_dioxide>*1000,<liquid:selenite_solution>*1000)
    .duration(400)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:nitrous_acid>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .outputs(<gtadditions:ga_dust:76>*3)
    .duration(440)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:boron_fluoride>*1000,<liquid:nitric_acid>*1000,<liquid:hydrofluoric_acid>*1000)
    .outputs(<gtadditions:ga_dust:920>*4)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:chloroform>*1000)
    .inputs(<gregtech:meta_item_1:2025>,<gregtech:meta_item_1:2038>)
    .fluidOutputs(<liquid:trimethylgallium_mixture>*1000)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:diethylether>*1000)
    .notConsumable(<contenttweaker:fume_hood>)
    .inputs(<gregtech:meta_item_1:2079>)
    .fluidOutputs(<liquid:diethylzinc>*1000)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*6000,<liquid:nitrotoluene>*1000)
    .notConsumable(<liquid:sulfuric_acid>)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .fluidOutputs(<liquid:toluidine>*1000,<liquid:water>*2000)
    .EUt(500)
    .duration(400)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:air>*1000,<liquid:1_butene>*1000)
    .fluidOutputs(<liquid:methyl_isobutyl_carbonyl>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:divinylbenzene>*1000,<liquid:chloromethylstyrene>*1000)
    .fluidOutputs(<liquid:poly_styrene_co_chloromethylstyrene_copolymeris>*1000)
    .EUt(100)
    .duration(100)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*2000)
    .inputs(<gregtech:meta_item_1:2835>)
    .outputs(<gtadditions:ga_dust:172>*2)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gtadditions:ga_dust:32261>)
    .notConsumable(<gregtech:meta_item_1:2524>)
    .fluidOutputs(<liquid:borane_mixture>*1000)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:ethylene>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:vinyl_acetate>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:isopropyl_alcohol>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:isopropyl_alcohol>*1000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:propene>*1000)
    .notConsumable(<gtadditions:ga_dust:152>)
    .notConsumable(<gtadditions:ga_dust:153>)
    .fluidOutputs(<liquid:isopropyl_alcohol>*1600,<liquid:n_propyl_alcohol>*400)
    .duration(530)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hypochlorous_acid>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:chloramine>*1000,<liquid:water>*1000)
    .duration(530)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:boric_acid>*1000,<liquid:ethanol>*3000)
    .inputs(<gtadditions:ga_dust:147>*8)
    .notConsumable(<liquid:sulfuric_acid>)
    .fluidOutputs(<liquid:water>*3000)
    .outputs(<gtadditions:ga_dust:929>*6,<gtadditions:ga_dust:73>*27)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:acetaldehyde>*1000,<liquid:oxygen>*1000)
    .notConsumable(<liquid:selenous_acid>)
    .fluidOutputs(<liquid:water>*1000,<liquid:glyoxal>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:ethylbenzene>*1000)
    .inputs(<gregtech:meta_item_1:2926>*15)
    .fluidOutputs(<liquid:ethylanthraquinone>*1000,<liquid:water>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:ethylanthraquinone>*1000,<liquid:hydrogen>*1000)
    .fluidOutputs(<liquid:ethylanthrahydroquinone>*1000)
    .duration(500)
    .EUt(110)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidOutputs(<liquid:ethylanthraquinone>*1000,<liquid:hydrogen_peroxide>*2000)
    .notConsumable(<liquid:anthracene>)
    .fluidInputs(<liquid:ethylanthrahydroquinone>*1000,<liquid:oxygen>*2000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hypochlorous_acid>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gtadditions:ga_dust:195>*3)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*6000,<liquid:nitric_acid>*1000,<liquid:phenol>*1000)
    .notConsumable(<gtadditions:ga_dust:205>)
    .fluidOutputs(<liquid:water>*3000,<liquid:aminophenol>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*6000)
    .inputs(<gregtech:meta_item_1:2906>*5)
    .fluidOutputs(<liquid:water>*3000)
    .outputs(<gtadditions:ga_dust:206>*26)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*9000)
    .inputs(<gtadditions:ga_dust:166>*24)
    .notConsumable(<gtadditions:ga_dust:92>)
    .fluidOutputs(<liquid:oxalic_acid>*3000,<liquid:water>*3000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

