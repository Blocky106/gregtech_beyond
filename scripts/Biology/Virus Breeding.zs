import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;


chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32170>,<contenttweaker:purepetridish>)
    .outputs(<contenttweaker:cupriavidusnecator>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32170>,<contenttweaker:purepetridish>)
    .outputs(<contenttweaker:cupriavidusnecator>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:cupriavidusnecator>)    
    .fluidInputs(<liquid:cuproquin>*1000)
    .outputs(<gtadditions:ga_meta_item:32541>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:cupriavidusnecator>)    
    .fluidInputs(<liquid:cuproquin>*1000)
    .outputs(<gtadditions:ga_meta_item:32541>)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

bio.recipeBuilder()
    .notConsumable(<gtadditions:ga_meta_item:32541>) 
    .inputs(<gtadditions:ga_dust:166>)
    .fluidInputs(<liquid:y-butyrolactone>*20,<liquid:palm_oil>*20)   
    .fluidOutputs(<liquid:polyhydroxyalkanoate>*100)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32171>)
    .fluidInputs(<liquid:1,4-butanediol>*1000)
    .fluidOutputs(<liquid:y-butyrolactone>*1000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:polyhydroxyalkanoate>*144)
    .outputs(<nuclearcraft:part:6>)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .duration(289)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(bio, [<gtadditions:ga_meta_item:32541>], [], false);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:phenylethyl_alcohol_blood_agar>*100)
    .inputs(<contenttweaker:purepetridish>)
    .outputs(<contenttweaker:pad_petri>)
    .duration(800)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:phenylethyl_alcohol_blood_agar>*100)
    .inputs(<contenttweaker:purepetridish>)
    .outputs(<contenttweaker:pad_petri>)
    .duration(800)
    .EUt(120)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32172>)
    .outputs(<gtadditions:ga_dust:32175>)
    .duration(1200)
    .EUt(280)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000,<liquid:b_phenylethyl_alcohol>*250)
    .inputs(<gtadditions:ga_dust:39>)
    .fluidOutputs(<liquid:phenylethyl_alcohol_agar_solution>*1000)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000,<liquid:b_phenylethyl_alcohol>*250)
    .inputs(<gtadditions:ga_dust:39>)
    .fluidOutputs(<liquid:phenylethyl_alcohol_agar_solution>*1000)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:phenylethyl_alcohol_agar_solution>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .fluidOutputs(<liquid:dissolved_phenylethyl_alcohol_agar>*1000)
    .duration(200)
    .EUt(12000)
    .buildAndRegister();

autoclave.recipeBuilder()
    .fluidInputs(<liquid:dissolved_phenylethyl_alcohol_agar>*200)
    .inputs(<gtadditions:ga_dust:32178>)
    .outputs(<gtadditions:ga_dust:32179>)
    .EUt(200)
    .duration(800)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32179>)
    .fluidOutputs(<liquid:phenylethyl_alcohol_blood_agar>*1000)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

bio.recipeBuilder()
    .inputs(<contenttweaker:sterilized_syringe>)
    .inputs(<minecraft:mutton>)
    .outputs(<contenttweaker:sheep_blood_syringe>)
    .duration(700)
    .EUt(900)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:syringe>)
    .fluidInputs(<liquid:hundretbutanol>*20,<liquid:hundretmethanol>*20)
    .outputs(<contenttweaker:sterilized_syringe>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:syringe>)
    .fluidInputs(<liquid:hundretbutanol>*1000,<liquid:hundretmethanol>*1000)
    .outputs(<contenttweaker:sterilized_syringe>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:sheep_blood_syringe>)
    .fluidOutputs(<liquid:sheep_blood>*1000)
    .outputs(<contenttweaker:syringe>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood>*1000)
    .fluidOutputs(<liquid:sheep_blood_plasma>*200,<liquid:sheep_blood_cells>*800)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood>*1000)
    .fluidOutputs(<liquid:sheep_blood_plasma>*200,<liquid:sheep_blood_cells>*800)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood_plasma>*1000)
    .notConsumable(<liquid:edetic_acid>)
    .fluidOutputs(<liquid:defibrinated_sheep_blood>*1000)
    .duration(700)
    .EUt(820)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood_plasma>*1000)
    .notConsumable(<liquid:edetic_acid>)
    .fluidOutputs(<liquid:defibrinated_sheep_blood>*1000)
    .duration(700)
    .EUt(820)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<liquid:ethylene_oxide>)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .fluidInputs(<liquid:defibrinated_sheep_blood>*1000)
    .outputs(<gtadditions:ga_dust:32178>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<liquid:ethylene_oxide>)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .fluidInputs(<liquid:defibrinated_sheep_blood>*1000)
    .outputs(<gtadditions:ga_dust:32178>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:phosphorus_pentoxide>*1000,<liquid:chlorine>*1000)
    .fluidOutputs(<liquid:phosphoric_anyhidride>*2000)
    .duration(80)
    .EUt(700)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:phosphoric_anyhidride>*1000,<liquid:chlorine>*1000)
    .fluidOutputs(<liquid:orthophosphoric_acid_solution>*2000)
    .duration(80)
    .EUt(700)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:phosphorus_pentoxide>*1000,<liquid:chlorine>*1000)
    .fluidOutputs(<liquid:phosphoric_anyhidride>*2000)
    .duration(80)
    .EUt(700)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:phosphoric_anyhidride>*1000,<liquid:chlorine>*1000)
    .fluidOutputs(<liquid:orthophosphoric_acid_solution>*2000)
    .duration(80)
    .EUt(700)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:orthophosphoric_acid_solution>*2000)
    .fluidOutputs(<liquid:orthophosphoric_acid>*1000,<liquid:hydrochloric_acid>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32056>)
    .fluidInputs(<liquid:orthophosphoric_acid>*1000)
    .fluidOutputs(<liquid:methylene_diphosphonic_acid>*1000)
    .duration(200)
    .EUt(7299)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32056>)
    .fluidInputs(<liquid:orthophosphoric_acid>*1000)
    .fluidOutputs(<liquid:methylene_diphosphonic_acid>*1000)
    .duration(200)
    .EUt(7299)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethylenediamine>*1000,<liquid:sodium_hydroxide_solution>*1000,<liquid:methylene_diphosphonic_acid>*1000)
    .fluidOutputs(<liquid:edetic_acid>*1000)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ethylenediamine>*1000,<liquid:sodium_hydroxide_solution>*1000,<liquid:methylene_diphosphonic_acid>*1000)
    .fluidOutputs(<liquid:edetic_acid>*1000)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:benzene>*1000)
    .notConsumable(<gtadditions:ga_dust:79>)
    .fluidOutputs(<liquid:b_phenylethyl_alcohol>*1000)
    .duration(299)
    .EUt(112)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:benzene>*1000)
    .notConsumable(<gtadditions:ga_dust:79>)
    .fluidOutputs(<liquid:b_phenylethyl_alcohol>*1000)
    .duration(299)
    .EUt(112)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32454>,<gregtech:meta_item_1:14184>)
    .outputs(<contenttweaker:syringe>)
    .duration(299)
    .EUt(80)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood_cells>*1000,<liquid:distilled_water>*1000)
    .notConsumable(<gtadditions:ga_meta_item:32396>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidOutputs(<liquid:bacterial_growth_medium>*1000)
    .duration(200)
    .EUt(7300)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:sheep_blood_cells>*1000,<liquid:distilled_water>*1000)
    .notConsumable(<gtadditions:ga_meta_item:32396>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidOutputs(<liquid:bacterial_growth_medium>*1000)
    .duration(200)
    .EUt(7300)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:barley>)
    .outputs(<gtadditions:ga_dust:32182>)
    .duration(12)
    .EUt(80)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:water>*12)
    .fluidOutputs(<liquid:hot_water>*12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))    
    .duration(299)
    .EUt(820)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hot_water>*125)
    .inputs(<gtadditions:ga_dust:32182>)
    .fluidOutputs(<liquid:hot_grist_solution>*200)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hot_water>*125)
    .inputs(<gtadditions:ga_dust:32182>)
    .fluidOutputs(<liquid:hot_grist_solution>*200)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hot_grist_solution>*200)
    .notConsumable(<gtadditions:ga_dust:32184>)
    .fluidOutputs(<liquid:wort>*100)
    .outputs(<gtadditions:ga_dust:32183>)
    .duration(120)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hot_grist_solution>*200)
    .notConsumable(<gtadditions:ga_dust:32184>)
    .fluidOutputs(<liquid:wort>*100)
    .outputs(<gtadditions:ga_dust:32183>)
    .duration(120)
    .EUt(200)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:malt_extract>*1000,<liquid:peptone>*1000,<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:166>*2)
    .fluidOutputs(<liquid:nutrient_rich_solution>*4000)
    .duration(200)
    .EUt(820)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:purepetridish>,<gtadditions:ga_dust:26>)
    .fluidInputs(<liquid:nutrient_rich_solution>*1000)
    .outputs(<contenttweaker:grown_yeast_culture>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:purepetridish>,<gtadditions:ga_dust:26>)
    .fluidInputs(<liquid:nutrient_rich_solution>*1000)
    .outputs(<contenttweaker:grown_yeast_culture>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<contenttweaker:grown_yeast_culture>)
    .outputs(<contenttweaker:yeast_cells>)
    .fluidOutputs(<liquid:wastewater>*12)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gtadditions:ga_meta_item:32398>)
    .inputs(<contenttweaker:yeast_cells>)
    .fluidOutputs(<liquid:yeast_mixture>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gtadditions:ga_meta_item:32398>)
    .inputs(<contenttweaker:yeast_cells>)
    .fluidOutputs(<liquid:yeast_mixture>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*200,<liquid:mannitol>*1000,<liquid:yeast_extract>*1000)
    .fluidOutputs(<liquid:dissolved_yeast_extract_mannitol_mixture>*2200)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*200,<liquid:mannitol>*1000,<liquid:yeast_extract>*1000)
    .fluidOutputs(<liquid:dissolved_yeast_extract_mannitol_mixture>*2200)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:dissolved_yeast_extract_mannitol_mixture>*1000)
    .inputs(<gtadditions:ga_dust:39>*2)
    .fluidOutputs(<liquid:yeast_extract_mannitol_agar_solution>*1000)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:dissolved_yeast_extract_mannitol_mixture>*1000)
    .inputs(<gtadditions:ga_dust:39>*2)
    .fluidOutputs(<liquid:yeast_extract_mannitol_agar_solution>*1000)
    .duration(200)
    .EUt(720)
    .buildAndRegister();

autoclave.recipeBuilder()
    .fluidInputs(<liquid:yeast_extract_mannitol_agar_solution>*1000)
    .outputs(<gtadditions:ga_dust:32185>)
    .notConsumable(<gregtech:meta_item_1:2033>)
    .EUt(299)
    .duration(70)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bean_slurry>*1000)
    .inputs(<gtadditions:ga_dust:32185>)
    .outputs(<gtadditions:ga_dust:32162>)
    .duration(200)
    .EUt(820)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:32175>)
    .outputs(<gregtech:meta_item_1:2196>)
    .fluidOutputs(<liquid:bean_slurry>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

//Mannitol Production  fructose/glucose + sodium hydroxide solution + sodium boronhydride

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:165>*6)
    .notConsumable(<gtadditions:ga_dust:929>)
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:mannitol>*1000)
    .EUt(120)
    .duration(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:165>*6)
    .notConsumable(<gtadditions:ga_dust:929>)
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:mannitol>*1000)
    .EUt(120)
    .duration(200)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:166>*6)
    .notConsumable(<gtadditions:ga_dust:929>)
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:mannitol>*1000)
    .EUt(120)
    .duration(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:166>*6)
    .notConsumable(<gtadditions:ga_dust:929>)
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:mannitol>*1000)
    .EUt(120)
    .duration(200)
    .buildAndRegister();


//Peptone

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<contenttweaker:pancreas>)
    .notConsumable(<gtadditions:ga_meta_item:32396>)
    .fluidOutputs(<liquid:homogenized_pancreas_mixture>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:homogenized_pancreas_mixture>*1000)
    .notConsumable(<liquid:nonylphenol>)
    .fluidOutputs(<liquid:trypsin>*50)
    .duration(20)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:liquid_crystal_detector>*1000,<liquid:mutatedlivingsolder>*1000)
    .fluidOutputs(<liquid:living_mutation_medium>*2000)
    .duration(200)
    .EUt(12000000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:liquid_crystal_detector>*1000,<liquid:mutatedlivingsolder>*1000)
    .fluidOutputs(<liquid:living_mutation_medium>*2000)
    .duration(200)
    .EUt(12000000)
    .buildAndRegister();

bio.findRecipe(120,[<gtadditions:ga_dust:46>],[<liquid:bacterial_growth_medium>*250]).remove();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*250)
    .fluidOutputs(<liquid:depleted_growth_medium>*250)
    .notConsumable(<liquid:yeem_solution>)
    .inputs(<gtadditions:ga_dust:46>)
    .outputs(<gtadditions:ga_dust:46>*2)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

bio.findRecipe(120,[<gtadditions:ga_dust:42>],[<liquid:bacterial_growth_medium>*250]).remove();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*250)
    .fluidOutputs(<liquid:depleted_growth_medium>*250)
    .notConsumable(<liquid:yeem_solution>)
    .inputs(<gtadditions:ga_dust:42>)
    .outputs(<gtadditions:ga_dust:42>*2)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()  
    .fluidInputs(<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:yeem_solution>*1000)
    .inputs(<gtadditions:ga_dust:32185>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lmixer.recipeBuilder()  
    .fluidInputs(<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:yeem_solution>*1000)
    .inputs(<gtadditions:ga_dust:32185>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fermented_superlubricenttincture_solution>*1000)
    .fluidOutputs(<liquid:water>*800,<liquid:fermented_superlubricenttincture>*200)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:fermented_superlubricenttincture>*1000)
    .inputs(<gtadditions:ga_dust:32>)
    .chancedOutput(<gtadditions:ga_dust:32207>, 100, 0)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

bio.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32207>)
    .notConsumable(<contenttweaker:pad_petri>)
    .fluidOutputs(<liquid:xerizin>*20)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*250)
    .fluidOutputs(<liquid:depleted_growth_medium>*250)
    .notConsumable(<liquid:yeem_solution>)
    .inputs(<gtadditions:ga_dust:32207>)
    .outputs(<gtadditions:ga_dust:32207>*2)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<ore:craftingLensBlack>)
    .fluidInputs(<liquid:xerizin>*100)
    .outputs(<contenttweaker:biologically_approved_lense>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:246>)
    .fluidInputs(<liquid:ethylene_oxide>*25,<liquid:nonylphenol>*25)
    .fluidOutputs(<liquid:ethoxylated_nonylphenol>*50)
    .duration(200)
    .EUt(299)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:246>)
    .fluidInputs(<liquid:ethylene_oxide>*25,<liquid:nonylphenol>*25)
    .fluidOutputs(<liquid:ethoxylated_nonylphenol>*25)
    .duration(20)
    .EUt(299)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:nonoxynol-9_solution>*200)
    .fluidOutputs(<liquid:nonoxynol-9>*50,<liquid:water>*150)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

