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

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2072>,<gregtech:meta_item_1:2032>)
    .outputs(<gregtech:meta_item_1:2593>*2)
    .duration(80)
    .EUt(90)
    .buildAndRegister();


furnace.remove(<gregtech:meta_item_1:10593>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2593>)
    .outputs(<gregtech:meta_item_1:10593>)
    .property("temperature", 2000)
    .duration(400)
    .EUt(180)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2009>)
    .fluidOutputs(<liquid:boron>*144)
    .duration(80)
    .EUt(18)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:boron>*144)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gregtech:meta_item_1:2009>)
    .duration(190)
    .EUt(20)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:tough>*144)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<nuclearcraft:alloy:1>)
    .duration(190)
    .EUt(20)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<nuclearcraft:alloy:1>)
    .fluidOutputs(<liquid:tough>*144)
    .duration(80)
    .EUt(18)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10537>);

recipes.addShaped(<gregtech:meta_item_2:32450>, [	[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>], 	[<ore:wireFineCopper>, <gregtech:meta_item_2:32454>, <ore:wireFineCopper>], 	[<ore:stickIron>, <ore:wireGtSingleRedAlloy>, <ore:stickIron>]]);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2001>)
    .fluidInputs(<liquid:oxygen>*1000)
    .property("temperature",1700)
    .outputs(<gregtech:meta_item_1:10001>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .duration(400)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:meta_item_2:32452> * 4, [[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>],[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>], [<gregtech:cable:71>, null, <gregtech:cable:71>]]);

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32452> * 2], [], false);

assembler.recipeBuilder()
.inputs([<ore:foilAluminium> * 4,<ore:platePlastic> * 1])
.outputs([<gregtech:meta_item_2:32452> * 12])
.duration(80)
.EUt(16)
.buildAndRegister();

//new electronic circuit recipe

Utils.removeRecipeByOutput(cas, [<gregtech:meta_item_2:32488>], [], false);
cas.recipeBuilder()
.inputs([<gregtech:meta_item_2:32455> * 8,<gregtech:meta_item_2:32452> * 4, <ore:wireFineCopper> * 4, <gtadditions:ga_meta_item:32030>])
.fluidInputs(<liquid:soldering_alloy> * 50)
.outputs([<gregtech:meta_item_2:32488> * 1])
.duration(100)
.EUt(16)
.buildAndRegister();

cas.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32241> * 2,<gtadditions:ga_meta_item:32242> * 2, <ore:wireFineCopper> * 4, <gtadditions:ga_meta_item:32030>])
.fluidInputs(<liquid:soldering_alloy> * 50)
.outputs([<gregtech:meta_item_2:32488> * 1])
.duration(100)
.EUt(16)
.buildAndRegister();

centrifuge.recipeBuilder()
.fluidInputs(<liquid:lava>*1000)
.notConsumable(<gregtech:meta_item_1:14184>)
.outputs(<contenttweaker:alumino_silicate_wool_sheet>)
.duration(200)
.EUt(40)
.buildAndRegister();

macerator.recipeBuilder()
.inputs(<contenttweaker:platinumsaltore>)
.outputs(<gregtech:meta_item_1:5537>*6)
.duration(400)
.EUt(480)
.buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:alumino_silicate_wool_sheet>)
    .outputs(<gregtech:meta_item_1:2961>*3)
    .duration(280)
    .EUt(12)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10788>);

macerator.recipeBuilder()
    .inputs(<contenttweaker:dense_ice>)
    .outputs(<gregtech:meta_item_1:2120>*8)
    .duration(200)
    .EUt(12)
    .buildAndRegister();





Utils.removeRecipeByOutput(fermenter, [], [<liquid:fermented_biomass>*100], false);


chemReactor.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:ethanol>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .outputs(<gregtech:meta_item_1:2595>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:ethanol>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .outputs(<gregtech:meta_item_1:2595>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

recipes.addShaped(<gregtech:meta_item_2:32461>*4, [	[<ore:plateSilicon>, <ore:plateSilicon>, <ore:plateSilicon>], 	[<ore:wireGtSingleTin>, <ore:wireGtSingleTin>, <ore:wireGtSingleTin>], 	[<ore:wireGtSingleTin>, <ore:wireGtSingleTin>, <ore:wireGtSingleTin>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>*4)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<minecraft:diamond_boots>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>*7)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<minecraft:diamond_leggings>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<minecraft:diamond_chestplate>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12111>*5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<minecraft:diamond_helmet>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*3000)
    .inputs(<gregtech:meta_item_1:2001>*2)
    .fluidOutputs(<liquid:triethylaluminium>*4000)
    .duration(300)
    .EUt(12)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1407>, [	[<gregtech:meta_item_1:32654>, <ore:cableGtSingleTungstenSteel>, <gregtech:meta_item_1:32654>], 	[<ore:circuitMaster>, <gregtech:machine:505>, <ore:circuitMaster>], 	[<gregtech:meta_item_1:32654>, <ore:cableGtSingleTungstenSteel>, <gregtech:meta_item_1:32654>]]);
recipes.addShaped(<gregtech:machine:1408>, [	[<gregtech:meta_item_1:32655>, <ore:cableGtSingleNaquadah>, <gregtech:meta_item_1:32655>], 	[<ore:circuitUltimate>, <gregtech:machine:506>, <ore:circuitUltimate>], [<gregtech:meta_item_1:32655>, <ore:cableGtSingleNaquadah>, <gregtech:meta_item_1:32655>]]);

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:sterilizedbiocatalystmedium>*12)
    .inputs(<gregtech:meta_item_2:32475>)
    .outputs(<contenttweaker:living_crystal_chip>)
    .duration(800)
    .EUt(2000000)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<contenttweaker:ultrabiomutatedcircuitboard>,<contenttweaker:living_crystal_chip>,<gregtech:meta_item_1:16002>)
    .fluidInputs(<liquid:soldering_alloy>*144)
    .outputs(<gtadditions:ga_meta_item:32213>*16)
    .duration(400)
    .EUt(120000)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<contenttweaker:living_bio_chip>,<gregtech:meta_item_2:16736>*4,<gtadditions:ga_meta_item:32426>*4)
    .fluidInputs(<liquid:soldering_alloy>*144)
    .outputs(<gregtech:meta_item_2:32498>)
    .duration(800)
    .EUt(2000000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:sterilizedbiocatalystmedium>*12)
    .inputs(<gtadditions:ga_meta_item:32411>)
    .outputs(<contenttweaker:living_bio_chip>)
    .duration(800)
    .EUt(2000000)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>)
    .notConsumable(<gregtech:meta_item_1:32766>)
    .outputs(<contenttweaker:steel_item_casing>*2)
    .duration(20)
    .EUt(33)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_bismuth_bronze>,<gregtech:meta_item_1:12230>*6)
    .outputs(<gregtech:metal_casing_bismuth_bronze>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .duration(40)
    .EUt(24)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_tungsten_titanium_carbide>,<gregtech:meta_item_1:12855>*6)
    .outputs(<gregtech:metal_casing_tungsten_titanium_carbide>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .duration(40)
    .EUt(24)
    .buildAndRegister();


cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:water>*200)
    .inputs(<forestry:crafting_material:3>)
    .outputs(<minecraft:string>*8)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*150)
    .inputs(<forestry:crafting_material:3>)
    .outputs(<minecraft:string>*8)
    .duration(60)
    .EUt(12)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:lubricant>*100)
    .inputs(<forestry:crafting_material:3>)
    .outputs(<minecraft:string>*8)
    .duration(40)
    .EUt(10)
    .buildAndRegister();


fluidExtractor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .inputs(<contenttweaker:paraffinwax>)
    .fluidOutputs(<liquid:resin>*1000)
    .duration(40)
    .EUt(28)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .inputs(<contenttweaker:paraffinwax>)
    .fluidOutputs(<liquid:lubricating_oil>*250)
    .duration(40)
    .EUt(28)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:lubricating_oil>*250)
    .inputs(<minecraft:redstone>)
    .fluidOutputs(<liquid:lubricant>*500)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:lubricating_oil>*250)
    .inputs(<gregtech:meta_item_1:2295>)
    .fluidOutputs(<liquid:lubricant>*500)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:lubricating_oil>*250)
    .inputs(<gregtech:meta_item_1:2294>)
    .fluidOutputs(<liquid:lubricant>*500)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:11585>], [], false);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2585>)
    .outputs(<gregtech:meta_item_1:11585>)
    .duration(200)
    .EUt(800)
    .property("temperature", 5000)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<thermalfoundation:material:165>], [], false);
Utils.removeRecipeByOutput(lcr, [<thermalfoundation:material:165>], [ ], false);


chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10227>)
    .fluidInputs(<liquid:redstone>*144)
    .outputs(<gregtech:meta_item_1:10539>)
    .duration(120)
    .EUt(200)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10227>)
    .fluidInputs(<liquid:redstone>*144)
    .outputs(<gregtech:meta_item_1:10539>)
    .duration(120)
    .EUt(200)
    .buildAndRegister();







































































































































































