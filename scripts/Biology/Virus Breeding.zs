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


val packer = mods.gregtech.recipe.RecipeMap.getByName("packer");
val unpacker = mods.gregtech.recipe.RecipeMap.getByName("unpacker");
val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusion_reactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermal = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val orewasher = mods.gregtech.recipe.RecipeMap.getByName("orewasher");
val lcr = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val lmixer = mods.gregtech.recipe.RecipeMap.getByName("large_mixer");
val blastalloy = mods.gregtech.recipe.RecipeMap.getByName("blast_alloy");
val stellar = mods.gregtech.recipe.RecipeMap.getByName("stellar_forge");
val dehydrator = mods.gregtech.recipe.RecipeMap.getByName("chemical_dehydrator");
val plasma_condenser = mods.gregtech.recipe.RecipeMap.getByName("plasma_condenser");
val circuit_assembly_line = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembly_line");
val bio = mods.gregtech.recipe.RecipeMap.getByName("bio_reactor");
val fluidheater = mods.gregtech.recipe.RecipeMap.getByName("fluid_heater");
val cas = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val lengraver = mods.gregtech.recipe.RecipeMap.getByName("large_engraver");
val adv = mods.gregtech.recipe.RecipeMap.getByName("ADVFusion");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
val canning = mods.gregtech.recipe.RecipeMap.getByName("canner");
val lcentrifuge = mods.gregtech.recipe.RecipeMap.getByName("large_centrifuge");
val fcanning = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");
val sifter = mods.gregtech.recipe.RecipeMap.getByName("sifter");
val cluster_mill = mods.gregtech.recipe.RecipeMap.getByName("cluster_mill");
val pyro = mods.gregtech.recipe.RecipeMap.getByName("pyro");
val fermenter = mods.gregtech.recipe.RecipeMap.getByName("fermenter");


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
    .fluidInputs(<liquid:hundretbutanol>*1000,<liquid:hundretmethanol>*1000)
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
    .EUt(8000)
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