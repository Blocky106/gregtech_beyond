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
val thermalCent = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
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
val engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");

PBFRecipeBuilder.start()
    .input(<gregtech:meta_item_1:2095>)
    .output(<gregtech:meta_item_1:10095>)
    .duration(500)
    .fuelAmount(11)
    .buildAndRegister();
	
alloy_smelter.recipeBuilder()
    .inputs(<contenttweaker:silversteel> * 2)
	.notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<contenttweaker:silversteelplate>)
    .duration(80)
    .EUt(15)
    .buildAndRegister();
	
alloy_smelter.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot> * 2)
	.notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<contenttweaker:electricalsteelplate>)
    .duration(80)
    .EUt(15)
    .buildAndRegister();
	
chemReactor.recipeBuilder()
	.inputs(<minecraft:iron_ingot>,<gregtech:meta_item_1:197> * 1)
	.fluidInputs(<liquid:carbon> * 50)
	.fluidOutputs(<liquid:pig_iron> * 288)
	.duration(60)
	.EUt(20)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2357>,<gregtech:meta_item_1:2061>)
    .outputs(<gregtech:meta_item_1:10061>)
    .duration(120)
    .EUt(10)
    .buildAndRegister();
	
alloy_smelter.recipeBuilder()
    .inputs(<enderio:item_material:22>,<gregtech:meta_item_1:159> * 3)
    .outputs(<enderio:item_material:4>)
    .duration(70)
    .EUt(22)
    .buildAndRegister();
	
fluidExtractor.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32429>)
	.fluidOutputs(<liquid:blackfluid>)
	.duration(80)
    .EUt(25)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<minecraft:dye>)
	.fluidOutputs(<liquid:blackfluid> * 200)
	.duration(80)
    .EUt(25)
    .buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10140>)
	.fluidInputs(<liquid:blackfluid> * 800)
	.outputs(<extendedcrafting:material>)
	.duration(60)
	.EUt(16)
	.property("temperature", 1800)
	.buildAndRegister();
	
ebf.recipeBuilder()
	.inputs(<minecraft:ender_pearl>,<minecraft:iron_ingot>)
	.outputs(<extendedcrafting:material:36>)
	.duration(80)
	.EUt(120)
	.property("temperature", 1800)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<minecraft:ender_pearl>)
	.fluidOutputs(<liquid:ender> * 144)
	.duration(80)
    .EUt(25)
    .buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<minecraft:iron_ingot>)
	.fluidInputs(<liquid:ender> * 200)
	.outputs(<enderio:item_alloy_ingot:5>)
	.duration(120)
	.EUt(40)
	.buildAndRegister();
	
macerator.recipeBuilder()
	.inputs(<extendedcrafting:material>)
	.outputs(<gtadditions:ga_dust:32003>)
	.duration(50)
	.EUt(20)
	.buildAndRegister();
	
chemReactor.recipeBuilder()
	.inputs(<enderio:item_material:76> * 2)
	.fluidInputs(<liquid:nutrient_distillation> * 600,<liquid:cloud_seed> * 1300)
	.fluidOutputs(<liquid:lumin> * 288)
	.duration(80)
	.EUt(15)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<contenttweaker:catalyst>)
	.fluidInputs(<liquid:lumin> * 144)
	.outputs(<extendedcrafting:material:7>)
	.duration(120)
	.EUt(20)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()
    .inputs(<minecraft:clay_ball>,<minecraft:glowstone_dust>)
    .outputs(<enderio:item_material:76> * 2)
    .duration(60)
    .EUt(18)
    .buildAndRegister();
	
ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32015>)
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs(<contenttweaker:silveralloyingot>)
	.duration(80)
	.EUt(12)
	.property("temperature", 1800)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:2>, <extendedcrafting:material:7> * 2 ,<contenttweaker:silveralloyingot>)
	.outputs(<extendedcrafting:material:14>)
	.duration(150)
	.EUt(12)
	.buildAndRegister();
	
ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32013>)
	.outputs(<contenttweaker:bulatsteelingot>)
	.duration(120)
	.EUt(80)
	.property("temperature", 1800)
	.buildAndRegister();
	
	
metal_bender.recipeBuilder()
	.inputs(<contenttweaker:silveralloyingot>)
	.outputs(<contenttweaker:silveralloyplate>)
	.duration(80)
	.EUt(20)
	.property("circuit", 0)
	.buildAndRegister();
	
metal_bender.recipeBuilder()
	.inputs(<contenttweaker:bulatsteelingot>)
	.outputs(<contenttweaker:bulatsteelplate>)
	.duration(80)
	.EUt(20)
	.property("circuit", 0)
	.buildAndRegister();
	
metal_bender.recipeBuilder()
	.inputs(<contenttweaker:silversteel>)
	.outputs(<contenttweaker:silversteelplate>)
	.duration(80)
	.EUt(20)
	.property("circuit", 0)
	.buildAndRegister();
	
metal_bender.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot>)
	.outputs(<contenttweaker:electricalsteelplate>)
	.duration(80)
	.EUt(20)
	.property("circuit", 0)
	.buildAndRegister();
	
chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:14197>)
	.fluidInputs(<liquid:blaze> * 400)
	.outputs(<contenttweaker:blazingrod>)
	.duration(120)
	.EUt(15)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot>)
	.outputs(<gtadditions:ga_dust:32016>)
	.duration(80)
	.EUt(20)
	.buildAndRegister();


macerator.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:6>)
	.outputs(<gtadditions:ga_dust:32004>)
	.duration(80)
	.EUt(20)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2033> * 3,<gregtech:meta_item_1:2012>)
	.outputs(<gtadditions:ga_dust:32013> * 4)
	.duration(150)
	.EUt(12)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:oil> * 200)
	.notConsumable(<gregtech:meta_item_1:32307>)
	.outputs(<thermalfoundation:material:833>)
	.duration(100)
	.EUt(15)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2184> * 3,<thermalfoundation:material:770> * 6,<thermalfoundation:material:833>)
	.outputs(<gtadditions:ga_dust:32004>)
	.duration(150)
	.EUt(12)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<contenttweaker:rubyingot>)
	.fluidInputs(<liquid:ice> * 1000)
	.outputs(<contenttweaker:supercooledingot>)
	.duration(70)
	.EUt(15)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<contenttweaker:supercooledingot>)
	.outputs(<contenttweaker:supercooledplate>)
	.duration(80)
	.EUt(120)
	.property("circuit", 0)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:1392> * 2, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "plastic", Amount: 1000}}))
	.fluidInputs(<liquid:acetone> * 166,<liquid:bisphenol_a> * 1000)
	.fluidOutputs(<liquid:bisphenolb> * 800)
	.outputs(<gregtech:meta_item_1:32762>)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:bisphenolb> * 144)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.outputs(<contenttweaker:bisphenolbingot>)
	.duration(80)
	.EUt(110)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot>)
	.outputs(<contenttweaker:electricalsteelplate>)
	.duration(80)
	.EUt(20)
	.property("circuit", 0)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "chlorine", Amount: 1000}}),<gregtech:meta_item_1:2216> * 3)
	.fluidInputs(<liquid:sodium_persulfate> * 400)
	.fluidOutputs(<liquid:ic2coolant> * 400)
	.outputs(<gregtech:meta_item_1:32762>)
	.duration(480)
	.EUt(120)
	.buildAndRegister();

chemical_bath.recipeBuilder()
	.inputs(<gregtech:meta_item_1:11127>)
	.fluidInputs(<liquid:ic2coolant> * 1200)
	.outputs(<gregtech:meta_item_1:10127>)
	.duration(260)
	.EUt(125)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<enderio:item_alloy_nugget:5> * 8,<minecraft:ender_eye>,<gregtech:meta_item_1:1111> * 3)
	.fluidInputs(<liquid:glue> * 150)
	.outputs(<enderio:item_alloy_nugget:2> * 9)
	.duration(380)
	.EUt(120)
	.property("temperature", 1800)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32004>)
	.outputs(<enderio:item_alloy_ingot:6>)
	.duration(580)
	.EUt(120)
	.property("temperature", 2700)
	.buildAndRegister();

ebf.findRecipe(120, [<gregtech:meta_item_1:2183>], null).remove();
 

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2009>,<gregtech:meta_item_1:2209> * 7)
	.outputs(<gregtech:meta_item_1:2364>)
	.duration(150)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:supercooledplate> * 8,<gregtech:frame_aluminium>)
	.outputs(<gregtech:metal_casing:3>)
	.duration(500)
	.EUt(480)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:gearBismuthBronze> * 4, <contenttweaker:bisphenolbingot> * 4, <gtadditions:ga_meta_item:32028>)
	.outputs(<forestry:sturdy_machine>)
	.duration(50)
	.EUt(450)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12142>,<gregtech:meta_item_1:19018>,<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "silicon_rubber", Amount: 1000}}) * 3)
	.fluidInputs(<liquid:sulfuric_acid> * 125)
	.outputs(<gregtech:meta_item_2:32444>)
	.duration(80)
	.EUt(420)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2013>,<gregtech:meta_item_1:2065>)
	.fluidInputs(<liquid:hydrofluoric_acid> * 4000,<liquid:chloroform> * 2000)
	.fluidOutputs(<liquid:hydrochloric_acid> * 6000,<liquid:tetraethylene> * 1000)
	.outputs(<gtadditions:ga_dust:282>*2)
	.duration(240)
	.EUt(256)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2772>)
	.fluidInputs(<liquid:tetraethylene> * 500)
	.fluidOutputs(<liquid:tetrafluoroethylene> * 500)
	.outputs(<gregtech:meta_item_1:2054>)
	.duration(90)
	.EUt(240)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:frame_steel>, <gregtech:meta_item_1:12184> * 6)
	.outputs(<gregtech:metal_casing:4>*2)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:frame_steel>, <contenttweaker:steel_item_casing> * 6)
	.outputs(<gregtech:metal_casing:4>*2)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:14>)
	.fluidInputs(<liquid:electrum> * 500)
	.outputs(<extendedcrafting:material:15>)
	.duration(90)
	.EUt(240)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:8>)
	.fluidInputs(<liquid:electrum> * 1000)
	.outputs(<extendedcrafting:material:9>)
	.duration(90)
	.EUt(240)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<enderio:item_alloy_nugget:2> * 9)
	.outputs(<contenttweaker:hotvibrantalloyingot>)
	.duration(1800)
	.EUt(120)
	.property("temperature", 1700)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotvibrantalloyingot>)
	.outputs(<gregtech:meta_item_1:10550>)
	.duration(600)
	.EUt(80)
	.buildAndRegister();

chemical_bath.recipeBuilder()
	.inputs(<contenttweaker:hotvibrantalloyingot>)
	.fluidInputs(<liquid:ic2coolant> * 1200)
	.outputs(<gregtech:meta_item_1:10550>)
	.duration(900)
	.EUt(100)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2044> * 4,<gregtech:meta_item_1:2016>,<gregtech:meta_item_1:2018>)  
	.outputs(<gtadditions:ga_dust:32005>)
	.duration(180)
	.EUt(420)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32005>)
	.fluidInputs(<liquid:chlorine> * 500)
	.outputs(<gregtech:meta_item_1:2133>,<gregtech:meta_item_1:2705>)
	.duration(240)
	.EUt(456)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2038>)
	.fluidInputs(<liquid:titanium_tetrachloride> * 1000)
	.outputs(<gtadditions:ga_dust:32019>)
	.duration(650)
	.EUt(250)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32019>)
	.fluidInputs(<liquid:hydrochloric_acid> * 1000)
	.outputs(<gregtech:meta_item_1:2072>)
	.fluidOutputs(<liquid:hydrogen>*500)
	.duration(240)
	.EUt(456)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<gregtech:ore_platinum_0>)
	.chancedOutput(<gregtech:meta_item_1:2902>, 8862, 0)
	.outputs(<gregtech:meta_item_1:2328>)
	.duration(300)
	.EUt(2000)
	.buildAndRegister();

ebf.findRecipe(120, [<gregtech:meta_item_1:2901> * 2], null).remove();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2901>)
	.outputs(<gregtech:meta_item_1:2900>)
	.fluidOutputs(<liquid:chlorine> * 120)
	.duration(600)
	.EUt(1024)
	.property("temperature", 3600)
	.buildAndRegister();
	
ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2051>)
	.outputs(<contenttweaker:hotplatinumingot>)
	.duration(600)
	.EUt(1524)
	.property("temperature", 2100)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotplatinumingot>)
	.outputs(<gregtech:meta_item_1:10051>)
	.duration(400)
	.EUt(1300)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12042> * 2,<forestry:sturdy_machine>)
	.fluidInputs(<liquid:seed_oil> * 600)
	.outputs(<forestry:impregnated_casing>)
	.duration(250)
	.EUt(520)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:11963>)
	.outputs(<enderio:item_material:39>)
	.duration(800)
	.EUt(1300)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<enderio:item_material:39>)
	.fluidInputs(<liquid:pulsating_iron> * 144)
	.outputs(<gregtech:meta_item_1:10963>)
	.duration(400)
	.EUt(250)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<thermalfoundation:material:1026> * 2, <thermalfoundation:material:1027> * 2, <gregtech:meta_item_1:2111>)
	.fluidInputs(<liquid:pyrotheum> * 500, <liquid:cryotheum> * 500)
	.outputs(<thermalfoundation:material:1028>)
	.duration(1800)
	.EUt(480)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2822>)
	.chancedOutput(<gregtech:meta_item_1:53>, 33333, 0)
	.duration(8000)
	.EUt(12)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2075>)
	.chancedOutput(<gregtech:meta_item_1:53>, 66666, 0)
	.duration(8000)
	.EUt(12)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2108> * 6)
	.outputs(<gregtech:meta_item_1:2900> * 3,<gregtech:meta_item_1:2894>,<gregtech:meta_item_1:2065>,<gregtech:meta_item_1:2044>)
	.duration(1200)
	.EUt(60)
	.buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<minecraft:stone>)
	.fluidInputs(<liquid:lubricant> * 10)
	.outputs(<minecraft:stone_button>)
	.duration(20)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<minecraft:stone_button> * 64, <minecraft:stone_button> * 44, <gregtech:meta_item_1:12391> * 3)
	.outputs(<contenttweaker:keyboard>)
	.duration(50)
	.EUt(40)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<appliedenergistics2:material:1>, <minecraft:quartz>, <minecraft:redstone>)
	.fluidInputs(<liquid:water> * 1000)
	.outputs(<appliedenergistics2:material:7> * 2)
	.duration(400)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:184> * 4, <gregtech:meta_item_1:16184> * 16)
	.outputs(<appliedenergistics2:part:120> * 4)
	.duration(4000)
	.EUt(6)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:1018> * 8, <gregtech:meta_item_1:14184>)
	.outputs(<contenttweaker:coils>)
	.duration(200)
	.EUt(400)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:18> * 8, <gregtech:meta_item_1:14184>)
	.outputs(<contenttweaker:coils>)
	.fluidInputs(<liquid:soldering_alloy> * 72)
	.duration(200)
	.EUt(400)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2012>, <gregtech:meta_item_1:2126>, <gregtech:meta_item_1:2275>)
	.fluidInputs(<liquid:iron> * 432)
	.outputs(<gtadditions:ga_dust:32006> * 3)
	.duration(343)
	.EUt(200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32006>)
	.fluidInputs(<liquid:nitrogen> * 400)
	.outputs(<contenttweaker:greensteelingot>)
	.property("temperature", 2600)
	.duration(400)
	.EUt(10)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10207>)
	.outputs(<contenttweaker:osmiridiumcircuit>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(300)
	.EUt(480)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10072>)
	.outputs(<contenttweaker:titaniumcircuit>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(300)
	.EUt(480)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10311>)
	.outputs(<contenttweaker:tritaniumcircuit>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(300)
	.EUt(480)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10074>)
	.outputs(<contenttweaker:tungstencircuit>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(300)
	.EUt(480)
	.buildAndRegister();

forming_press.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10302>)
	.outputs(<contenttweaker:hssgcircuit>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(300)
	.EUt(480)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10018>)
	.outputs(<gregtech:meta_item_1:12018>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10071>)
	.outputs(<gregtech:meta_item_1:12071>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10001>)
	.outputs(<gregtech:meta_item_1:12001>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10184>)
	.outputs(<gregtech:meta_item_1:12184>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10095>)
	.outputs(<gregtech:meta_item_1:12095>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<minecraft:iron_ingot>)
	.outputs(<gregtech:meta_item_1:12033>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10788>)
	.outputs(<gregtech:meta_item_1:12788>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10072>)
	.outputs(<gregtech:meta_item_1:12072>)
	.notConsumable(<gregtech:meta_item_1:32350>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<contenttweaker:titaniumcontainingice>)
	.chancedOutput(<gtadditions:ga_dust:32019>, 90000, 100)
	.fluidOutputs(<liquid:chlorine> * 120)
	.duration(8000)
	.EUt(4)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<minecraft:quartz>)
	.fluidInputs(<liquid:ender> * 288)
	.outputs(<thermalfoundation:material:895>)
	.duration(400)
	.EUt(20)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<minecraft:quartz>)
	.fluidInputs(<liquid:glowstone> * 288)
	.outputs(<thermalfoundation:material:894>)
	.duration(300)
	.EUt(30)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<minecraft:quartz>)
	.fluidInputs(<liquid:redstone> * 288)
	.outputs(<thermalfoundation:material:893>)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:14001>,<appliedenergistics2:material:8>, <appliedenergistics2:material:22>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.outputs(<appliedenergistics2:material:44>*2)
	.duration(200)
	.EUt(80)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<minecraft:glowstone_dust> * 2,<minecraft:redstone> * 2)
	.outputs(<gtadditions:ga_dust:32008>*4)
	.duration(160)
	.EUt(50)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:15>)
	.fluidInputs(<liquid:tungsten_steel> * 400)
	.outputs(<extendedcrafting:material:16>)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:9>)
	.fluidInputs(<liquid:tungsten_steel> * 1600)
	.outputs(<extendedcrafting:material:10>)
	.duration(800)
	.EUt(160)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:14001>,<appliedenergistics2:material:8>, <appliedenergistics2:material:22>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<appliedenergistics2:material:43>*2)
	.duration(200)
	.EUt(80)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32008> * 2, <minecraft:iron_ingot>)
	.outputs(<gregtech:meta_item_1:10515>)
	.duration(260)
	.EUt(50)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<appliedenergistics2:material:8> * 2, <appliedenergistics2:fluix_block>, <thermalfoundation:material:102>)
	.fluidInputs(<liquid:ender> * 144)
	.outputs(<appliedenergistics2:material:9>*8)
	.duration(200)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32488>,<appliedenergistics2:part:36>*32)
	.outputs(<appliedenergistics2:part:76>*8)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32488>,<appliedenergistics2:part:516>*8)
	.outputs(<appliedenergistics2:part:76>*8)
	.duration(120)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10228>)
	.fluidInputs(<liquid:redstone> * 288)
	.outputs(<enderio:item_alloy_ingot:3>)
	.duration(400)
	.EUt(80)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<contenttweaker:titaniumcontainingice>)
	.fluidOutputs(<liquid:redstone> * 12)
	.outputs(<gtadditions:ga_dust:32019>,<gregtech:meta_item_1:2120>*2)
	.duration(10000)
	.EUt(2)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<thermalfoundation:material:101>)
	.outputs(<thermalfoundation:material:165>)
	.property("temperature", 3600)
	.duration(221)
	.EUt(400)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<appliedenergistics2:material:7>)
	.outputs(<appliedenergistics2:material:8>)
	.duration(150)
	.EUt(20)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<appliedenergistics2:part:140>,<appliedenergistics2:material:9>)
	.outputs(<appliedenergistics2:part:16>)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<appliedenergistics2:part:16>, <gregtech:meta_item_1:1961>, <gregtech:meta_item_1:1961>)
	.outputs(<appliedenergistics2:part:36>)
	.duration(200)
	.EUt(50)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<appliedenergistics2:part:36>, <enderio:item_alloy_ingot:3>)
	.fluidInputs(<liquid:plastic> * 144)
	.outputs(<appliedenergistics2:part:56>)
	.duration(300)
	.EUt(160)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2184> * 6, <gregtech:meta_item_1:2062> * 2)
	.outputs(<gtadditions:ga_dust:32014> * 8)
	.duration(80)
	.EUt(60)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2061>, <gregtech:meta_item_1:2184>)
	.outputs(<gtadditions:ga_dust:32016>)
	.duration(80)
	.EUt(60)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10061>,<gregtech:meta_item_1:10184>)
	.outputs(<enderio:item_alloy_ingot>)
	.duration(400)
	.EUt(10)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:redstone>, <minecraft:iron_ingot>)
	.outputs(<enderio:item_alloy_ingot:4>)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot> * 9)
	.outputs(<enderio:block_alloy>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:1> * 9)
	.outputs(<enderio:block_alloy:1>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10550> * 9)
	.outputs(<enderio:block_alloy:2>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:3> * 9)
	.outputs(<enderio:block_alloy:3>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:4> * 9)
	.outputs(<enderio:block_alloy:4>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:5> * 9)
	.outputs(<enderio:block_alloy:5>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:6> * 9)
	.outputs(<enderio:block_alloy:6>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:8> * 9)
	.outputs(<enderio:block_alloy:8>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot:9> * 9)
	.outputs(<enderio:block_alloy:9>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<thermalfoundation:material:136> * 8)
	.notConsumable(<gregtech:meta_item_1:32303>)
    .outputs(<thermalfoundation:material:264>)
    .duration(80)
    .EUt(50)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<thermalfoundation:material:166> * 8)
	.notConsumable(<gregtech:meta_item_1:32303>)
    .outputs(<thermalfoundation:material:294>)
    .duration(80)
    .EUt(50)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<thermalfoundation:material:165> * 8)
	.notConsumable(<gregtech:meta_item_1:32303>)
    .outputs(<thermalfoundation:material:293>)
    .duration(80)
    .EUt(50)
    .buildAndRegister();

extruder.recipeBuilder()
	.inputs(<thermalfoundation:material:136> * 4)
	.outputs(<thermalfoundation:material:264>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<thermalfoundation:material:166> * 4)
	.outputs(<thermalfoundation:material:294>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<thermalfoundation:material:165> * 4)
	.outputs(<thermalfoundation:material:293>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<thermalfoundation:material:72>)
	.fluidInputs(<liquid:mana> * 400)
	.outputs(<thermalfoundation:material:136>)
	.property("temperature", 3600)
	.duration(221)
	.EUt(400)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<thermalfoundation:material:102>)
	.outputs(<thermalfoundation:material:166>)
	.property("temperature", 3600)
	.duration(221)
	.EUt(400)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<thermalfoundation:material:166>)
	.outputs(<thermalfoundation:material:358>)
	.property("circuit", 0)
	.duration(40)
	.EUt(200)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<thermalfoundation:material:165>)
	.outputs(<thermalfoundation:material:357>)
	.property("circuit", 0)
	.duration(40)
	.EUt(200)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<thermalfoundation:material:136>)
	.outputs(<thermalfoundation:material:328>)
	.property("circuit", 0)
	.duration(40)
	.EUt(200)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<appliedenergistics2:material:47>)
	.fluidOutputs(<liquid:uumatter> * 50)
	.duration(800)
	.EUt(4)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<thermalfoundation:material:895> * 7, <gregtech:meta_item_1:2952> * 5, <gregtech:meta_item_1:2736> * 4, <gtadditions:ga_dust:288> * 12, <thermalfoundation:material:893> * 7)
	.outputs(<gtadditions:ga_dust:32009>)
	.EUt(1200)
	.duration(200)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<contenttweaker:greensteelingot>)
	.outputs(<contenttweaker:greensteelplate>)
	.property("circuit", 0)
	.duration(40)
	.EUt(200)
	.buildAndRegister();

lathe.recipeBuilder()
	.inputs(<contenttweaker:greensteelingot>)
	.outputs(<contenttweaker:greensteelrod>)
	.EUt(20)
	.duration(200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32009>)
	.outputs(<contenttweaker:hotresonantseaborgiumingot>)
	.EUt(6000)
	.property("temperature", 9600)
	.duration(1200)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32007> * 12, <gtadditions:ga_dust:32017> * 8)
	.fluidInputs(<liquid:supercooled_cryotheum> * 1200, <liquid:ic2coolant> * 600)
	.fluidOutputs(<liquid:cryogeniccoolant> * 800)
	.duration(400)
	.EUt(50000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotresonantseaborgiumingot>)
	.fluidInputs(<liquid:cryogeniccoolant> * 8000)
	.outputs(<contenttweaker:resonantseaborgiumingot>)
	.duration(8000)
	.EUt(20000)
	.buildAndRegister();

blastalloy.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32018>, <gregtech:meta_item_1:10762> * 12, <gregtech:meta_item_1:19309> * 8, <gregtech:meta_item_1:16311> * 16)
	.fluidInputs([<liquid:hdcs> * 2000, <liquid:moltenresonantseaborgium> * 288])
	.fluidOutputs([<liquid:moltenmodularium> * 2000])
	.property("temperature", 9600)
	.duration(500)
	.EUt(800000)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2009> * 4,<gregtech:meta_item_1:2209> * 12)
	.outputs(<gregtech:meta_item_1:2364>)
	.duration(400)
	.EUt(16)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<contenttweaker:platinumsaltore>)
	.outputs(<gregtech:meta_item_1:2902>)
	.chancedOutput(<gregtech:meta_item_1:2328> * 2, 80000, 1200)
	.duration(200)
	.EUt(12000)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<modularmachinery:itemmodularium>)
	.fluidOutputs(<liquid:moltenmodularium> * 144)
	.duration(200)
	.EUt(200000)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:moltenmodularium> * 144)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.outputs(<modularmachinery:itemmodularium>)
	.duration(200)
	.EUt(200000)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<contenttweaker:resonantseaborgiumingot>)
	.fluidOutputs(<liquid:moltenresonantseaborgium> * 144)
	.duration(200)
	.EUt(200000)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs(<liquid:moltenresonantseaborgium> * 144)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.outputs(<contenttweaker:resonantseaborgiumingot>)
	.duration(200)
	.EUt(200000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs([<ore:circuitSuperconductor>, <contenttweaker:solenoid> * 8, <gregtech:meta_item_1:32724> * 4, <gregtech:cable:1744> * 8, <gregtech:meta_item_1:12310> * 16,
	<gregtech:meta_item_2:19310> * 16, <gregtech:meta_item_1:16310> * 16, <gregtech:meta_item_1:16310> * 16, <gregtech:meta_item_1:16310> * 16])
	.fluidInputs([<liquid:berkelium> * 2000, <liquid:mana> * 1000, <liquid:grisium> * 4000])
	.outputs(<contenttweaker:forcefieldgenerator>)
	.duration(800)
	.EUt(800000)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs([<liquid:uumatter> * 200])
	.notConsumable(<gregtech:meta_item_1:32307>)
	.outputs(<contenttweaker:solidified_uum>)
	.duration(2000)
	.EUt(400000)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32014>)
	.outputs(<gregtech:meta_item_2:32015>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(200)
	.EUt(22)
	.buildAndRegister();


assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_seaborgium>*2,<ore:circuitInfinite>*4,<contenttweaker:forcefieldgenerator>*2,<modularmachinery:itemmodularium>*16,<gregtech:meta_item_1:19309>*32,<gregtech:meta_item_1:16309>*64,<gregtech:meta_item_1:16309>*64,<gregtech:meta_item_1:16309>*64)
	.fluidInputs(<liquid:zpm_superconductor>*2000,<liquid:hsss>*10000,<liquid:radon>*10000,<liquid:hsse>*10000)
	.outputs(<contenttweaker:highpowercasing>*2)
	.duration(800)
	.EUt(999999)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<thermalfoundation:material:1028>,<gregtech:meta_item_1:2051>*6)
	.fluidInputs(<liquid:uumatter>*4000)
	.fluidOutputs(<liquid:mana>*576)
	.duration(400)
	.EUt(800000)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:redstone_block>*64,<thermalexpansion:frame:128>)
	.outputs(<thermalexpansion:cell>)
	.duration(800)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:redstone_block>*64,<thermalexpansion:frame:130>)
	.outputs(<thermalexpansion:frame:146>)
	.duration(800)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:redstone_block>*64,<thermalexpansion:frame:131>)
	.outputs(<thermalexpansion:frame:147>)
	.duration(800)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:redstone_block>*64,<thermalexpansion:frame:132>)
	.outputs(<thermalexpansion:frame:148>)
	.duration(800)
	.EUt(24)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<minecraft:iron_ingot>,<gregtech:meta_item_1:357>*2)
	.outputs(<enderio:item_alloy_endergy_ingot>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_endergy_nugget> * 9)
	.outputs(<enderio:item_alloy_endergy_ingot>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<enderio:item_alloy_endergy_ingot> * 9)
	.outputs(<enderio:block_alloy_endergy>)
	.duration(40)
	.EUt(8)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs([<liquid:vanadium_steel> * 32, <liquid:lafium> * 32])
    .fluidOutputs(<liquid:moltencompressediron> * 32)
    .duration(200)
    .EUt(434535)
    .property("eu_to_start", 640000000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<pneumaticcraft:ingot_iron_compressed>)
	.fluidOutputs(<liquid:moltencompressediron> * 144)
	.duration(200)
	.EUt(80000)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<pneumaticcraft:ingot_iron_compressed> * 8)
	.notConsumable(<gregtech:meta_item_1:32303>)
    .outputs(<pneumaticcraft:compressed_iron_gear>)
    .duration(80)
    .EUt(50)
    .buildAndRegister();

extruder.recipeBuilder()
	.inputs(<pneumaticcraft:ingot_iron_compressed> * 4)
	.outputs(<pneumaticcraft:compressed_iron_gear>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();


assembly_line.recipeBuilder()
	.inputs(<gregtech:cable:3744>*16,<gregtech:meta_item_1:12791>*4,<gregtech:meta_item_2:32436>*4, <gregtech:meta_item_1:12695>*2,<ore:circuitInfinite>,<gregtech:meta_item_1:32677>)
	.fluidInputs(<liquid:soldering_alloy>*144,<liquid:moltencompressediron>*144)
	.duration(800)
	.EUt(500000)
	.buildAndRegister();

fluid_solidifier.recipeBuilder()
	.fluidInputs([<liquid:moltencompressediron> * 144])
	.outputs(<pneumaticcraft:ingot_iron_compressed>)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.duration(400)
	.EUt(20000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:5071>,<pneumaticcraft:compressed_iron_gear>*4)
	.outputs(<pneumaticcraft:pressure_tube>)
	.duration(250)
	.EUt(12000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2721>)
	.outputs(<gregtech:meta_item_1:11721>)
	.property("temperature", 11200)
	.duration(500)
	.EUt(8300000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_quantum_casing>,<gregtech:meta_item_2:16709>*64,<gregtech:fluid_pipe:3695>*16,<gregtech:meta_item_1:10709>*4,<gregtech:meta_item_1:12730>*32,<gregtech:meta_item_1:16755>*64,<gregtech:meta_item_1:16755>*64,<gregtech:meta_item_1:16755>*64)
	.fluidInputs(<liquid:polyetheretherketone>*20000)
	.property("qubit", 32)
	.outputs(<pneumaticcraft:pressure_chamber_wall>)
	.duration(800)
	.EUt(12006900)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:machine:2206>,<pneumaticcraft:pressure_tube>*16,<thermalexpansion:capacitor:2>.withTag({Energy: 0}),<thermalexpansion:capacitor:2>.withTag({Energy: 0}))
	.outputs(<pneumaticcraft:air_compressor>)
	.fluidInputs(<liquid:zylon>*1000)
	.duration(800)
	.EUt(200000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:15308>,<gregtech:meta_item_1:12707>*2)
	.outputs(<pneumaticcraft:turbine_blade>)
	.duration(800)
	.EUt(8300000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<pneumaticcraft:capacitor>*12,<gregtech:machine:806>)
	.outputs(<pneumaticcraft:network_component:3>)
	.duration(800)
	.EUt(8300000)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gregtech:meta_item_1:1093>*3,<minecraft:rotten_flesh>*7,<minecraft:slime_ball>)
	.fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:blood>*1000)
	.fluidOutputs(<liquid:etchacid>*5000)
	.EUt(800)
	.duration(120000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hicomputationstationmk4>,<ore:circuitUmv>,<ore:circuitUmv>,<gregtech:meta_item_2:32436>*16,<gregtech:ga_cable:4775>*16,<gtadditions:ga_meta_item:32561>*2,<gregtech:meta_item_2:16716>*64,<gregtech:meta_item_2:16716>*64,<gregtech:meta_block_compressed_45:4>*16)
	.fluidInputs(<liquid:zylon>*1000,<liquid:cinobite_molten>*1000)
	.outputs(<gtadditions:ga_fusion_casing:7>)
	.EUt(134200000)
	.duration(1200)
	.property("qubit", 32)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_proto_adamantium>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64
	,<gtadditions:ga_fusion_casing:1>,<gtadditions:ga_meta_item:32369>,<gtadditions:ga_meta_item:32393>,<gregtech:meta_item_1:12715>*64)
	.fluidInputs(<liquid:zylon>*1000,<liquid:cinobite_molten>*1000)
	.outputs(<gtadditions:ga_vacuum_casing:3>)
	.EUt(1200)
	.duration(1200)
	.property("qubit", 32)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32369>,<gtadditions:ga_meta_item:32393>,<gregtech:frame_proto_adamantium>*64,<gtadditions:ga_fusion_casing:1>*4,<gregtech:meta_item_1:17710>*64,<gregtech:meta_item_1:17710>*64)
	.fluidInputs(<liquid:zylon>*1000,<liquid:cinobite_molten>*1000)
	.outputs(<gtadditions:ga_divertor_casing:3>)
	.EUt(134200000)
	.duration(1200)
	.property("qubit", 32)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_proto_adamantium>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gregtech:fluid_pipe:18>*64,<gtadditions:ga_fusion_casing:1>,<gtadditions:ga_meta_item:32369>,<gtadditions:ga_meta_item:32393>,<gtadditions:ga_meta_item:32556>*64)
	.fluidInputs(<liquid:zylon>*1000,<liquid:cinobite_molten>*1000)
	.outputs(<gtadditions:ga_cryostat_casing:3>)
	.EUt(1200)
	.duration(1200)
	.property("qubit", 32)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs([<liquid:heavy_quark_degenerate_matter> * 32, <liquid:mana> * 32])
    .fluidOutputs([<liquid:primalquarkdegeneratematterplasma> * 32])
    .duration(200)
    .EUt(434535)
    .property("eu_to_start", 640000000)
    .buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<pneumaticcraft:advanced_pcb>,<pneumaticcraft:advanced_pcb>,<ore:circuitUxv>,<ore:circuitUxv>,<ore:circuitUxv>,<ore:circuitUxv>,<gregtech:machine:4174>,<gregtech:meta_item_1:13671>*8,<gregtech:meta_item_1:13671>*8,<gregtech:meta_item_1:13671>*8,<gregtech:meta_item_1:13671>*8,<gregtech:meta_item_1:13671>*8)
	.fluidInputs(<liquid:neutronium_doped_nanotubes>*2000,<liquid:soldering_alloy>*20000)
	.outputs(<gregtech:machine:10007>)
	.duration(9000)
	.EUt(45635364)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<extendedcrafting:material:48>,<gregtech:meta_item_2:25111>*8)
	.outputs(<avaritia:resource>)
	.duration(400)
	.EUt(1200000)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:385>,<avaritia:resource>)
	.fluidInputs(<liquid:primalquarkdegeneratematterplasma>*800)
	.outputs(<avaritia:resource:1>)
	.duration(900)
	.EUt(23520525)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<extendedcrafting:material:16>,<extendedcrafting:material:7>,<avaritia:resource:1>)
	.fluidInputs(<liquid:emerald>*2000)
	.outputs(<extendedcrafting:material:17>)
	.duration(8000)
	.EUt(200000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<extendedcrafting:material:17>*4,<extendedcrafting:material:11>*4,<extendedcrafting:material:48>*64,<extendedcrafting:material:48>*64,<extendedcrafting:material:48>*64,<extendedcrafting:material:48>*64,<extendedcrafting:table_elite>*4,<gregtech:meta_item_1:12716>*64,<gregtech:meta_item_1:12716>*64)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*4000)
	.outputs(<extendedcrafting:table_ultimate>)
	.duration(8000)
	.property("qubit", 64)
	.EUt(244342424)
	.buildAndRegister();

stellar.recipeBuilder()
	.inputs(<gtadditions:ga_explosive:3>)
	.outputs(<appliedenergistics2:material:48>)
	.fluidInputs([<liquid:uumatter>*2000])
	.duration(800)
	.EUt(80000000)
	.buildAndRegister();


lmixer.recipeBuilder()
	.inputs(<gtadditions:ga_dust:149>,<gregtech:meta_item_1:12673>,<appliedenergistics2:material:48>)
	.fluidOutputs(<liquid:highlycomplicatedcosmicrubber>*1000)
	.fluidInputs(<liquid:nickel56_plasma>*2000,<liquid:rapidly_replicating_animal_cells>*5000,<liquid:cosmic_neutronium>*200)
	.duration(800)
	.EUt(43343434)
	.buildAndRegister();   


assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32436>*6,<gregtech:cable:4744>*4,<gregtech:meta_item_1:12854>*4,<gregtech:meta_item_1:12736>*2,<ore:circuitInfinite>,<gregtech:meta_item_1:32677>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*2000)
	.outputs(<contenttweaker:crystaltinebaseingot>)
	.EUt(80909000)
	.duration(900)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gtadditions:ga_machine_casing:4>,<gregtech:ga_cable:5993>*4)
	.outputs(<gregtech:machine:3243>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*2000)
	.duration(800)
	.EUt(123456789)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:highpowercasing>,<gtadditions:ga_meta_item:32549>,<gtadditions:ga_meta_item:32380>,<gregtech:frame_osmiridium>*2,<gregtech:machine:3241>,<gtadditions:ga_meta_item:32549>,<gregtech:meta_item_2:21200>*32,<contenttweaker:greensteelplate>*32)
	.outputs(<contenttweaker:electroniccasing>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*2000)
	.duration(8000)
	.property("qubit", 8)
	.EUt(99999999)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<minecraft:stone>,<extendedcrafting:material:49>*5,<gtadditions:ga_dust:385>)
	.outputs(<contenttweaker:refabricateddraconiumore>)
	.fluidInputs(<liquid:uumatter>*1000,<liquid:moltencompressediron>*200,<liquid:sterilized_growth_medium>*300,<liquid:sodium_lithium_solution>*400,<liquid:hydrogen>*200)
	.duration(800)
	.EUt(343045555)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<contenttweaker:refabricateddraconiumore>)
	.fluidInputs(<liquid:ammonia>*2000)
	.fluidOutputs(<liquid:draconiumenrichedamonia>*500)
	.outputs(<gtadditions:ga_dust:944>)
	.duration(400)
	.EUt(232323323)
	.buildAndRegister();

cracker.recipeBuilder()
	.fluidInputs(<liquid:steam>*1000,<liquid:draconiumenrichedamonia>*1000)
	.fluidOutputs(<liquid:steamcrackeddraconiumenrichedamonia>*1000)
	.duration(800)
	.EUt(532535357)
	.buildAndRegister();

lcr.recipeBuilder()	
	.outputs(<gtadditions:ga_dust:385>,<gregtech:meta_item_1:2036>*1)
	.fluidOutputs(<liquid:draconiumcontainingmixture>*1000,<liquid:sodium>*400)
	.fluidInputs(<liquid:deuterium_superheavy_mix>*500,<liquid:steamcrackeddraconiumenrichedamonia>*1000)
	.EUt(237676676)
	.duration(999)
	.buildAndRegister();

mixer.recipeBuilder()	
	.inputs(<thermalfoundation:geode>)
	.fluidInputs(<liquid:draconiumcontainingmixture>*500)
	.fluidOutputs(<liquid:enhanceddraconiummixture>*500)
	.EUt(45454545)
	.duration(9000)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<thermalfoundation:material:893>,<thermalfoundation:material:894>,<thermalfoundation:material:895>)
	.fluidInputs(<liquid:mana>*1000)
	.outputs(<thermalfoundation:geode>)
	.EUt(80000)
	.duration(400)
	.buildAndRegister();

dehydrator.recipeBuilder()
	.fluidInputs(<liquid:enhanceddraconiummixture>*1000)
	.fluidOutputs(<liquid:draconiumsaltmixture>*500)
	.duration(1234)
	.EUt(43334346)
	.buildAndRegister();

chemReactor.recipeBuilder()	
	.fluidInputs(<liquid:draconiumsaltmixture>*1000,<liquid:oxygen>*1000)
	.fluidOutputs(<liquid:draconiumdioxide>*1000)
	.EUt(8000)
	.duration(43432566)
	.buildAndRegister();

mixer.recipeBuilder()	
	.fluidInputs(<liquid:draconiumdioxide>*500,<liquid:chlorine>*2000)
	.fluidOutputs(<liquid:draconiumhexachloride>*500)
	.EUt(2323)
	.duration(12156535)
	.buildAndRegister();

mixer.recipeBuilder()	
	.fluidInputs(<liquid:draconiumhexachloride>*1000,<liquid:fluorine>*6000)
	.fluidOutputs(<liquid:draconiumhexafluoride>*1000)
	.EUt(43446343)
	.duration(2323)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:draconiumhexafluoride>*1000,<liquid:nitric_acid>*1000)
	.fluidOutputs(<liquid:draconiumnitradesolution>*1000)
	.EUt(70544533)
	.duration(120)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:9811>)
	.fluidInputs(<liquid:draconiumnitradesolution>*1000,<liquid:nitric_acid>*1000)
	.fluidOutputs(<liquid:depleteddraconiumnitradesolution>*1000)
	.EUt(70544533)
	.duration(120)
	.buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:vinegar>*2000)
    .fluidOutputs(<liquid:water>*1600,<liquid:acetic_acid>*400)
    .outputs(<gregtech:meta_item_1:2196>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

distillation_tower.recipeBuilder()
	.fluidInputs(<liquid:depleteddraconiumnitradesolution>*10000)
	.fluidOutputs(<liquid:hydrochloric_acid>*2000,<liquid:draconiumrichsolution>*1000,<liquid:water>*7000)
	.duration(8000)
	.EUt(34353453)
	.buildAndRegister();

mixer.recipeBuilder()
	.fluidInputs(<liquid:draconiumrichsolution>*1000)
	.inputs(<gregtech:meta_item_1:2138>*10)
	.fluidOutputs(<liquid:obisdianinfuseddraconiummixture>*1000)
	.duration(434)
	.EUt(232353535)
	.buildAndRegister();

plasma_condenser.recipeBuilder()
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs(<liquid:obisdianinfuseddraconiummixture>*100)
	.fluidOutputs(<liquid:plasma.draconium>*100)
	.EUt(24244242)
	.duration(467)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs(<liquid:plasma.draconium>*11,<liquid:primalquarkdegeneratematterplasma>*11)
	.fluidOutputs(<liquid:draconium>*11)
	.duration(800)
	.property("eu_to_start", 5000000000)
	.EUt(444353555)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2061>*3,<gregtech:meta_item_1:2012>*2,<gregtech:meta_item_1:2033>*3)
	.outputs(<gtadditions:ga_dust:32016>*8)
	.EUt(12)
	.duration(200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32016>)
	.fluidInputs(<liquid:hydrogen>*200)
	.outputs(<enderio:item_alloy_ingot>)
	.property("temperature", 900)
	.EUt(28)
	.duration(400)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32014>)
	.fluidInputs(<liquid:hydrogen>*200)
	.outputs(<contenttweaker:silversteel>)
	.EUt(28)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:electroniccasing>*16,<gtadditions:ga_meta_item:32365>*2,<gtadditions:ga_meta_item:32377>*2,<extendedcrafting:material:12>*4,<gtadditions:ga_meta_item:32549>,<gtadditions:ga_meta_item:32549>,<gtadditions:ga_meta_item:32549>,<gtadditions:ga_meta_item:32549>)
	.outputs(<modularmachinery:matter_controller>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*2000)
	.duration(200)
	.EUt(80232354)
	.property("Qubit", 12)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:machine:3243>,<gregtech:meta_item_1:10517>*12,<contenttweaker:highpowercasing>,<extendedcrafting:material:12>,<gtadditions:ga_meta_item:32549>,<avaritia:resource:1>*4,<gregtech:frame_hg_alloy>,<gregtech:frame_hg_alloy>)
	.outputs(<contenttweaker:mattercasing>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*2000)
	.duration(200)
	.EUt(80232354)
	.property("Qubit", 12)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<enderio:block_reinforced_obsidian>,<gregtech:meta_item_1:12517>*2)
	.fluidInputs(<liquid:pvtchs>*200)
	.outputs(<deepmoblearning:soot_covered_plate>)
	.duration(2000)
	.EUt(363457474)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<minecraft:stick>,<enderio:item_alloy_ingot:6>)
	.fluidInputs(<liquid:soldering_alloy>*200)
	.outputs(<pneumaticcraft:crop_support>*2)
	.duration(200)
	.EUt(180)
	.buildAndRegister();

assembler.recipeBuilder()	
	.inputs(<contenttweaker:diamondaluminiumcasing>,<gregtech:meta_item_1:17001>*4,<gregtech:meta_item_2:32455>*2,<forestry:thermionic_tubes:5>*2)
	.outputs(<forestry:chipsets>.withTag({T: 0 as short}))
	.fluidInputs(<liquid:soldering_alloy>*200)
	.duration(400)
	.EUt(380)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:7>*4)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(200)
	.EUt(20)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<contenttweaker:compressedironnugget>)
	.fluidOutputs(<liquid:moltencompressediron>*16)
	.duration(200)
	.EUt(90)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10807>)
	.notConsumable(<gregtech:meta_item_1:32307>)
	.outputs(<gtadditions:ga_meta_item:17807>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:17807>)
	.fluidInputs(<liquid:carbon_13>*200)
	.outputs(<gregtech:meta_item_1:10519>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

ebf.recipeBuilder()	
	.inputs(<thermalexpansion:frame:129>)
	.outputs(<thermalexpansion:frame:130>)
	.fluidInputs(<liquid:oxygen>*2000)
	.duration(400)
	.property("temperature", 4500)
	.EUt(2000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12671>*8)
	.outputs(<gtadditions:ga_machine_casing:4>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
	.duration(400)
	.EUt(435566757)
	.buildAndRegister();

stellar.recipeBuilder()
	.inputs(<gregtech:meta_item_1:790>*2,<gtadditions:ga_explosive:3>)
	.outputs(<gregtech:meta_item_1:1516>*2)
	.fluidInputs([<liquid:einsteinium257>*1000])
	.duration(200)
	.EUt(90000000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32035>,<gregtech:meta_item_1:19728>*16,<gtadditions:ga_meta_item:32426>*4,<gtadditions:ga_meta_item:32601>*32,<gtadditions:ga_meta_item:32602>*32,<gtadditions:ga_meta_item:32603>*32,<gtadditions:ga_meta_item:32604>*32,<gregtech:cable:516>*4)
	.fluidInputs(<liquid:quantumdots>*2000,<liquid:quantum>*2000,<liquid:pvtchs>*2000)
	.outputs(<pneumaticcraft:empty_pcb:100>)
	.duration(400)
	.EUt(900000)
	.buildAndRegister();

assembler.recipeBuilder()	
	.inputs(<contenttweaker:advancedcraftingunit>,<appliedenergistics2:material:37>,<gregtech:cable:521>*4)
	.outputs(<appliedenergistics2:crafting_storage_16k>)
	.fluidInputs(<liquid:platinum>*72)
	.duration(200)
	.EUt(9999)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2072>,<gregtech:meta_item_1:2051>)
	.outputs(<gregtech:meta_item_1:2521>*2)
	.duration(200)
	.EUt(5657)
	.buildAndRegister();

assembler.recipeBuilder()	
	.inputs(<contenttweaker:advancedcraftingunit>,<appliedenergistics2:material:38>,<gregtech:meta_item_2:16303>*16)
	.outputs(<appliedenergistics2:crafting_storage_64k>)
	.fluidInputs(<liquid:ruthenium>*72)
	.duration(200)
	.EUt(9999)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<minecraft:web>)
	.outputs(<forestry:crafting_material:2>)
	.EUt(12)
	.duration(50)
	.buildAndRegister();

compressor.recipeBuilder()
	.inputs(<forestry:crafting_material:2>*9)
	.outputs(<forestry:crafting_material:3>)
	.EUt(12)
	.duration(120)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<thermalfoundation:material:895>,<gregtech:meta_item_1:2218>)
	.outputs(<forestry:crafting_material>)
	.EUt(20)
	.duration(30)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<forestry:crafting_material>*8,<forestry:crafting_material:3>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
	.outputs(<forestry:crafting_material:1>)
	.fluidInputs(<liquid:vibrantalloy>*250)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2026>,<minecraft:soul_sand>)
	.outputs(<enderio:item_material:74>)
	.EUt(200)
	.duration(300)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:electricalsteelplate>*4,<minecraft:skull:2>,<thaumcraft:ingot:2>)
	.outputs(<enderio:item_material:41>)
	.duration(200)
	.EUt(120)
	.buildAndRegister();
	
assembler.recipeBuilder()	
	.inputs(<ore:circuitAdvanced>,<minecraft:diamond>*4,<minecraft:quartz>*5,<enderio:item_alloy_nugget:3>*8,<enderio:item_material:41>)
	.outputs(<gendustry:genetics_processor>)	
	.fluidInputs(<liquid:redstone>*200)	
	.duration(200)	
	.EUt(1200)	
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<enderio:item_material:74>)
	.outputs(<contenttweaker:soulariummetallicpowder>)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<contenttweaker:soulariummetallicpowder>)
	.fluidInputs(<liquid:chlorine>*600)
	.outputs(<contenttweaker:refinedsoulariumpowder>)
	.duration(200)
	.EUt(2000)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<contenttweaker:refinedsoulariumpowder>,<gregtech:meta_item_1:2122>)
	.outputs(<gregtech:meta_item_1:2522>)
	.duration(200)
	.EUt(1600)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2522>)
	.fluidInputs(<liquid:nitrogen>*1000)
	.outputs(<contenttweaker:hotsoulariumingot>)
	.property("temperature", 2700)
	.duration(200)
	.EUt(400)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotsoulariumingot>)
	.outputs(<gregtech:meta_item_1:10522>)
	.duration(400)
	.EUt(1980)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<minecraft:stone_button> * 64, <minecraft:stone_button> * 44, <gregtech:meta_item_1:12061> * 6)
	.outputs(<contenttweaker:keyboard>)
	.duration(200)
	.EUt(20)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}),<gregtech:meta_item_1:12523>*8)
	.outputs(<gregtech:machine_casing:9>)
	.duration(50)
	.EUt(16)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2521>)
	.property("temperature", 4500)
	.outputs(<contenttweaker:hotplatinumtitaniumingot>)
	.duration(200)
	.EUt(2500)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotplatinumtitaniumingot>)
	.outputs(<gregtech:meta_item_1:10521>)
	.duration(200)
	.EUt(1200)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<thermalfoundation:ore:8>)
	.outputs(<thermalfoundation:material:72>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16308>*8,<gregtech:meta_item_1:12309>,<gregtech:meta_item_1:12519>)
	.fluidInputs(<liquid:polytetrafluoroethylene>*144)
	.outputs(<gtadditions:ga_meta_item:32256>*32)
	.duration(80)
	.EUt(30720)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<minecraft:clay_ball>,<minecraft:snow>)
	.fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:cloud_seed>*1000)
	.duration(400)
	.EUt(6)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<minecraft:rotten_flesh>,<minecraft:fermented_spider_eye>)
	.fluidInputs(<liquid:water>*1000)
	.fluidOutputs(<liquid:nutrient_distillation>*1000)
	.duration(400)
	.EUt(6)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<contenttweaker:rawatomicsperationcatalyst>)
	.fluidInputs(<liquid:metastable_oganesson>*2000)
	.outputs(<contenttweaker:hotatomicseperationcatalyst>)
	.property("temperature", 8000)
	.duration(200)
	.EUt(80000)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs(<liquid:tritanium>*11,<liquid:naquadria>*11)
	.fluidOutputs(<liquid:naquadriatictritanium>*11)
	.duration(400)
	.property("eu_to_start", 640000000)
	.EUt(2000000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:17>,<extendedcrafting:material:25>*4,<extendedcrafting:material:7>)
	.outputs(<extendedcrafting:material:18>)
	.duration(200)
	.EUt(120000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<extendedcrafting:material:11>,<extendedcrafting:material:25>*4,<extendedcrafting:material:7>)
	.outputs(<extendedcrafting:material:12>)
	.duration(200)
	.EUt(120000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:engravedgoldchip> *8,<gtadditions:ga_meta_item:32035>,<gtadditions:ga_meta_item:32420>*4,<gregtech:meta_item_2:32482>*10,<gregtech:cable:2001>*4,<gregtech:meta_item_1:16232>*16)
	.outputs(<contenttweaker:hicomputationstationmk1>)
	.fluidInputs(<liquid:vibrantalloy>*200)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gtadditions:ga_transparent_casing:1>*4,<gregtech:meta_item_1:12522>*4)
	.outputs(<contenttweaker:soulariumreinforcedglass>*4)
	.duration(400)
	.EUt(1222)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2532>*18,<gregtech:meta_item_1:2062>*8,<gregtech:meta_item_1:2535>*4)
	.outputs(<gregtech:meta_item_1:2531>*30)
	.duration(27)
	.EUt(15)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2045>*2,<gregtech:meta_item_1:2016>*9,<gregtech:meta_item_1:2001>*5,<gregtech:meta_item_1:2072>*2,<gregtech:meta_item_1:2017>*10,<gregtech:meta_item_1:2074>*13,<gregtech:meta_item_1:2133>*18)
	.outputs(<gregtech:meta_item_1:2530>*59)
	.duration(60)
	.EUt(20)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:machine:508>,<ore:circuitUltimate>*3,<contenttweaker:hicomputationstationmk1>*4,<gregtech:meta_item_2:32435>*2,<gregtech:meta_item_2:26531>*4,<gregtech:cable:8072>*4,<gregtech:meta_item_1:13530>*2,<gregtech:meta_item_1:32656>*4)
	.outputs(<gregtech:machine:10000>)
	.duration(400)
	.fluidInputs(<liquid:palladium>*2000)
	.EUt(12000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2788>)
	.outputs(<gregtech:meta_item_1:10788>)
	.fluidInputs(<liquid:oxygen>*200)
	.property("temperature", 2700)
	.duration(400)
	.EUt(2000)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10797>)
	.outputs(<gtadditions:ga_meta_item:17797>)
	.notConsumable(<gregtech:meta_item_1:32307>)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:17797>)
	.fluidInputs(<liquid:liquidboronnanoparticles>*72)
	.duration(499)
	.EUt(12345)
	.outputs(<gregtech:meta_item_1:2520>)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2313>)
	.fluidInputs(<liquid:sulfuric_acid>*500)
	.fluidOutputs(<liquid:borontrioxide>*500)
	.duration(390)
	.EUt(24)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2155>)
	.fluidInputs(<liquid:borontrioxide>*500)
	.fluidOutputs(<liquid:unprocessedboronsolution>*1000)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

dehydrator.recipeBuilder()
	.fluidInputs(<liquid:unprocessedboronsolution>*1000)
	.outputs(<gtadditions:ga_dust:32021>)
	.duration(499)
	.EUt(18000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32021>)
	.outputs(<gtadditions:ga_dust:32042>)
	.property("temperature", 300)
	.EUt(300)
	.duration(1200)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32042>)
	.fluidOutputs(<liquid:liquidboronnanoparticles>*144)
	.duration(400)
	.EUt(43900)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2520>)
	.outputs(<gregtech:meta_item_1:10520>)
	.duration(300)
	.property("temperature", 1627)
	.EUt(1200)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2530>)
	.fluidInputs(<liquid:cerium>*144)
	.outputs(<contenttweaker:hotmarcem200steelingot>)
	.duration(400)
	.EUt(12000)
	.property("temperature", 5000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotmarcem200steelingot>)
	.outputs(<gregtech:meta_item_1:10530>)
	.duration(800)
	.EUt(2000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2531>)
	.outputs(<contenttweaker:hothikariumingot>)
	.duration(400)
	.EUt(12000)
	.property("temperature", 5000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hothikariumingot>)
	.outputs(<gregtech:meta_item_1:10531>)
	.duration(800)
	.EUt(2000)
	.buildAndRegister();

mixer.recipeBuilder()
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
	.fluidInputs(<liquid:water>*1000)
	.inputs(<ore:dustWheat>*2)
	.fluidOutputs(<liquid:grain_solution>*1000)
	.duration(90)
	.EUt(25)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2128>)
	.outputs(<gtadditions:ga_dust:32007>)
	.duration(12)
	.EUt(6)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:109>*4)
	.outputs(<contenttweaker:cupronickelcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:cupronickelcoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:tin>*144)
	.outputs(<gregtech:wire_coil>)
	.duration(80)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:127>*4)
	.outputs(<contenttweaker:kanthalcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(30)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:kanthalcoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:copper>*144)
	.outputs(<gregtech:wire_coil:1>)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:133>*4)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.outputs(<contenttweaker:nichromecoil>)
	.duration(20)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:nichromecoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:aluminium>*144)
	.outputs(<gregtech:wire_coil:2>)
	.duration(80)
	.EUt(120)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:235>*4)
	.outputs(<contenttweaker:tungstensteelcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(480)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:tungstensteelcoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:nichrome>*144)
	.outputs(<gregtech:wire_coil:3>)
	.duration(80)
	.EUt(480)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:302>*4)
	.outputs(<contenttweaker:hssgcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(1920)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:hssgcoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:tungsten>*144)
	.outputs(<gregtech:wire_coil:4>)
	.duration(80)
	.EUt(1920)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:307>*4)
	.outputs(<contenttweaker:naquadacoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(4096)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:naquadacoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:hssg>*144)
	.outputs(<gregtech:wire_coil:5>)
	.duration(80)
	.EUt(4096)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:308>*4)
	.outputs(<contenttweaker:naquadaalloycoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(7680)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:naquadaalloycoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:naquadah>*144)
	.outputs(<gregtech:wire_coil:6>)
	.duration(80)
	.EUt(7680)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:744>*8)
	.outputs(<contenttweaker:superconductingcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(9001)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:cable:354>*4)
	.outputs(<contenttweaker:superconductingcoil>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
	.duration(20)
	.EUt(9001)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<contenttweaker:superconductingcoil>*4,<gtadditions:ga_meta_item:32028>*8)
	.fluidInputs(<liquid:naquadah_alloy>*144)
	.outputs(<gregtech:wire_coil:7>)
	.duration(80)
	.EUt(9001)
	.buildAndRegister();

bio.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32018>*4)
	.notConsumable(<contenttweaker:biobasedpetridiswithculture>)
	.fluidInputs(<liquid:sterilizedbiocatalystmedium>*2000,<liquid:zeliusactivationfluid>*50)
	.outputs(<contenttweaker:biocells>)
	.duration(200)
	.EUt(6200000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2854>)
	.outputs(<gregtech:meta_item_1:11854>)
	.property("temperature", 8600)
	.EUt(2000)
	.duration(800)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:supercooledingot>)
	.outputs(<gtadditions:ga_dust:32017>)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2813>*10,<gregtech:meta_item_1:2075>*2,<gregtech:meta_item_1:2012>*8)
	.fluidInputs(<liquid:oxygen>*12)
	.outputs(<gtadditions:ga_dust:32041>)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32041>*2,<gregtech:meta_item_1:19304>*2)
	.outputs(<contenttweaker:wrappedplutonium>)
	.duration(300)
	.EUt(120000)
	.buildAndRegister();

implosion.recipeBuilder()
	.inputs(<contenttweaker:wrappedplutonium>)
	.property("explosives", 8)
	.outputs(<gregtech:meta_item_1:304>*8,<contenttweaker:highdensityplutoniumnugget>)
	.duration(400)
	.EUt(12024)
	.buildAndRegister();

implosion.recipeBuilder()
	.inputs(<contenttweaker:highdensityplutoniumnugget>*9)
	.property("explosives", 20)
	.outputs(<contenttweaker:highdensityplutonium>)
	.duration(400)
	.EUt(80024)
	.buildAndRegister();


alloy_smelter.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot>*8)
	.notConsumable(<gregtech:meta_item_1:32303>)
	.outputs(<contenttweaker:electricalsteelgear>)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<contenttweaker:silversteel>*8)
	.notConsumable(<gregtech:meta_item_1:32303>)
	.outputs(<contenttweaker:silversteelgear>)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<contenttweaker:bulatsteelingot>*8)
	.notConsumable(<gregtech:meta_item_1:32303>)
	.outputs(<contenttweaker:bulatsteelgear>)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32433>*8)
	.notConsumable(<gregtech:meta_item_1:32303>)
	.outputs(<contenttweaker:advancedalloygear>)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<enderio:item_alloy_ingot>*4)
	.outputs(<contenttweaker:electricalsteelgear>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(40)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<contenttweaker:silversteel>*4)
	.outputs(<contenttweaker:silversteelgear>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(40)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<contenttweaker:bulatsteelingot>*4)
	.outputs(<contenttweaker:bulatsteelgear>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(40)
	.EUt(12)
	.buildAndRegister();

extruder.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32433>*4)
	.outputs(<contenttweaker:advancedalloygear>)
	.notConsumable(<gregtech:meta_item_1:32372>)
	.duration(40)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12307>*4,<gregtech:meta_item_1:12883>*4,<gregtech:meta_item_1:13034>*2)
	.outputs(<contenttweaker:radiationproofplate>)
	.duration(200)
	.EUt(4000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:radiationproofplate>*4,<gtadditions:ga_meta_item:32258>*64,<gtadditions:ga_meta_item:32256>*64,<gtadditions:ga_meta_item:32257>*64,<gtadditions:ga_meta_item:32259>*64,<gregtech:cable:744>*64,<gregtech:meta_item_1:19145>*64,<gregtech:meta_item_1:12312>*32,<gregtech:meta_item_2:32479>*8,<gregtech:meta_item_1:32726>*4,<ore:frameGtTritanium>*4,<gregtech:meta_item_2:32500>*2)
	.fluidInputs(<liquid:sterilized_growth_medium>*2000,<liquid:uumatter>*100)
	.outputs(<gregtech:meta_item_2:32501>)
	.EUt(30000)
	.duration(1000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hicomputationstationmk1>,<gregtech:cable:3744>*4,<gregtech:meta_item_1:12791>*4,<gregtech:meta_item_2:32436>*4,<gregtech:meta_item_1:12695>*4,<ore:circuitInfinite>,<gregtech:meta_item_1:32677>)
	.outputs(<gtadditions:ga_fusion_casing:4>*4)
	.fluidInputs(<liquid:soldering_alloy>*144)
	.duration(100)
	.EUt(500000)
	.buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19775> * 2, <gregtech:meta_item_2:19775> * 2, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64,<gtadditions:ga_meta_item:2671>*8,<gregtech:meta_item_1:18671>* 4,<gregtech:meta_item_1:14671>* 2,<gregtech:ga_cable:7671>* 2)
    .outputs(<gtadditions:ga_meta_item:32358>)
    .fluidInputs(<liquid:lubricant> * 3000,<liquid:soldering_alloy> * 1728)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32358>,<gregtech:meta_item_1:10671>* 2,<gregtech:meta_item_1:14671>* 4,<gregtech:meta_item_1:12671>* 8, <gregtech:meta_item_2:17671>* 8,<gregtech:ga_cable:5671>* 2)
    .outputs(<gtadditions:ga_meta_item:32364>)
    .fluidInputs(<liquid:lubricant> * 2000,<liquid:soldering_alloy> * 576)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32358> * 2,<gregtech:meta_item_2:26671>* 4, <gregtech:meta_item_1:14671> * 4,<gregtech:meta_item_1:12671> * 8, <gregtech:meta_item_1:10671> * 2, <gregtech:meta_item_1:10671>,<gregtech:ga_cable:5671>* 2)
    .outputs(<gtadditions:ga_meta_item:32352>)
    .fluidInputs(<liquid:lubricant> * 5000, <liquid:styrene_butadiene_rubber> * 1440)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32358>, <gregtech:meta_item_2:18671> * 2, <gregtech:meta_item_1:17671> * 8, <gregtech:meta_item_1:18391> * 16, <gregtech:ga_cable:5671> * 2, <gregtech:fluid_pipe:3671> * 64)
    .outputs(<gtadditions:ga_meta_item:32370>)
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 576)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_dust:380> * 64, <ore:circuitUxv> * 2, <ore:frameGtNeutronium>, <gregtech:meta_item_2:25206> * 2, <gtadditions:ga_meta_item:32533>, <gtadditions:ga_meta_item:32524> * 4, <gregtech:ga_cable:5671> * 8, <gregtech:meta_item_1:19735> * 61)
    .outputs(<gtadditions:ga_meta_item:32376>)
    .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 576)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32597>,<gtadditions:ga_meta_item2:10>, <gregtech:ga_cable:722> * 4, <ore:circuitUxv> * 2, <gtadditions:ga_meta_item:32511>, <ore:frameGtVibranium>, <gregtech:ga_cable:5671> * 4, <gregtech:meta_item_2:16717> * 64, <gregtech:meta_item_2:16717> * 64 )
    .outputs(<gtadditions:ga_meta_item:32382>)
    .fluidInputs(<liquid:soldering_alloy> * 864)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:ga_cable:6671> * 16, <ore:circuitUiv> * 8, <gregtech:meta_item_1:17671> * 16, <gregtech:meta_item_1:14671> * 16, <gregtech:meta_item_1:10671>, <gtadditions:ga_meta_item:32364>, <gtadditions:ga_meta_item:32358> * 2)
    .outputs(<gtadditions:ga_meta_item:32388>)
    .fluidInputs(<liquid:soldering_alloy> * 864, <liquid:soldering_alloy> * 864)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<ore:circuitUxv> * 2, <gregtech:ga_cable:5671> * 8,<ore:frameGtNeutronium>, <gregtech:meta_item_2:25206> * 2, <gtadditions:ga_meta_item:32459> * 16, <gregtech:meta_item_1:19707> * 64, <gregtech:meta_item_1:19728> * 64 )
    .outputs(<gtadditions:ga_meta_item:32394>)
    .fluidInputs(<liquid:quark_gluon_plasma> * 2000)
    .duration(800)
    .EUt(446575677)
    .buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:205>*2,<gregtech:meta_item_1:2813>,<gregtech:meta_item_1:2820>*2)
	.fluidInputs(<liquid:metastable_hassium>*500,<liquid:metastable_flerovium>*500)
	.outputs(<contenttweaker:rawatomicsperationcatalyst>)
	.duration(200)
	.EUt(12000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotatomicseperationcatalyst>)
	.outputs(<gregtech:meta_item_1:10528>)
	.duration(490)
	.EUt(40000)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2537>)
	.outputs(<gregtech:meta_item_1:2902>,<gregtech:meta_item_1:902>*2)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2525>)
	.outputs(<gregtech:meta_item_1:2001>,<gregtech:meta_item_1:2155>)
	.duration(40)
	.EUt(40)
	.buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2524>,<gtadditions:ga_dust:32007>)
	.outputs(<gregtech:meta_item_1:2001>)
	.duration(20)
	.EUt(28)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<extendedcrafting:material>)
	.outputs(<extendedcrafting:material:2>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.EUt(24)
	.duration(200)
	.buildAndRegister();

implosion.recipeBuilder()
	.inputs(<contenttweaker:wrappeduraniumingot>)
	.property("explosives", 8)
	.outputs(<gregtech:meta_item_1:300>*8,<contenttweaker:highdensityuraniumnugget>)
	.duration(400)
	.EUt(12024)
	.buildAndRegister();

implosion.recipeBuilder()
	.inputs(<contenttweaker:highdensityuraniumnugget>*9)
	.property("explosives", 20)
	.outputs(<contenttweaker:highdensityuranium>)
	.duration(400)
	.EUt(80024)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2072>*5,<gregtech:meta_item_1:2041>*5,<gregtech:meta_item_1:2077>*2,<gregtech:meta_item_1:2016>*3,<gregtech:meta_item_1:2001>)
	.outputs(<gregtech:meta_item_1:2542>*16)
	.duration(400)
	.EUt(24)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2542>*14,<gregtech:meta_item_1:2074>*10,<gregtech:meta_item_1:2135>*9,<gregtech:meta_item_1:2859>*8,<gregtech:meta_item_1:2543>*7,<gregtech:meta_item_1:2021>*3)
	.outputs(<gregtech:meta_item_1:2541>*51)
	.duration(200)
	.EUt(24)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2541>)
	.outputs(<gregtech:meta_item_1:10541>)
	.property("temperature", 8600)
	.duration(400)
	.EUt(2000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2204>*3,<gregtech:meta_item_1:2075>)
	.outputs(<gtadditions:ga_dust:32020>)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32015>,<gtadditions:ga_meta_item:32405>*4,<gtadditions:ga_meta_item:32406>*4,<gtadditions:ga_meta_item:32407>*4,<gtadditions:ga_meta_item:32408>*4,<gregtech:meta_item_1:12528>*8,<contenttweaker:biocells>*4)
	.outputs(<contenttweaker:bioprocesssingunit>)
	.fluidInputs(<liquid:sterilizedbiocatalystmedium>*1000)
	.duration(400)
	.EUt(9000000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32020>*2,<gregtech:meta_item_1:19300>*2)
	.outputs(<contenttweaker:wrappeduraniumingot>)
	.duration(200)
	.EUt(8000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<contenttweaker:highdensityplutonium>,<gregtech:meta_item_1:2010>)
	.fluidInputs(<liquid:moltentungsticnaquadah>*288)
	.fluidOutputs(<liquid:plutoniumbasedliquidfuel>*500)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2074>,<gregtech:meta_item_1:2307>)
	.outputs(<gtadditions:ga_dust:32043>*2)
	.duration(400)
	.EUt(80)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32043>)
	.fluidOutputs(<liquid:moltentungsticnaquadah>*244)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs(<liquid:lutetium>*12,<liquid:plutoniumbasedliquidfuel>*12)
	.fluidOutputs(<liquid:plutoniumbasedliquidfuele>*24)
	.duration(200)
	.property("eu_to_start", 640000000)
	.EUt(12000000)
	.buildAndRegister();

fluidheater.recipeBuilder()
	.fluidInputs(<liquid:rawsterilizedbiocatalystmedium>*1000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:sterilizedbiocatalystmedium>*1000)
	.duration(140)
	.EUt(20000)
	.buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32212>)
	.notConsumable(<ore:craftingLensRed>)
	.outputs(<contenttweaker:engravedenergychip>)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12026>)
	.notConsumable(<ore:craftingLensYellow>)
	.outputs(<contenttweaker:engravedgoldchip>)
	.duration(400)
	.EUt(3000)
	.buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12527>)
	.notConsumable(<ore:craftingLensMagenta>)
	.outputs(<contenttweaker:engravedmanyiullynchip>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

ebf.recipeBuilder()	
	.inputs(<gregtech:meta_item_1:10518>,<gregtech:meta_item_1:10017>)
	.outputs(<contenttweaker:hotmanyullyningot>)
	.duration(400)
	.property("temperature", 4000)
	.EUt(1200)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32436>*6,<contenttweaker:hicomputationstationmk2>,<gregtech:ga_cable:3739>*4,<gregtech:meta_item_1:12786>*4,<gregtech:meta_item_1:12735>*2,<ore:circuitUev>,<gtadditions:ga_meta_item:32378>)
	.fluidInputs(<liquid:soldering_alloy>*288)
	.outputs(<gtadditions:ga_fusion_casing:5>*4)
	.duration(100)
	.EUt(2000000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hicomputationstationmk3>,<gregtech:meta_item_2:32436>*8,<gregtech:ga_cable:3737>*4,<gregtech:meta_item_1:12780>*4,<gregtech:meta_item_1:12717>*2,<ore:circuitUiv>,<gtadditions:ga_meta_item:32379>)
	.fluidInputs(<liquid:soldering_alloy>*576)
	.outputs(<gtadditions:ga_fusion_casing:6>*4)
	.duration(100)
	.EUt(8000000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32436>*20,<ore:circuitUxv>,<ore:circuitUxv>,<contenttweaker:hicomputationstationmk5>,<gregtech:meta_item_1:13993>*4,<gregtech:meta_item_1:14517>*2,<gregtech:meta_item_1:14517>*2,<gregtech:meta_item_1:14517>*2,<gregtech:meta_item_1:14517>*2,<gregtech:meta_item_1:13671>*2,<gregtech:meta_item_1:12523>*2,<gregtech:ga_cable:3724>*4,<gtadditions:ga_meta_item:32382>)
	.fluidInputs(<liquid:highlycomplicatedcosmicrubber>*500,<liquid:soldering_alloy>*1024)
	.outputs(<gtadditions:ga_fusion_casing:8>*4)
	.duration(200)
	.property("Qubit", 20)
	.EUt(500000000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<contenttweaker:highdensityuranium>,<gregtech:meta_item_1:2054>*8,<gregtech:meta_item_1:2543>*4)
	.fluidInputs(<liquid:radon>*1000)
	.fluidOutputs(<liquid:uraniumbasedliquidfuel>*1000)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

fusion_reactor.recipeBuilder()
	.fluidInputs(<liquid:hydrogen>*12,<liquid:uraniumbasedliquidfuel>*12)
	.fluidOutputs(<liquid:uraniumbasedliquidfuele>*24)
	.duration(400)
	.property("eu_to_start", 640000000)
	.EUt(12000000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:frame_aluminium>,<gtadditions:ga_transparent_casing:4>*4,<gregtech:meta_item_1:18715>*32,<gregtech:meta_item_1:32673>)
	.outputs(<contenttweaker:fieldrestrictionglass>)
	.fluidInputs(<liquid:naqudahasphalt>)
	.duration(200)
	.EUt(12000)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2308>,<gregtech:meta_item_1:2718>)
	.outputs(<gregtech:meta_item_1:2529>)
	.duration(200)
	.EUt(5000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2529>)
	.outputs(<contenttweaker:hotadamantiumalloyingot>)
	.property("temperature", 7000)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotadamantiumalloyingot>)
	.outputs(<gregtech:meta_item_1:10529>)
	.duration(800)
	.EUt(12)
	.buildAndRegister();

stellar.recipeBuilder()
	.inputs(<contenttweaker:highdensityplutonium>,<gtadditions:ga_explosive:2>)
	.fluidInputs([<liquid:uumatter>*288])
	.outputs(<gregtech:meta_item_1:2544>)
	.duration(500)
	.EUt(12000000)
	.buildAndRegister();

distillery.recipeBuilder()
	.fluidInputs(<liquid:naquadah_solution>*200)
	.fluidOutputs(<liquid:naqudahasphalt>*200)
	.duration(20)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
	.duration(40)
	.EUt(8120)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2544>)
	.outputs(<contenttweaker:hotblackplutoniumingot>)
	.property("temperature", 9000)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

lmixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2545>*2,<gregtech:meta_item_1:2228>,<gregtech:meta_item_1:2546>*3,<gregtech:meta_item_1:2180>,<gregtech:meta_item_1:2232>*2,<gregtech:meta_item_1:2233>*4,<gtadditions:ga_dust:32013>*2,<gtadditions:ga_dust:32014>,<gregtech:meta_item_1:2308>)
	.outputs(<gregtech:meta_item_1:2533>*17)
	.duration(200)
	.EUt(24000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2533>)
	.outputs(<contenttweaker:hotfluxedelectrumingot>)
	.property("temperature", 9000)
	.duration(400)
	.EUt(22200)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotfluxedelectrumingot>)
	.outputs(<gregtech:meta_item_1:10533>)
	.duration(20)
	.EUt(4096)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.inputs(<contenttweaker:hotblackplutoniumingot>)
	.outputs(<gregtech:meta_item_1:10544>)
	.duration(20)
	.EUt(4096)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_osmiridium>,<gregtech:meta_item_1:32677>*2,<gregtech:meta_item_1:32657>*8,<gregtech:cable:1964>*32,<gregtech:cable:1964>*32,<ore:circuitInfinite>,<ore:circuitInfinite>,<gregtech:meta_item_1:12544>*8)
	.outputs(<contenttweaker:fieldrestrictioncoil>)
	.fluidInputs(<liquid:krypton>*3200,<liquid:fluxedelectrum>*4215,<liquid:lubricant>*50000)
	.duration(400)
	.EUt(12000000)
	.buildAndRegister();

blastalloy.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2008>*47,<gregtech:meta_item_1:2035>*25,<gregtech:meta_item_1:2071>*13,<gregtech:meta_item_1:2013>*10,<gregtech:meta_item_1:2031>*5)
	.fluidOutputs(<liquid:indalloy140>*14400)
	.property("temperature", 4000)
	.duration(400)
	.EUt(24000)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:radiationproofplate>,<gregtech:meta_item_1:12550>*2,<gregtech:meta_item_1:12207>*2,<gregtech:meta_item_1:12307>*2,<gregtech:meta_item_1:12719>*2,<gregtech:meta_item_1:12533>*2,<contenttweaker:radiationproofplate>)
	.fluidInputs(<liquid:indalloy140>*1152)
	.outputs(<contenttweaker:advancedradiationproofplate>)
	.duration(400)
	.EUt(12000)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:300>)
	.fluidOutputs(<liquid:blackfluid>*200)
	.duration(40)
	.EUt(24)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gendustry:honey_drop:10>)
	.fluidOutputs(<liquid:blackfluid>*200)
	.duration(40)
	.EUt(24)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<enderio:item_material:50>)
	.fluidOutputs(<liquid:blackfluid>*200)
	.duration(40)
	.EUt(24)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2012>)
	.fluidOutputs(<liquid:blackfluid>*200)
	.duration(40)
	.EUt(24)
	.buildAndRegister();

fluidExtractor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2149>)
	.fluidOutputs(<liquid:blackfluid>*200)
	.duration(40)
	.EUt(24)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gregtech:meta_item_1:1528>*7)
	.fluidInputs(<liquid:naqudahasphalt>*1000)
	.fluidOutputs(<liquid:moderatelycrackednaquadahasphalt>*1500)
	.duration(400)
	.EUt(40000)
	.buildAndRegister();

forming_press.recipeBuilder()
 	.inputs(<gregtech:meta_item_1:12061>*4,<gregtech:meta_item_1:12552>*4)
	.outputs(<gregtech:meta_item_1:12549>)
	.notConsumable(<gregtech:meta_item_1:32301>)
	.duration(400)
	.EUt(28000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2310>*16)
	.fluidInputs(<liquid:fluoroantimonic_acid>*4000)
	.property("temperature", 5600)
	.fluidOutputs(<liquid:acidnaquadahemulsion>*2000)
	.outputs(<gregtech:meta_item_1:2551>*12)
	.duration(300)
	.EUt(600000)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.fluidInputs(<liquid:naquadahemulsion>*1000)
	.fluidOutputs(<liquid:naquadah_solution>*20)
	.outputs(<gtadditions:ga_dust:32023> * 5)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

mixer.recipeBuilder()
	.fluidInputs(<liquid:moderatelycrackednaquadahasphalt>*500)
	.inputs(<gtadditions:ga_dust:19>)
	.fluidOutputs(<liquid:plasma.thulium>*500)
	.duration(400)
	.EUt(24000)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32023>)
	.outputs(<gregtech:meta_item_1:1011>*2,<gregtech:meta_item_1:1307>,<gregtech:meta_item_1:75>,<gregtech:meta_item_1:552>)
	.fluidOutputs(<liquid:radon>*5)
	.duration(1200)
	.EUt(24)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:acidnaquadahemulsion>*1000)
	.inputs(<gregtech:meta_item_1:2374>*17)
	.fluidOutputs(<liquid:naquadahemulsion>*1000)
	.duration(240)
	.EUt(999999)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_thulium>,<gregtech:meta_item_1:32674>*2,<contenttweaker:advancedradiationproofplate>*6,<gregtech:cable:2307>*8,<gregtech:meta_item_2:16307>*32,<gregtech:meta_item_2:16307>*32,<gregtech:meta_item_2:16527>*32,<gregtech:meta_item_2:16527>*32,<gregtech:meta_item_1:12549>*4)
	.fluidInputs(<liquid:tungsten_steel>*1152,<liquid:indalloy140>*2000)
	.outputs(<contenttweaker:naquadahfuelrefinerycasing>*2)
	.duration(800)
	.EUt(2023123)
	.buildAndRegister();
	
assembly_line.recipeBuilder()
	.inputs(<gregtech:frame_osmiridium>*8,<gregtech:meta_item_1:12520>*32,<contenttweaker:advancedradiationproofplate>*32,<gregtech:meta_item_1:17070>*64,<gregtech:meta_item_1:32677>*8,<gtadditions:ga_meta_item:32366>*2,<ore:circuitInfinite>,<ore:circuitInfinite>,<ore:circuitInfinite>,<ore:circuitInfinite>,<gtadditions:ga_meta_item:32424>*16,<ore:craftingLensYellow>*32)
	.fluidInputs(<liquid:quantium>*9216,<liquid:indalloy140>*14400,<liquid:extrmelyunstablenaquadah>*8800)
	.outputs(<modularmachinery:fuel_controller>)
	.duration(1200)
	.EUt(2000000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2552>)
	.outputs(<gregtech:meta_item_1:10552>)
	.duration(20)
	.EUt(8020)
	.property("temperature", 2900)
	.buildAndRegister();

metal_bender.recipeBuilder()
	.inputs(<contenttweaker:bisphenolbingot>)
	.outputs(<contenttweaker:bisphenolbsheet>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.duration(200)
	.EUt(24)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:bisphenolbingot>)
	.outputs(<gtadditions:ga_dust:32018>)
	.duration(300)
	.EUt(12)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2281>)
	.fluidInputs(<liquid:naphthylamine>*1000)
	.fluidOutputs(<liquid:chlorine>*6000)
	.notConsumable(<contenttweaker:ic2drill>)
	.outputs(<contenttweaker:monazitecluster>)
	.duration(200)
	.EUt(1200)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<thermalfoundation:material:656>,<contenttweaker:drill_handle>)
	.outputs(<contenttweaker:ic2drill>)
	.duration(200)
	.EUt(4000)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:518>*4,<gregtech:meta_item_1:14184>*2,<gregtech:meta_item_1:12539>*4)
	.fluidInputs(<liquid:vibrantalloy>*1000)
	.outputs(<contenttweaker:drill_handle>)
	.duration(150)
	.EUt(8000)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32022>)
	.fluidInputs(<liquid:nitric_oxide>*200)
	.outputs(<gtadditions:ga_dust:32027>)
	.duration(200)
	.EUt(4000)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32028>)
	.notConsumable(<contenttweaker:osmiumsieve>)
	.outputs(<gtadditions:ga_dust:32029>)
	.EUt(29000)
	.duration(233)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32027>)
	.outputs(<gtadditions:ga_dust:32028>)
	.fluidInputs(<liquid:liquid_oxygen>*2000)
	.EUt(12000)
	.duration(200)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32029>)
	.fluidInputs(<liquid:nitric_acid>*1000)
	.fluidOutputs(<liquid:monazitefilteredsolution>*144,<liquid:nitrogen_dioxide>*750,<liquid:hydrogen>*250)
	.duration(200)
	.EUt(12345)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.fluidInputs(<liquid:monazitefilteredsolution>*2000)
	.outputs(<gregtech:meta_item_1:42>*3,<gregtech:meta_item_1:5281>)
	.EUt(12000)
	.duration(300)
	.buildAndRegister();

bio.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32475>)
	.outputs(<gtadditions:ga_dust:32026>)
	.fluidInputs(<liquid:fermented_biomass>*1000,<liquid:monazitefilteredsolution>*1000)
	.duration(120)
	.EUt(24009)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32026>,<gtadditions:ga_dust:141>)
	.outputs(<gregtech:meta_item_1:2525>)
	.fluidOutputs(<liquid:monazitefilteredcakesolution>*2000)
	.property("temperature", 3600)
	.duration(300)
	.EUt(31000)
	.buildAndRegister();

vacfreezer.recipeBuilder()
	.fluidInputs(<liquid:monazitefilteredcakesolution>*1500)
	.fluidOutputs(<liquid:monazitecakesolution>*1000)
	.duration(400)
	.EUt(12999)
	.buildAndRegister();

lcr.recipeBuilder()
	.fluidInputs(<liquid:monazitecakesolution>*200)
	.outputs(<gtadditions:ga_dust:32031>)
	.inputs(<gregtech:meta_item_2:16307>)
	.duration(500)
	.EUt(19000)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32030>*3)
	.outputs(<gregtech:meta_item_1:2075>*2,<gregtech:meta_item_1:2069>)
	.duration(200)
	.EUt(1900)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32026>)
	.outputs(<gtadditions:ga_dust:32024>)
	.fluidInputs(<liquid:nitrogen>*1000)
	.duration(500)
	.EUt(12000)
	.property("temperature", 2800)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32031>,<gregtech:meta_item_1:1555>*2)
	.outputs(<gtadditions:ga_dust:32033>)
	.property("temperature", 4000)
	.EUt(9000)
	.duration(400)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32033>,<gregtech:meta_item_1:2012>*2)
	.outputs(<gtadditions:ga_dust:32036>,<gregtech:meta_item_1:307>)
	.fluidInputs(<liquid:oxygen>*1000)
	.duration(300)
	.EUt(1200)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32036>)
	.fluidInputs(<liquid:sulfuric_acid>*400)
	.outputs(<gregtech:meta_item_1:2743>)
	.duration(400)
	.EUt(2400)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<contenttweaker:platinumsaltore>)
	.outputs(<gregtech:meta_item_1:5537>*8)
	.chancedOutput(<gregtech:meta_item_1:2537>*2, 14000, 7800)
	.chancedOutput(<gregtech:meta_item_1:2328>, 67000, 8000)
	.duration(120)
	.EUt(24)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.EUt(30000)
	.inputs(<gregtech:meta_item_2:26565>*4,<gregtech:meta_item_2:32479>*32,<gregtech:cable:966>*32,<gregtech:meta_item_1:13743>*2,<gregtech:meta_item_1:12002>*4,<gregtech:meta_item_1:12331>*4,<gregtech:wire_coil:8>,<gregtech:meta_item_1:32674>*2,<ore:circuitUltimate>,<ore:circuitUltimate>,<ore:circuitUltimate>,<ore:circuitUltimate>)
	.fluidInputs(<liquid:soldering_alloy>*2880)
	.duration(100)
	.outputs(<gregtech:machine:2504>)
	.buildAndRegister();

mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2883>*2,<gregtech:meta_item_1:2311>,<gregtech:meta_item_1:2012>*3)
	.outputs(<gregtech:meta_item_1:2554>*5)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2554>)
	.outputs(<gregtech:meta_item_1:10554>)
	.property("temperature", 2700)
	.duration(400)
	.EUt(4200)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2077>)
	.fluidInputs(<liquid:titanium>*2000,<liquid:radon>*800)
	.outputs(<gtadditions:ga_dust:32037>*2)
	.duration(400)
	.EUt(1200)
	.buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32037>)
	.fluidOutputs(<liquid:radon>*200,<liquid:titanium>*400)
	.outputs(<gregtech:meta_item_1:1311>)
	.duration(200)
	.EUt(12000)
	.buildAndRegister();

lcr.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32025>,<gregtech:meta_item_1:2059>)
	.outputs(<gtadditions:ga_dust:32032>)
	.fluidInputs(<liquid:glowstone>*200)
	.duration(200)
	.EUt(9000)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32032>)
	.fluidInputs(<liquid:oxygen>*1000)
	.outputs(<gtadditions:ga_dust:32035>)
	.duration(2000)
	.EUt(14000)
	.buildAndRegister();

chemReactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32035>)
	.fluidInputs(<liquid:oxygen>*1000)
	.outputs(<gtadditions:ga_dust:32034>)
	.duration(2000)
	.EUt(14000)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32034>)
	.fluidInputs(<liquid:xenon_trioxide>*200)
	.outputs(<gtadditions:ga_dust:32132>)
	.duration(120)
	.EUt(4000)
	.property("temperature", 4700)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16033>,<gregtech:meta_item_1:12196>*2,<ore:plankWood>)
	.outputs(<gregtech:meta_item_2:32443>)
	.fluidInputs(<liquid:glue>*180)
	.duration(300)
	.EUt(12)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:16001>,<gregtech:meta_item_1:12196>)
	.outputs(<gregtech:meta_item_2:32443>*2)
	.fluidInputs(<liquid:glue>*40)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32443>,<gregtech:meta_item_1:19018>*4)
	.outputs(<gtadditions:ga_meta_item:32029>)
	.fluidInputs(<liquid:glue>*72)
	.duration(400)
	.EUt(12)
	.buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32132>,<gregtech:meta_item_1:2066>)
	.fluidOutputs(<liquid:xenon>*200)
	.outputs(<gregtech:meta_item_1:2535>)
	.property("temperature", 4000)
	.EUt(4000)
	.duration(120)
	.buildAndRegister();

macerator.recipeBuilder()
	.inputs(<forestry:resources>)
	.outputs(<gregtech:meta_item_1:5226>*10)
	.chancedOutput(<gregtech:meta_item_1:2239>, 1400, 850)
	.chancedOutput(<gregtech:meta_item_1:2328>, 6700, 800)
	.duration(20)
	.EUt(12)
	.buildAndRegister();

ebf.findRecipe(480, [<gtadditions:ga_dust:19>*10,<gregtech:meta_item_1:2012>*3], null).remove();
assembler.findRecipe(20,[<gregtech:meta_item_1:19018>*4,<gregtech:meta_item_1:12196>],[<liquid:glue>*72]).remove();
assembly_line.findRecipe(30000, [<gregtech:meta_item_2:32479>*32,<gregtech:cable:966>*32,<gregtech:meta_item_1:12002>*4,<gregtech:meta_item_1:12331>*4,<gregtech:wire_coil:8>,<gregtech:meta_item_1:32674>*2,<gtadditions:ga_meta_item:32214>,<gtadditions:ga_meta_item:32214>,<gtadditions:ga_meta_item:32214>,<gtadditions:ga_meta_item:32214>],[<liquid:soldering_alloy>*2880]).remove();
assembly_line.findRecipe(8000000,[<gregtech:meta_item_2:32436>*8,<gregtech:ga_cable:3737>*4,<gregtech:meta_item_1:12780>*4,<gregtech:meta_item_1:12717>*2,<gtadditions:ga_meta_item:32504>,<gtadditions:ga_meta_item:32379>],[<liquid:soldering_alloy>*576]).remove();
assembly_line.findRecipe(2000000,[<gregtech:meta_item_2:32436>*6,<gregtech:ga_cable:3739>*4,<gregtech:meta_item_1:12786>*4,<gregtech:meta_item_1:12735>*2,<gtadditions:ga_meta_item:32404>,<gtadditions:ga_meta_item:32378>],[<liquid:soldering_alloy>*288]).remove();
electrolyzer.findRecipe(30, [<gregtech:meta_item_1:2132>*3],null).remove();
assembly_line.findRecipe(300000,[<gtadditions:ga_meta_item:32258>*64,<gtadditions:ga_meta_item:32256>*64,<gtadditions:ga_meta_item:32257>*64,<gtadditions:ga_meta_item:32259>*64,<gregtech:cable:744>*64,<gregtech:meta_item_1:19145>*64,<gregtech:meta_item_1:12312>*32,<gregtech:meta_item_2:32479>*8,<gregtech:meta_item_1:32726>*4,<gregtech:frame_tritanium>*4,<gregtech:meta_item_2:32500>*2], [<liquid:sterilized_growth_medium>*2000,<liquid:uumatter>*100]).remove();
ebf.findRecipe(120,[<gregtech:meta_item_1:2854>], null).remove();
assembler.findRecipe(9001,[<gtadditions:ga_meta_item:32028>*64,<gregtech:cable:1966>*64],[<liquid:naquadah_alloy>*1152]).remove();
assembler.findRecipe(9001,[<gtadditions:ga_meta_item:32028>*32,<gregtech:cable:1964>*32],[<liquid:naquadah_alloy>*576]).remove();
assembler.findRecipe(9001,[<gtadditions:ga_meta_item:32028>*16,<gregtech:cable:1744>*16],[<liquid:naquadah_alloy>*288]).remove();
assembler.findRecipe(9001,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1354>*8],[<liquid:naquadah_alloy>*144]).remove();
assembler.findRecipe(7680,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1308>*8],[<liquid:naquadah>*144]).remove();
assembler.findRecipe(4096,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1307>*8],[<liquid:hssg>*144]).remove();
assembler.findRecipe(1920,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1302>*8],[<liquid:tungsten>*144]).remove();
assembler.findRecipe(480,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1235>*8],[<liquid:nichrome>*144]).remove();
assembler.findRecipe(120,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1133>*8],[<liquid:aluminium>*144]).remove();
assembler.findRecipe(30,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1127>*8],[<liquid:copper>*144]).remove();
assembler.findRecipe(8,[<gtadditions:ga_meta_item:32028>*8,<gregtech:cable:1109>*8],[<liquid:tin>*144]).remove();
assembler.findRecipe(8,[<gregtech:meta_item_1:2961>*12,<gregtech:cable:1109>*8],[<liquid:tin>*144]).remove();
assembler.findRecipe(30720,[<gregtech:meta_item_2:16308>*8,<gregtech:meta_item_1:12309>], [<liquid:polytetrafluoroethylene>*144]).remove();
lmixer.findRecipe(30, [<gregtech:meta_item_1:2044>*4,<gregtech:meta_item_1:2016>,<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
plasma_condenser.findRecipe(960, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:plasma.draconium>*144,<liquid:liquid_helium>*100]).remove();
ebf.findRecipe(120, [<gregtech:meta_item_1:2721>], null).remove();
assembly_line.findRecipe(500000, [<gregtech:cable:3744> * 4,<gregtech:meta_item_1:12791> * 4,<gregtech:meta_item_2:32436>*4,<gregtech:meta_item_1:12695>*2,<gtadditions:ga_meta_item:32502>,<gregtech:meta_item_1:32677>],[<liquid:soldering_alloy> * 144]).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11963>], null).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:copper> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:nickel> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:steel> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:iron> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:desh> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:bronze> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:magnesium> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:titanium> * 144]).remove();
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32301>], [<liquid:cobalt> * 144]).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:71>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:18>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:184>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:95>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:33>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:788>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:72>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:17>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10788>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gtadditions:ga_meta_item:44>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10071>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<minecraft:iron_ingot>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10095>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10072>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10017>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
metal_bender.findRecipe(24, [<gregtech:meta_item_1:10044>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10044> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10017>* 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10072> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10788> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10095> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:iron_ingot> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10184> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10071> * 2, <gregtech:meta_item_1:32301>], null).remove();
alloy_smelter.findRecipe(16, [<gregtech:meta_item_1:10018> * 2, <gregtech:meta_item_1:32301>], null).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:2>], [<liquid:distilled_water> * 35]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:2>], [<liquid:water> * 47]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:2>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:8>], [<liquid:distilled_water> * 35]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:8>], [<liquid:water> * 47]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:8>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:1>], [<liquid:distilled_water> * 35]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:1>], [<liquid:water> * 47]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_1:1>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_2:12>], [<liquid:distilled_water> * 35]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_2:12>], [<liquid:water> * 47]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_2:12>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_49:4>], [<liquid:distilled_water> * 55]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_49:4>], [<liquid:water> * 73]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_49:4>], [<liquid:lubricant> * 18]).remove();
cutting_saw.findRecipe(30, [<minecraft:iron_block>], [<liquid:distilled_water> * 31]).remove();
cutting_saw.findRecipe(30, [<minecraft:iron_block>], [<liquid:water> * 42]).remove();
cutting_saw.findRecipe(30, [<minecraft:iron_block>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_5:15>], [<liquid:distilled_water> * 42]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_5:15>], [<liquid:water> * 57]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_5:15>], [<liquid:lubricant> * 14]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_11:8>], [<liquid:distilled_water> * 35]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_11:8>], [<liquid:water> * 47]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_11:8>], [<liquid:lubricant> * 11]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:7>], [<liquid:distilled_water> * 66]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:7>], [<liquid:water> * 88]).remove();
cutting_saw.findRecipe(30, [<gregtech:meta_block_compressed_4:7>], [<liquid:lubricant> * 22]).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10044>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10788>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10017>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10072>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10788>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<minecraft:iron_ingot>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10095>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10071>, <gregtech:meta_item_1:32350>], null).remove();
extruder.findRecipe(64, [<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:32350>], null).remove();
electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2108> * 6], null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11963>], null).remove();
macerator.findRecipe(12, [<gregtech:meta_item_1:7051>], null).remove();
forgeHammer.findRecipe(8, [<gregtech:meta_item_1:7051>], null).remove();
centrifuge.findRecipe(24, [<gregtech:meta_item_1:3051>], null).remove();
centrifuge.findRecipe(5, [<gregtech:meta_item_1:4051>], null).remove();
electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2108> * 6], null).remove();
ebf.findRecipe(480, [<gregtech:meta_item_1:2038> * 2],[<liquid:titanium_tetrachloride> * 1000]).remove();
mixer.findRecipe(30, [<gregtech:meta_item_1:2044> * 4,<gregtech:meta_item_1:2016>], null).remove();
assembler.findRecipe(16, [<gregtech:frame_steel>, <gregtech:meta_item_1:12184> * 6, <gregtech:meta_item_1:32766>.withTag({Configuration: 30})], null).remove();
chemReactor.findRecipe(30, [<gregtech:meta_item_1:19112>* 8,<gregtech:meta_item_2:32444>], [<liquid:sodium_persulfate> * 1000]).remove();
chemReactor.findRecipe(256, null, [<liquid:hydrofluoric_acid> * 4000,<liquid:chloroform> * 2000]).remove();
chemReactor.findRecipe(10, [<gregtech:meta_item_1:12142>,<gregtech:meta_item_1:19018>], [<liquid:sulfuric_acid> * 125]).remove();
assembler.findRecipe(16, [<gregtech:meta_item_1:12001> * 6, <gregtech:frame_aluminium>, <gregtech:meta_item_1:32766>.withTag({Configuration: 30})], null).remove();
mixer.findRecipe(8, [<gregtech:meta_item_1:2009>,<gregtech:meta_item_1:2209> * 7], null).remove();
mixer.findRecipe(8, [<gregtech:meta_item_1:1009>,<gregtech:meta_item_1:1209> * 7], null).remove();

furnace.addRecipe(<gregtech:meta_item_2:32015>, <contenttweaker:unfiredfireclaybrick>);
furnace.remove(<gregtech:meta_item_2:32015>);
furnace.remove(<gregtech:meta_item_1:1900>);
furnace.remove(<gregtech:meta_item_1:10051>);
furnace.remove(<gregtech:meta_item_1:2900>);
furnace.remove(<gregtech:meta_item_1:10522>);
furnace.remove(<gregtech:meta_item_1:10521>);
furnace.remove(<gregtech:meta_item_1:10520>);
furnace.remove(<gregtech:meta_item_1:10530>);
furnace.remove(<gregtech:meta_item_1:10531>);
furnace.remove(<gregtech:meta_item_1:10541>);
furnace.remove(<gregtech:meta_item_1:10529>);
furnace.remove(<gregtech:meta_item_1:10544>);
furnace.remove(<gregtech:meta_item_1:10550>);
furnace.remove(<gregtech:meta_item_1:10552>);
furnace.addRecipe(<gregtech:meta_item_1:10061>,<ore:oreSilicon>);
furnace.remove(<gregtech:meta_item_1:9552>);
furnace.remove(<gregtech:meta_item_1:2554>);
furnace.remove(<gregtech:meta_item_1:9554>);
furnace.remove(<gregtech:meta_item_1:10554>);
furnace.remove(<gregtech:meta_item_1:9535>);
furnace.remove(<gregtech:meta_item_1:10535>);
furnace.remove(<gregtech:meta_item_1:9550>);
furnace.remove(<gregtech:meta_item_1:10069>);

recipes.addShaped(<gregtech:meta_item_1:14297>, [	[<ore:ingotIronMagnetic>, <gregtech:meta_tool:9>, null], 	[null, null, null], 	[null, null, null]]);
recipes.addShaped(<gregtech:machine_casing:9>, [	[<ore:plateUltimate>, <ore:plateUltimate>, <ore:plateUltimate>], 	[<ore:plateUltimate>, <gregtech:meta_tool:8>, <ore:plateUltimate>], 	[<ore:plateUltimate>, <ore:plateUltimate>, <ore:plateUltimate>]]);
recipes.addShaped(<gtadditions:ga_machine_casing:4>, [	[<ore:plateCosmicNeutronium>, <ore:plateCosmicNeutronium>, <ore:plateCosmicNeutronium>], 	[<ore:plateCosmicNeutronium>, <gregtech:meta_tool:8>, <ore:plateCosmicNeutronium>], 	[<ore:plateCosmicNeutronium>, <ore:plateCosmicNeutronium>, <ore:plateCosmicNeutronium>]]);
recipes.addShaped(<gregtech:machine:4029>, [	[null, null, null], 	[null, <gregtech:machine:3243>, <ore:wireGtHexNeutronium>], 	[null, null, null]]);
recipes.addShaped(<gregtech:meta_item_1:32730>, [	[<ore:plateIron>, <ore:plateBronze>, <ore:plateIron>], 	[<ore:ingotWroughtIron>, <ore:plateBronze>, <ore:ingotWroughtIron>], 	[<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>]]);
recipes.addShaped(<gregtech:meta_item_2:19196>, [	[null , null, null], 	[<ore:stickWood>, <contenttweaker:stoneknife>.transformDamage(0), null], 	[null, <ore:stickWood>, null]]);
recipes.addShaped(<gregtech:meta_item_1:2095>*2, [	[<contenttweaker:bronzeblend>, <contenttweaker:bronzeblend>, <gregtech:meta_item_1:2033>], 	[<contenttweaker:hammer>.transformDamage(0), null, null], 	[null, null, null]]);
recipes.addShaped(<gregtech:meta_item_1:12196> * 2, [	[<ore:plankWood>, <ore:dustWood>, <ore:plankWood>], 	[<ore:paper>, <ore:dustWood>, <ore:paper>], 	[<ore:plankWood>, <ore:dustWood>, <ore:plankWood>]]);
recipes.addShaped(<gregtech:meta_item_2:32443>*4, [	[<ore:paper>, <ore:dustBedrock>, <gregtech:meta_item_1:32627>], 	[<ore:plankWood>, <gregtech:meta_item_2:16033>, <ore:plankWood>], 	[<gregtech:meta_item_1:32627>, <ore:dustBedrock>, <ore:paper>]]);
recipes.addShaped(<gregtech:meta_item_2:32014>, [	[null, null], 	[<ore:dustFireclay>, <ore:dustFireclay>],]);
recipes.addShaped(<gregtech:meta_item_2:32454>, [	[null, <ore:paneGlassColorless>, null], 	[<ore:paneGlassColorless>, <ore:blockGlassColorless>, <ore:paneGlassColorless>], 	[null, <ore:paneGlassColorless>, null]]);
recipes.addShaped(<gregtech:meta_item_2:32455>, [	[<ore:wireFineCopper>, <ore:paper>, <ore:wireFineCopper>], 	[<ore:wireGtSingleCopper>, <ore:dustCoal>, <ore:wireGtSingleCopper>], 	[null, <ore:paper>, null]]);
recipes.addShaped(<gregtech:machine:510>, [	[<contenttweaker:electricalsteelplate>, <ore:circuitBasic>, <contenttweaker:electricalsteelplate>], 	[<ore:stickIron>, <gregtech:metal_casing:1>, <ore:stickIron>], 	[<ore:screwIron>, <ore:stickIron>, <ore:screwIron>]]);
recipes.addShaped(<gregtech:metal_casing:1>*2, [	[null, <gregtech:meta_item_2:32015>, null], 	[<gregtech:meta_item_2:32015>, <contenttweaker:electricalsteelplate>, <gregtech:meta_item_2:32015>], 	[null, <gregtech:meta_item_2:32015>, null]]);
recipes.addShaped(<gregtech:machine:70>, [	[<ore:circuitBasic>, <thermalexpansion:machine:3>, <ore:circuitBasic>], 	[<ore:wireGtSingleSilver>, <gregtech:machine:501>, <ore:wireGtSingleSilver>], 	[<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>]]);
recipes.addShaped(<gregtech:frame_invar>, [	[<ore:plateInvar>, <ore:ringInvar>, <ore:plateInvar>], 	[<ore:plateCurvedInvar>, <ore:stickInvar>, <ore:plateCurvedInvar>], 	[<ore:foilInvar>, <ore:stickInvar>, <ore:foilInvar>]]);
recipes.addShaped(<gregtech:meta_item_1:9297>, [	[<ore:nuggetIron>,<ore:dustRegularRedstone>], 	[null, null]]);
recipes.addShaped(<gregtech:machine:420>, [	[<ore:circuitBasic>, <gregtech:meta_item_1:32640>, <ore:circuitBasic>], 	[<ore:plateIronMagnetic>, <gregtech:machine:501>, <ore:plateIronMagnetic>], 	[<contenttweaker:electricalsteelplate>, <ore:frameGtIron>, <contenttweaker:electricalsteelplate>]]);
recipes.addShaped(<gregtech:machine:190>, [	[<gregtech:meta_item_1:32640>, <ore:rotorBronze>, <gregtech:meta_item_1:32640>], 	[<ore:ringIron>, <gregtech:machine:501>, <ore:ringIron>], 	[<ore:circuitBasic>, <gregtech:meta_item_1:32600>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:240>, [	[<ore:wireFineWroughtIron>, <gtadditions:ga_transparent_casing>, <ore:wireFineWroughtIron>], 	[<gregtech:cable:26>, <gregtech:machine:501>, <gregtech:cable:26>], 	[<contenttweaker:electricalsteelgear>, <ore:circuitBasic>, <contenttweaker:electricalsteelgear>]]);
recipes.addShaped(<gregtech:machine:370>, [	[<contenttweaker:advancedalloygear>, <ore:rotorTin>, <contenttweaker:advancedalloygear>], 	[<gtadditions:ga_transparent_casing>, <gregtech:machine:501>, <gtadditions:ga_transparent_casing>], 	[<ore:wireFineWroughtIron>, <gregtech:meta_item_1:32600>, <ore:wireFineWroughtIron>]]);
recipes.addShaped(<gregtech:machine:320>, [	[<gregtech:meta_item_1:32610>, <gtadditions:ga_transparent_casing>, <gregtech:meta_item_1:32610>], 	[<ore:wireGtSingleCobalt>, <gregtech:machine:501>, <ore:wireGtSingleCobalt>], 	[<ore:circuitBasic>, <ironchest:iron_chest:6>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:300>, [	[<gtadditions:ga_transparent_casing>, <ore:circuitBasic>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32640>], 	[<contenttweaker:silversteelgear>, <ore:circuitBasic>, <contenttweaker:silversteelgear>]]);
recipes.addShaped(<gregtech:machine:210>, [	[<contenttweaker:electricalsteelgear>, <ore:circuitBasic>, <contenttweaker:electricalsteelgear>], 	[<gregtech:meta_item_1:32640>, <gregtech:machine:501>, <gregtech:meta_item_1:32640>], 	[<ore:cableGtSingleTin>, <ore:circuitBasic>, <ore:cableGtSingleTin>]]);
recipes.addShaped(<gregtech:machine:812>, [	[<ore:plateBronze>,null, <ore:plateBronze>], 	[<ore:plateBronze>, <gregtech:machine:811>, <ore:plateBronze>], 	[<ore:plateBronze>, null, <ore:plateBronze>]]);
recipes.addShaped(<gregtech:machine:527>, [	[<gregtech:metal_casing:8>, <gregtech:meta_item_2:32433>, <gregtech:metal_casing:8>], 	[<gregtech:meta_item_2:32433>, <gregtech:machine:812>, <gregtech:meta_item_2:32433>], 	[<gregtech:metal_casing:8>, <gregtech:meta_item_2:32433>, <gregtech:metal_casing:8>]]);
recipes.addShaped(<gregtech:machine:526>, [	[<gregtech:meta_item_2:32433>, <gregtech:metal_casing:8>, <gregtech:meta_item_2:32433>], 	[<gregtech:metal_casing:8>, <ore:frameGtIron>, <gregtech:metal_casing:8>], 	[<gregtech:meta_item_2:32433>, <gregtech:metal_casing:8>, <gregtech:meta_item_2:32433>]]);
recipes.addShaped(<gregtech:machine:100>, [[<gregtech:meta_item_1:32650>, <ore:circuitBasic>, <gregtech:meta_item_1:32650>], [<gregtech:meta_item_1:32630>, <gregtech:machine:501>, <gregtech:meta_item_1:32630>], [<ore:platePigIron>, <ore:circuitBasic>, <ore:platePigIron>]]);
recipes.addShaped(<gregtech:machine:2534>, [[<ore:circuitBasic>, <thermalexpansion:machine:3>, <ore:circuitBasic>], [<gregtech:metal_casing:2>, <ore:wireGtHexZinc>, <gregtech:metal_casing:2>], [<ore:circuitBasic>, <gregtech:metal_casing:2>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:meta_item_1:32680>, [[<ore:stickBrass>, <ore:stickBrass>, <ore:circuitBasic>], [<ore:plateCurvedCupronickel>, <contenttweaker:luminated_quartzite>, <ore:stickBrass>], [<ore:circuitBasic>, <ore:plateCurvedCupronickel>, <ore:stickBrass>]]);
recipes.addShaped(<gregtech:machine:430>, [[<gregtech:meta_item_1:32640>, <contenttweaker:lasermodule>, <gregtech:meta_item_1:32640>], [<ore:plateAnnealedCopper>, <gregtech:machine:501>, <ore:plateAnnealedCopper>], [<ore:circuitBasic>, <gregtech:meta_item_1:32680>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:meta_item_1:32721>, [[<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:gearCobaltBrass>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>]]);
recipes.addShaped(<gregtech:machine:60>, [[<gregtech:meta_item_1:32640>, <ore:dustDiamond>, <gregtech:meta_item_1:32640>], [<gregtech:meta_item_1:32600>, <gregtech:machine:501>, <gregtech:meta_item_1:32600>], [<ore:circuitBasic>, <ore:gearDiamond>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:230>, [[<gtadditions:ga_transparent_casing>, <contenttweaker:blazingrod>, <gtadditions:ga_transparent_casing>], [<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], [<ore:plateSiliconRubber>, <gregtech:meta_item_1:32610>, <ore:plateSiliconRubber>]]);
recipes.addShaped(<gregtech:machine:101>, [[<gregtech:meta_item_1:32651>, <ore:circuitGood>, <gregtech:meta_item_1:32651>], [<gregtech:meta_item_1:32631>, <gregtech:machine:502>, <gregtech:meta_item_1:32631>], [<ore:cableGtQuadrupleLead>, <ore:circuitGood>, <ore:cableGtQuadrupleLead>]]);
recipes.addShaped(<gregtech:machine:813>, [[<ore:plateSteel>, <contenttweaker:bulatsteelplate>, <ore:plateSteel>], [<ore:plateSteel>, <gregtech:machine:812>, <ore:plateSteel>], [<ore:plateSteel>, <contenttweaker:bulatsteelplate>, <ore:plateSteel>]]);
recipes.addShaped(<gregtech:machine:130>, [[<contenttweaker:blazingrod>, <gregtech:machine:813>, <contenttweaker:blazingrod>], [<ore:cableGtHexCobalt>, <gregtech:machine:501>, <ore:cableGtHexCobalt>], [<ore:circuitBasic>, <gregtech:meta_item_1:32611>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:180>, [[<gregtech:meta_item_1:32630>, <ore:blockGlassHardened>, <ore:wireGtOctalSolderingAlloy>], [<gregtech:meta_item_1:32610>, <ore:blockGlassHardened>, <gregtech:meta_item_1:32630>], [<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:181>, [[<gregtech:meta_item_1:32631>, <ore:blockGlassHardened>, <ore:wireGtOctalCupronickel>], [<gregtech:meta_item_1:32611>, <ore:blockGlassHardened>, <gregtech:meta_item_1:32631>], [<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:211>, [[<ore:gearEpoxid>, <ore:circuitGood>, <ore:gearEpoxid>], [<gregtech:meta_item_1:32641>, <gregtech:machine:502>, <gregtech:meta_item_1:32641>], [<ore:wireGtQuadrupleCupronickel>, <ore:circuitGood>, <ore:wireGtQuadrupleCupronickel>]]);
recipes.addShaped(<gregtech:machine:814>, [[<ore:plateDenseStainlessSteel>, <ore:gearStainlessSteel>, <ore:plateDenseStainlessSteel>], [<ore:gearStainlessSteel>, <gregtech:machine:813>, <ore:gearStainlessSteel>], [<ore:plateDenseStainlessSteel>, <ore:gearStainlessSteel>, <ore:plateDenseStainlessSteel>]]);
recipes.addShaped(<gregtech:meta_item_1:32682>, [[<ore:stickChrome>, <ore:stickChrome>, <ore:circuitAdvanced>], [<ore:cableGtSingleGold>, <ore:gemFlawedEmerald>, <ore:stickChrome>], [<ore:circuitAdvanced>, <ore:cableGtSingleGold>, <ore:stickChrome>]]);
recipes.addShaped(<gregtech:machine:432>, [[<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:32682>, <gregtech:meta_item_1:32642>], [<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], [<ore:plateStyreneButadieneRubber>, <ore:circuitAdvanced>, <ore:plateStyreneButadieneRubber>]]);
recipes.addShaped(<gregtech:machine:2221>, [[<ore:ingotCupronickel>, <gregtech:meta_item_1:32690>, <ore:ingotCupronickel>], [<gregtech:meta_item_1:32640>, <ore:craftingGrinder>, <gregtech:meta_item_1:32640>], [<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:2536>, [[<gregtech:meta_item_1:12184>, <gregtech:machine:212>, <gregtech:meta_item_1:12184>], [<ore:circuitExtreme>, <gregtech:metal_casing:4>, <ore:circuitExtreme>], [<ore:cableGtQuadrupleGold>, <ore:circuitExtreme>, <ore:cableGtQuadrupleGold>]]);
recipes.addShaped(<gregtech:frame_wood> * 2, [[<ore:logWood>, <contenttweaker:woodgear>, <ore:logWood>], [<contenttweaker:woodgear>, <minecraft:iron_nugget>, <contenttweaker:woodgear>], [<ore:logWood>, <contenttweaker:woodgear>, <ore:logWood>]]);
recipes.addShaped(<gregtech:machine:811>, [[<ore:plankWood>, <ore:blockGlassColorless>, <ore:plankWood>], [<ore:blockGlassColorless>, <contenttweaker:woodgear>, <ore:blockGlassColorless>], [<ore:plankWood>, <ore:blockGlassColorless>, <ore:plankWood>]]);
recipes.addShaped(<gregtech:metal_casing_tungsten_titanium_carbide>, [	[<ore:plateDenseTungstenTitaniumCarbide>, <ore:plateTungstenTitaniumCarbide>, <ore:plateDenseTungstenTitaniumCarbide>], 	[<ore:plateTungstenTitaniumCarbide>, <ore:frameGtTungstenTitaniumCarbide>, <ore:plateTungstenTitaniumCarbide>], 	[<ore:plateDenseTungstenTitaniumCarbide>, <ore:plateTungstenTitaniumCarbide>, <ore:plateDenseTungstenTitaniumCarbide>]]);
recipes.addShaped(<gregtech:machine:191>, [	[<gregtech:meta_item_1:32641>, <ore:rotorTumbaga>, <gregtech:meta_item_1:32641>], 	[<contenttweaker:bronzeelectrontube>, <gregtech:machine:502>, <contenttweaker:bronzeelectrontube>], 	[<ore:circuitGood>, <gregtech:meta_item_1:32601>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:2535>, [	[<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>], 	[<ore:circuitExtreme>, <gregtech:metal_casing:3>, <ore:circuitExtreme>], 	[<ore:circuitExtreme>, <gregtech:machine:503>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:825>, [	[<ore:plateSteel>, <ore:ringSteel>, <ore:plateSteel>], 	[<ore:stickCopper>, <forestry:worktable>, <ore:stickCopper>], 	[<ore:plateCopper>, <ore:wireFineCopper>, <ore:plateCopper>]]);