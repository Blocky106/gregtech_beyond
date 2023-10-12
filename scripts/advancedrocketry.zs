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


recipes.remove(<advancedrocketry:rollingmachine>);
recipes.remove(<advancedrocketry:platepress>);
recipes.remove(<libvulpes:productingot:3>);
recipes.remove(<libvulpes:productingot:4>);
recipes.remove(<libvulpes:productingot:5>);
recipes.remove(<libvulpes:productingot:6>);
recipes.remove(<libvulpes:productingot:7>);
recipes.remove(<libvulpes:productingot:9>);
recipes.remove(<libvulpes:productingot:10>);
recipes.remove(<libvulpes:metal0:4>);
recipes.remove(<libvulpes:metal0:5>);
recipes.remove(<libvulpes:metal0:6>);
recipes.remove(<libvulpes:metal0:7>);
recipes.remove(<libvulpes:metal0:9>);
recipes.remove(<libvulpes:metal0:10>);
recipes.remove(<advancedrocketry:cuttingmachine>);
recipes.remove(<advancedrocketry:crystallizer>);
recipes.remove(<advancedrocketry:lathe>);
recipes.remove(<advancedrocketry:cuttingmachine>);
recipes.remove(<advancedrocketry:precisionassemblingmachine>);
recipes.remove(<advancedrocketry:chemicalreactor>);
recipes.remove(<advancedrocketry:electrolyser>);
recipes.remove(<advancedrocketry:precisionlaseretcher>);
recipes.remove(<advancedrocketry:centrifuge>);


recipes.addShaped(<libvulpes:structuremachine>, [	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>], 	[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>], 	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>]]);
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<advancedrocketry:pipesealer>, [	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>]]);
recipes.remove(<advancedrocketry:pipesealer>);

recipes.addShaped(<advancedrocketry:lens>, [	[null, <ore:paneGlassColorless>, null], 	[<ore:paneGlassColorless>, <ore:gemGlass>, <ore:paneGlassColorless>], 	[null, <ore:paneGlassColorless>, null]]);
recipes.addShaped(<advancedrocketry:satellitepowersource>, [	[null, null, null], [<gregtech:meta_item_1:32750>, <ore:wireGtSingleNickel>, <gregtech:meta_item_1:32750>], 	[null, null, null]]);
recipes.remove(<advancedrocketry:lens>);
recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.addShaped(<advancedrocketry:ic:1>, [	[<ore:plateGlowstone>, <ore:plateGold>, <ore:plateGlowstone>], 	[<ore:dustRegularRedstone>, <ore:circuitAdvanced>, <ore:dustRegularRedstone>], 	[<ore:plateGlowstone>, <ore:plateGold>, <ore:plateGlowstone>]]);
recipes.remove(<libvulpes:coil0:10>);

recipes.addShaped(<libvulpes:coil0:10>, [	[<ore:plateIridium>, <gregtech:meta_item_2:32435>, <ore:plateIridium>], 	[<gregtech:meta_item_2:32435>, null, <gregtech:meta_item_2:32435>], 	[<ore:plateIridium>, <gregtech:meta_item_2:32435>, <ore:plateIridium>]]);




cas.recipeBuilder()
    .inputs(<ore:circuitAdvanced>*4,<gregtech:meta_item_2:32480>*16,<gregtech:cable:112>*8,<gtadditions:ga_meta_item:32246>*12,<gtadditions:ga_meta_item:32244>*12,<gtadditions:ga_meta_item:32245>*12)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<advancedrocketry:ic:2>*4)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<ore:circuitGood>*4,<gtadditions:ga_meta_item:32207>*16,<gregtech:cable:1001>*8,<gregtech:meta_item_2:32458>*12,<gregtech:meta_item_2:32459>*12,<gregtech:meta_item_2:32460>*12)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<advancedrocketry:ic>*4)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:rocket_fuel>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:rocketfuel>*1000)
    .duration(50)
    .EUt(200)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidInputs(<liquid:rocket_fuel>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:rocketfuel>*1000)
    .duration(20)
    .EUt(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32440>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32441>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>*4)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32442>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>*16)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

#advanced rocktry oreDict removals
<ore:circuitAdvanced>.remove(<energycontrol:item_component>);
<ore:ingotAluminum>.remove(<libvulpes:productingot:9>);
<ore:dustIron>.remove(<libvulpes:productdust:1>);
<ore:dustGold>.remove(<libvulpes:productdust:2>);
<ore:dustSilicon>.remove(<libvulpes:productdust:3>);
<ore:dustCopper>.remove(<libvulpes:productdust:4>);
<ore:dustTin>.remove(<libvulpes:productdust:5>);
<ore:dustSteel>.remove(<libvulpes:productdust:6>);
<ore:dustTitanium>.remove(<libvulpes:productdust:7>);
<ore:dustAluminum>.remove(<libvulpes:productdust:9>);
<ore:dustIridium>.remove(<libvulpes:productdust:10>);
<ore:itemSilicon>.remove(<libvulpes:productingot:3>);
<ore:ingotSilicon>.remove(<libvulpes:productingot:3>);
<ore:ingotCopper>.remove(<libvulpes:productingot:4>);
<ore:ingotTin>.remove(<libvulpes:productingot:5>);
<ore:ingotSteel>.remove(<libvulpes:productingot:6>);
<ore:ingotTitanium>.remove(<libvulpes:productingot:7>);
<ore:ingotIridium>.remove(<libvulpes:productingot:10>);
<ore:bouleSilicon>.remove(<libvulpes:productboule:3>);
<ore:nuggetSilicon>.remove(<libvulpes:productnugget:3>);
<ore:nuggetCopper>.remove(<libvulpes:productnugget:4>);
<ore:nuggetTin>.remove(<libvulpes:productnugget:5>);
<ore:nuggetSteel>.remove(<libvulpes:productnugget:6>);
<ore:nuggetTitanium>.remove(<libvulpes:productnugget:7>);
<ore:nuggetAluminum>.remove(<libvulpes:productnugget:9>);
<ore:nuggetIridium>.remove(<libvulpes:productnugget:10>);
<ore:plateIron>.remove(<libvulpes:productplate:1>);
<ore:plateGold>.remove(<libvulpes:productplate:2>);
<ore:plateSilicon>.remove(<libvulpes:productplate:3>);
<ore:plateCopper>.remove(<libvulpes:productplate:4>);
<ore:plateTin>.remove(<libvulpes:productplate:5>);
<ore:plateSteel>.remove(<libvulpes:productplate:6>);
<ore:plateTitanium>.remove(<libvulpes:productplate:7>);
<ore:plateAluminum>.remove(<libvulpes:productplate:9>);
<ore:plateIridium>.remove(<libvulpes:productplate:10>);
<ore:stickIron>.remove(<libvulpes:productrod:1>);
<ore:stickCopper>.remove(<libvulpes:productrod:4>);
<ore:stickSteel>.remove(<libvulpes:productrod:6>);
<ore:stickTitanium>.remove(<libvulpes:productrod:7>);
<ore:stickIridium>.remove(<libvulpes:productrod:10>);
<ore:fanSteel>.remove(<libvulpes:productfan:6>);
<ore:sheetIron>.remove(<libvulpes:productsheet:1>);
<ore:sheetCopper>.remove(<libvulpes:productsheet:4>);
<ore:sheetSteel>.remove(<libvulpes:productsheet:6>);
<ore:sheetTitanium>.remove(<libvulpes:productsheet:7>);
<ore:sheetAluminum>.remove(<libvulpes:productsheet:9>);
<ore:gearSteel>.remove(<libvulpes:productgear:6>);
<ore:gearTitanium>.remove(<libvulpes:productgear:7>);
<ore:oreCopper>.remove(<libvulpes:ore0:4>);
<ore:oreTin>.remove(<libvulpes:ore0:5>);
<ore:oreTitanium>.remove(<libvulpes:ore0:8>);
<ore:oreRutile>.remove(<libvulpes:ore0:8>);
<ore:oreAluminum>.remove(<libvulpes:ore0:9>);
<ore:oreIridium>.remove(<libvulpes:ore0:10>);
<ore:blockCopper>.remove(<libvulpes:metal0:4>);
<ore:blockTin>.remove(<libvulpes:metal0:5>);
<ore:blockSteel>.remove(<libvulpes:metal0:6>);
<ore:blockTitanium>.remove(<libvulpes:metal0:7>);
<ore:blockWarpCoreRim>.remove(<libvulpes:metal0:7>);
<ore:blockWarpCoreRim>.add(<gregtech:meta_block_compressed_4:8>);
<ore:blockAluminum>.remove(<libvulpes:metal0:9>);
<ore:blockIridium>.remove(<libvulpes:metal0:10>);
<ore:itemBattery>.remove(<libvulpes:battery>);








































