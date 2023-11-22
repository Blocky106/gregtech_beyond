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

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:ethanol>*1000)
    .inputs(<gregtech:meta_item_1:2054>*3)
    .outputs(<gregtech:meta_item_1:2526>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:ethanol>*1000)
    .inputs(<gregtech:meta_item_1:2054>*3)
    .outputs(<gregtech:meta_item_1:2526>)
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


ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2858>)
    .outputs(<gregtech:meta_item_1:11858>)
    .duration(200)
    .EUt(800)
    .property("temperature", 5000)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<thermalfoundation:material:165>], [], false);
Utils.removeRecipeByOutput(lcr, [<thermalfoundation:material:165>], [], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:11858>], [], false);

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

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32011>)
    .chancedOutput(<gregtech:meta_item_1:3822>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:3075>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:3076>, 3333, 0)
    .EUt(288)
    .duration(600)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32011>)
    .chancedOutput(<gregtech:meta_item_1:3822>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:3075>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:3076>, 3333, 0)
    .EUt(288)
    .duration(600)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:used_froth_flotation_fluid>*200)
    .fluidOutputs(<liquid:froth_flotation_fluid>*100,<liquid:dirtywater>*100)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:used_froth_flotation_fluid>*200)
    .fluidOutputs(<liquid:froth_flotation_fluid>*100,<liquid:dirtywater>*100)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32134>)
    .chancedOutput(<gregtech:meta_item_1:2203>,8000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,4000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,2000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,1000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,500 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,250 , 0)
    .EUt(80)
    .duration(280)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32135>)
    .chancedOutput(<gtadditions:ga_dust:32136>,8000 , 0)
    .chancedOutput(<gtadditions:ga_dust:32136>,4000 , 0)
    .chancedOutput(<gtadditions:ga_dust:32136>,2000 , 0)
    .chancedOutput(<gtadditions:ga_dust:32136>,1000 , 0)
    .chancedOutput(<gtadditions:ga_dust:32136>,500 , 0)
    .chancedOutput(<gtadditions:ga_dust:32136>,250 , 0)
    .EUt(80)
    .duration(280)
    .buildAndRegister();


sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32133>)
    .chancedOutput(<gregtech:meta_item_1:2203>,8000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,4000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,2000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2131>,1000 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,500 , 0)
    .chancedOutput(<gregtech:meta_item_1:2203>,250 , 0)
    .EUt(80)
    .duration(280)
    .buildAndRegister();

furnace.remove(<projectred-core:resource_item:300>);

ebf.recipeBuilder()
    .inputs(<projectred-core:resource_item:250>)
    .outputs(<projectred-core:resource_item:300>)
    .duration(20)
    .EUt(80)
    .property("temperature", 900)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<projectred-core:resource_item:300>)
    .fluidInputs(<liquid:water>*20)
    .outputs(<projectred-core:resource_item:301>*16)
    .duration(400)
    .EUt(12)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<projectred-core:resource_item:300>)
    .fluidInputs(<liquid:distilled_water>*12)
    .outputs(<projectred-core:resource_item:301>*16)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<projectred-core:resource_item:300>)
    .fluidInputs(<liquid:lubricant>*12)
    .outputs(<projectred-core:resource_item:301>*16)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-core:resource_item:301>,<minecraft:redstone>*8)
    .outputs(<projectred-core:resource_item:310>)
    .duration(40)
    .EUt(30)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-core:resource_item:301>,<minecraft:glowstone_dust>*8)
    .outputs(<projectred-core:resource_item:311>)
    .duration(40)
    .EUt(30)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-core:resource_item:301>,<projectred-core:resource_item:105>*8)
    .outputs(<projectred-core:resource_item:312>)
    .duration(40)
    .EUt(30)
    .buildAndRegister();


recipes.remove(<projectred-core:resource_item:310>);
recipes.remove(<projectred-core:resource_item:312>);
recipes.remove(<projectred-core:resource_item:311>);


Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:11127>], [], false);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2127>)
    .outputs(<gregtech:meta_item_1:11127>)
    .EUt(300)
    .duration(80)
    .property("temperature", 1800)
    .buildAndRegister();


electrolyzer.findRecipe(1920,[<gregtech:meta_item_1:2615>*12],null).remove();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1200)
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2010>*2)
    .fluidOutputs(<liquid:hydrofluoric_acid>*2000)
    .outputs(<gtadditions:ga_dust:32137>)
    .EUt(3280)
    .duration(580)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1200)
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2010>*2)
    .fluidOutputs(<liquid:hydrofluoric_acid>*2000)
    .outputs(<gtadditions:ga_dust:32137>)
    .EUt(3280)
    .duration(580)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_multiblock_casing:1>], [], false);

assembler.recipeBuilder()
    .fluidInputs(<liquid:polytetrafluoroethylene>*288)
    .inputs(<gregtech:metal_casing:4>)
    .outputs(<gtadditions:ga_multiblock_casing:1>)
    .duration(40)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 30}))
    .EUt(240)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:moltennichromerichblend>*144)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<gregtech:meta_item_1:10133>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:moltennichromerichblend>*144)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<gregtech:meta_item_1:12133>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

ebf.findRecipe(480,[<gregtech:meta_item_1:10044>*4,<gregtech:meta_item_1:10016>],null).remove();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2044>*4,<gregtech:meta_item_1:10016>)
    .outputs(<gregtech:meta_item_1:2110>)
    .fluidOutputs(<liquid:moltennichromerichblend>*720)
    .property("temperature", 2700)
    .EUt(480)
    .duration(100)
    .buildAndRegister();

ebf.recipeBuilder() 
    .inputs(<gtadditions:ga_dust:32005>)
    .outputs(<gregtech:meta_item_1:2110>)
    .fluidOutputs(<liquid:moltennichromerichblend>*144)
    .property("temperature", 2700)
    .duration(200)
    .EUt(220)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32019>)
    .fluidOutputs(<liquid:chlorine>*4000)
    .outputs(<gregtech:meta_item_1:2072>)
    .duration(200)
    .EUt(520)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2900>)
    .outputs(<gregtech:meta_item_1:9051>)
    .duration(400)
    .EUt(1200)
    .property("temperature", 2600)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10071>,<contenttweaker:silveralloyingot>)
    .outputs(<nuclearcraft:alloy:8>)
    .duration(400)
    .EUt(24)
    .property("temperature", 800)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:bedrock_contaminated_oil>*1000)
    .fluidOutputs(<liquid:oil_heavy>*400)
    .outputs(<gtadditions:ga_dust:32138>)
    .chancedOutput(<gregtech:meta_item_1:2242>, 500, 0)
    .chancedOutput(<gregtech:meta_item_1:2266>, 500, 0)
    .chancedOutput(<enderio:item_material:20>, 2000, 120)
    .EUt(800)
    .duration(802)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:bedrock_contaminated_oil>*1000)
    .fluidOutputs(<liquid:oil_heavy>*400)
    .outputs(<gtadditions:ga_dust:32138>)
    .chancedOutput(<gregtech:meta_item_1:2242>, 500, 0)
    .chancedOutput(<gregtech:meta_item_1:2266>, 500, 0)
    .chancedOutput(<enderio:item_material:20>, 2000, 120)
    .EUt(800)
    .duration(802)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32138>)
    .fluidOutputs(<liquid:phosphoric_acid>*1000)
    .fluidInputs(<liquid:phosphorus_pentoxide>*1000)
    .outputs(<gtadditions:ga_dust:32139>)
    .EUt(2000)
    .duration(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:tributylamine>*1000,<liquid:hydrofluoric_acid>*1000)
    .fluidOutputs(<liquid:perfluorotributylamine>*2000)
    .duration(200)
    .EUt(12800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:tributylamine>*1000,<liquid:hydrofluoric_acid>*1000)
    .fluidOutputs(<liquid:perfluorotributylamine>*2000)
    .duration(200)
    .EUt(12800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:purified_bedrock_slurry>*1000)
    .outputs(<gtadditions:ga_dust:32140>,<gregtech:meta_item_1:2324>*2,<gregtech:meta_item_1:2111>)
    .fluidOutputs(<liquid:adamantane_rich_oil_solution>*400)
    .duration(2000)
    .EUt(20)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:adamantane_rich_oil_solution>*1000)
    .fluidOutputs(<liquid:adamantane>*400,<liquid:perfluorotributylamine>*90,<liquid:iodized_oil>*510)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:butane>*1000,<liquid:oxygen>*1000)
    .notConsumable(<gregtech:meta_item_1:12718>)
    .fluidOutputs(<liquid:adamantane>*1000,<liquid:water>*1000)
    .duration(289)
    .EUt(80000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:cyclopentadiene>*1000,<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:12049>)
    .fluidOutputs(<liquid:tetra_hydro_dicyclopentadiene>*1000)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:butane>*1000,<liquid:oxygen>*1000)
    .notConsumable(<gregtech:meta_item_1:12718>)
    .fluidOutputs(<liquid:adamantane>*1000,<liquid:water>*1000)
    .duration(289)
    .EUt(80000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:cyclopentadiene>*1000,<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:12049>)
    .fluidOutputs(<liquid:tetra_hydro_dicyclopentadiene>*1000)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:tetra_hydro_dicyclopentadiene>*1000)
    .notConsumable(<liquid:fluoroantimonic_acid>)
    .fluidOutputs(<liquid:adamantane>*1000)
    .duration(200)
    .EUt(90000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:isooctane>*1000,<liquid:adamantane>*1000)
    .fluidOutputs(<liquid:alkylated_adamantanes>*2000)
    .notConsumable(<gtadditions:ga_dust:79>)
    .duration(800)
    .EUt(120000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:isooctane>*1000,<liquid:adamantane>*1000)
    .fluidOutputs(<liquid:alkylated_adamantanes>*2000)
    .notConsumable(<gtadditions:ga_dust:79>)
    .duration(800)
    .EUt(120000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:alkylated_adamantanes>*1000)
    .fluidOutputs(<liquid:adamantane_lubricant>*500,<liquid:ethanol>*500)
    .duration(500)
    .EUt(80000)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .fluidInputs(<liquid:fluorodarmstadtic_acid>*1000,<liquid:antimony_pentafluoride>*1000,<liquid:fluorine>*1000,<liquid:water>*2000)
    .inputs(<gtadditions:ga_dust:86>)
    .outputs(<gtadditions:ga_dust:32142>)
    .duration(6000)
    .EUt(2800)
    .buildAndRegister();

#lcr.recipeBuilder()
#    .fluidInputs()
#    .inputs(<extendedcrafting:material:49>)
#    .outputs(<contenttweaker:refabricateddraconiumore>)
#    .duration()
#    .EUt()
#    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:liquid_ozone>*1000)
    .inputs(<gtadditions:ga_dust:32140>)
    .outputs(<gtadditions:ga_dust:32141>)
    .duration(350)
    .EUt(2000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .fluidInputs(<liquid:ozone>*1000)
    .fluidOutputs(<liquid:liquid_ozone>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32141>*2)
    .fluidInputs(<liquid:aqua_regia>*1000)
    .fluidOutputs(<liquid:trinium_solution>*1000)
    .outputs(<gtadditions:ga_dust:32144>*2,<gtadditions:ga_dust:32145>*2,<gtadditions:ga_dust:32143>)
    .duration(200)
    .EUt(7800)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32143>)
    .fluidOutputs(<liquid:adamantium_pentoxide>*1000)
    .duration(200)
    .EUt(18000)
    .buildAndRegister();

fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:adamantium_pentoxide>*12,<liquid:oxygen>*12)
    .fluidOutputs(<liquid:adamantium_phosphorus_hydrogen.plasma>*12)
    .EUt(20000)
    .duration(120)
    .property("eu_to_start", 320000000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2063>)
    .fluidInputs(<liquid:enriched_naquadah_nitrate>*1000)
    .outputs(<gtadditions:ga_dust:4>*3,<gregtech:meta_item_1:2865>)
    .duration(200)
    .EUt(12090)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2063>)
    .fluidInputs(<liquid:naquadria_nitrate>*1000)
    .outputs(<gtadditions:ga_dust:5>*3,<gregtech:meta_item_1:2865>)
    .duration(200)
    .EUt(12090)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:trinium_solution>*1000,<liquid:hydrogen_sulfide>*1000)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000)
    .outputs(<gtadditions:ga_dust:32146>*2)
    .EUt(200)
    .duration(900)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:trinium_solution>*1000,<liquid:hydrogen_sulfide>*1000)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000)
    .outputs(<gtadditions:ga_dust:32146>*2)
    .EUt(200)
    .duration(900)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .fluidInputs(<liquid:adamantium_phosphorus_hydrogen.plasma>*2000)
    .fluidOutputs(<liquid:gaseous_adamantium>*800,<liquid:hydrogen>*400,<liquid:molten_adamantium_dioxide>*400)
    .outputs(<gtadditions:ga_dust:32143>*2,<gregtech:meta_item_1:2050>)
    .duration(200)
    .EUt(12000)
    .buildAndRegister();

chemical_plant.recipeBuilder()  
    .fluidInputs(<liquid:adamantium_pentoxide>*1000,<liquid:gaseous_adamantium>*400)
    .notConsumable(<qmd:part:10>)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .inputs(<gregtech:meta_item_1:2074>*2)
    .outputs(<gregtech:meta_item_1:2750>*6,<gregtech:meta_item_1:2718>*2)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

extruder.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2688>)
    .notConsumable(<gregtech:meta_item_1:32351>)
    .outputs(<qmd:part:5>*2)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:liquid_ozone>*1000)
    .inputs(<gregtech:meta_item_1:2718>)
    .outputs(<gtadditions:ga_dust:32143>*2)
    .duration(400)
    .EUt(24000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32144>)
    .fluidOutputs(<liquid:enriched_naquadah_nitrate>*144)
    .duration(200)
    .EUt(12000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32145>)
    .fluidOutputs(<liquid:naquadria_nitrate>*144)
    .duration(200)
    .EUt(12000)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:basic_structural_casing>, [	[<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>], 	[<ore:plateSteel>, <ore:plateNickel>, <ore:plateSteel>], 	[<ore:screwSteel>, <ore:plateSteel>, <ore:screwSteel>]]);


chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2196>*4)
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:furfural>*5000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2196>*4)
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:furfural>*5000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:naphtha>*1000)
    .notConsumable(<liquid:furfural>*100)
    .fluidOutputs(<liquid:btex>*1000)
    .EUt(20)
    .duration(8)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:naphtha>*1000)
    .notConsumable(<liquid:furfural>*100)
    .fluidOutputs(<liquid:btex>*1000)
    .EUt(20)
    .duration(8)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:btex>*2000)
    .fluidOutputs(<liquid:benzene>*300,<liquid:ethylbenzene>*200,<liquid:toluene>*500,<liquid:oxylene>*200,<liquid:mpxylene>*800)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*6000,<liquid:oxylene>*1000)
    .fluidOutputs(<liquid:steam>*3000)
    .outputs(<gregtech:meta_item_1:2926>*13)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*6000,<liquid:oxylene>*1000)
    .fluidOutputs(<liquid:steam>*3000)
    .outputs(<gregtech:meta_item_1:2926>*13)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:mpxylene>*4000)
    .fluidOutputs(<liquid:mxylene>*3000)
    .outputs(<gtadditions:ga_dust:32147>)
    .duration(800)
    .EUt(22)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32147>)
    .fluidOutputs(<liquid:pxylene>*1000)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:tetrabromethane>*100)
    .inputs(<gregtech:meta_item_1:2017>,<gregtech:meta_item_1:2039>)
    .outputs(<gtadditions:ga_dust:32148>)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:acetylene>*100,<liquid:bromine>*400)
    .fluidOutputs(<liquid:tetrabromethane>*500)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32148>)
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:mxylene>*1000)   
    .fluidOutputs(<liquid:diluted_acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32149>)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:phenol>*1000) 
    .inputs(<gtadditions:ga_dust:32149>)
    .fluidOutputs(<liquid:water>*2000,<liquid:diphenylisophtalate>*1000)
    .duration(800)
    .EUt(480)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:diluted_acetic_acid>*2000)
    .fluidOutputs(<liquid:water>*1000,<liquid:acetic_acid>*1000)
    .duration(20)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32148>)
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:pxylene>*1000)   
    .fluidOutputs(<liquid:diluted_acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32149>)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:isobutyl_alcohol>*1000)
    .outputs(<gtadditions:ga_dust:32157>)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_sulfide>*1000,<liquid:isobutyl_alcohol>*1000)
    .outputs(<gtadditions:ga_dust:32157>)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fusel_oil>*1000)
    .fluidOutputs(<liquid:water>*110,<liquid:npropanol>*10,<liquid:ehtanol_water_azeotrope>*100,<liquid:isoamyl_alcohol>*615,<liquid:nbutanol>*10,<liquid:isobutyl_alcohol>*155)   
    .duration(80)
    .EUt(72)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:propene>*50,<liquid:bromine>*50,<liquid:tripropylamine>*50)
    .fluidOutputs(<liquid:tetra_propyl_ammonium_bromide>*50)
    .duration(200)
    .EUt(290)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:propene>*50,<liquid:bromine>*50,<liquid:tripropylamine>*50)
    .fluidOutputs(<liquid:tetra_propyl_ammonium_bromide>*50)
    .duration(200)
    .EUt(290)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:npropanol>*150,<liquid:ammonia>*50)
    .fluidOutputs(<liquid:tripropylamine>*50,<liquid:water>*150)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:npropanol>*150,<liquid:ammonia>*50)
    .fluidOutputs(<liquid:tripropylamine>*50,<liquid:water>*150)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:tetra_propyl_ammonium_bromide>*100,<liquid:sulfuric_acid>*100)
    .inputs(<gtadditions:ga_dust:116>*51,<gregtech:meta_item_1:2373>,<gregtech:meta_item_1:2159>*6)
    .outputs(<gtadditions:ga_dust:32158>)
    .EUt(200)
    .duration(800)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12237>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret1>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12233>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret2>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:greensteelplate>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret3>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12527>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret4>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12237>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret1>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12233>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret2>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:greensteelplate>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret3>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12527>)
    .notConsumable(<contenttweaker:advancedcircuitmold>)
    .outputs(<contenttweaker:itemprocessorcoret4>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemical_bath, [<gtadditions:ga_dust:358>,<gtadditions:ga_dust:107>], [], false);
Utils.removeRecipeByOutput(chemical_bath, [<gtadditions:ga_dust:357>*3], [], false);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12044>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<contenttweaker:annealed_nickel_plate>)
    .property("temperature", 1700)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:annealed_nickel_plate>)
    .fluidInputs(<liquid:argon>*2000)
    .outputs(<contenttweaker:nickel_breeding_bed>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

recipes.remove(<gregtech:machine:2994>);
recipes.remove(<gregtech:machine:2995>);
recipes.remove(<gregtech:machine:2996>);
recipes.remove(<gregtech:machine:2997>);
recipes.remove(<gregtech:machine:2998>);
recipes.remove(<gregtech:machine:2999>);
recipes.remove(<gregtech:machine:2930>);
recipes.remove(<gregtech:machine:2931>);

recipes.addShaped(<gregtech:machine:2994>, [	[<ore:cableGtSingleTin>, <ore:plateSteel>, <ore:cableGtSingleTin>], 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:714>, <contenttweaker:cupronickelcoil>], 	[<ore:cableGtSingleTin>, <ore:plateSteel>, <ore:cableGtSingleTin>]]);