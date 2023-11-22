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
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");
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

recipes.remove(<randomthings:ingredient:3>);
recipes.remove(<randomthings:ingredient:5>);
recipes.addShaped(<randomthings:waterwalkingboots>, [	[null, null, null], 	[<ore:enderpearl>, null, <ore:enderpearl>], 	[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);
recipes.remove(<randomthings:redstonetool>);
recipes.addShaped(<randomthings:redstonetool>, [	[null, <ore:craftingRedstoneTorch>, null], 	[null, <ore:ingotRedstoneAlloy>, null], 	[null, <ore:stickLongWood>, null]]);
recipes.remove(<randomthings:fertilizeddirt>);
recipes.remove(<randomthings:superlubricentice>);
recipes.addShaped(<randomthings:advancedredstonerepeater>, [	[null, null, null], 	[<randomthings:advancedredstonetorch_on>, <gregtech:machine_casing:2>, <randomthings:advancedredstonetorch_on>], 	[<projectred-integration:gate:10>, <minecraft:repeater>, <projectred-integration:gate:10>]]);
recipes.addShaped(<randomthings:escaperope>, [	[<ore:wireFineGold>, <minecraft:lead>, <ore:wireFineGold>], 	[<ore:enderpearl>, <randomthings:ingredient:12>, <ore:enderpearl>], 	[<ore:wireFineGold>, <randomthings:ingredient:12>, <ore:wireFineGold>]]);
recipes.remove(<randomthings:escaperope>);
recipes.addShaped(<randomthings:enderbucket>, [	[null, null, null], 	[<contenttweaker:bulatsteelplate>, <minecraft:bucket>, <contenttweaker:bulatsteelplate>], 	[null, <ore:itemVibrantCrystal>, null]]);
recipes.remove(<randomthings:enderbucket>);
recipes.remove(<randomthings:diviningrod>);
recipes.remove(<randomthings:diviningrod:1>);
recipes.remove(<randomthings:diviningrod:2>);
recipes.remove(<randomthings:diviningrod:3>);
recipes.remove(<randomthings:diviningrod:4>);
recipes.remove(<randomthings:diviningrod:5>);
recipes.remove(<randomthings:diviningrod:6>);
recipes.remove(<randomthings:diviningrod:21>);
recipes.remove(<randomthings:diviningrod:14>);
recipes.remove(<randomthings:diviningrod:18>);
recipes.remove(<randomthings:diviningrod:15>);
recipes.remove(<randomthings:diviningrod:8>);
recipes.remove(<randomthings:diviningrod:9>);
recipes.remove(<randomthings:diviningrod:10>);
recipes.remove(<randomthings:diviningrod:11>);
recipes.remove(<randomthings:diviningrod:12>);
recipes.remove(<randomthings:diviningrod:13>);
recipes.remove(<randomthings:spectrekey>);
recipes.remove(<randomthings:superlubricentstone>);
recipes.remove(<randomthings:timeinabottle>);
recipes.remove(<randomthings:advancedredstonerepeater>);
recipes.remove(<randomthings:playerinterface>);
recipes.addShaped(<randomthings:playerinterface>, [	[<overloaded:compressed_obsidian>, <randomthings:stableenderpearl>, <overloaded:compressed_obsidian>], 	[<overloaded:compressed_obsidian>, <appliedenergistics2:interface>, <overloaded:compressed_obsidian>], 	[<overloaded:compressed_obsidian>, <ore:netherStar>, <overloaded:compressed_obsidian>]]);
recipes.remove(<randomthings:lapisglass>);
recipes.addShaped(<randomthings:lapisglass>*4, [	[<ore:blockGlassColorless>, <ore:blockLapis>, <ore:blockGlassColorless>], 	[<ore:blockLapis>, <ore:blockGlassColorless>, <ore:blockLapis>], 	[<ore:blockGlassColorless>, <ore:blockLapis>, <ore:blockGlassColorless>]]);
recipes.remove(<randomthings:lapislamp>);
recipes.addShaped(<randomthings:lapislamp>, [	[<ore:blockLapis>, <ore:plateLapis>, <ore:blockLapis>], 	[<ore:plateLapis>, <minecraft:redstone_lamp>, <ore:plateLapis>], 	[<ore:blockLapis>, <ore:plateLapis>, <ore:blockLapis>]]);
recipes.remove(<randomthings:dyeingmachine>);
recipes.addShaped(<randomthings:dyeingmachine>, [	[<ore:plateBlackSteel>, <ore:dyeSoulMachine>, <ore:plateBlackSteel>], 	[<ore:dyeSoulMachine>, <gregtech:machine:503>, <ore:dyeSoulMachine>], 	[<ore:plateBlackSteel>, <ore:dyeSoulMachine>, <ore:plateBlackSteel>]]);
recipes.remove(<randomthings:onlinedetector>);
recipes.addShaped(<randomthings:onlinedetector>, [	[<ore:stoneSmooth>, <projectred-integration:gate:10>, <ore:stoneSmooth>], 	[<randomthings:advancedredstonerepeater>, <contenttweaker:detectiondevice>, <randomthings:advancedredstonerepeater>], 	[<ore:stoneSmooth>, <projectred-integration:gate:10>, <ore:stoneSmooth>]]);
recipes.remove(<randomthings:chatdetector>);
recipes.addShaped(<randomthings:chatdetector>, [	[<ore:stoneSmooth>, <randomthings:advancedredstonerepeater>, <ore:stoneSmooth>], 	[<projectred-integration:gate:10>, <contenttweaker:detectiondevice>, <projectred-integration:gate:10>], 	[<ore:stoneSmooth>, <randomthings:advancedredstonerepeater>, <ore:stoneSmooth>]]);
recipes.remove(<randomthings:analogemitter>);
recipes.addShaped(<randomthings:analogemitter>, [	[<randomthings:advancedredstonetorch_on>, <ore:blockRedSteel>, <randomthings:advancedredstonetorch_on>], 	[<ore:blockRedSteel>, <contenttweaker:detectiondevice>, <ore:blockRedSteel>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockRedSteel>, <randomthings:advancedredstonetorch_on>]]);
recipes.remove(<randomthings:inventorytester>);
recipes.addShaped(<randomthings:inventorytester>, [	[<projectred-integration:gate:26>, <ironchest:iron_chest:6>, <projectred-integration:gate:26>], 	[<ore:stoneSmooth>, <contenttweaker:detectiondevice>, <ore:stoneSmooth>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockBlackSteel>, <randomthings:advancedredstonetorch_on>]]);
recipes.remove(<randomthings:globalchatdetector>);
recipes.addShaped(<randomthings:globalchatdetector>, [	[<projectred-integration:gate:26>, <ore:blockRedstone>, <projectred-integration:gate:26>], 	[<ore:blockRedstone>, <contenttweaker:detectiondevice>, <ore:blockRedstone>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockRedstone>, <randomthings:advancedredstonetorch_on>]]);
recipes.remove(<randomthings:imbuingstation>);
recipes.addShaped(<randomthings:imbuingstation>, [	[<contenttweaker:greensteelplate>, <overloaded:infinite_water_source>, <contenttweaker:greensteelplate>], 	[<ore:blockCrudeSteel>, <gregtech:machine:132>, <ore:blockCrudeSteel>], 	[<contenttweaker:greensteelplate>, <ore:voodooPoppetProtectionSuffocation>, <contenttweaker:greensteelplate>]]);
recipes.remove(<randomthings:fluiddisplay>);
recipes.addShaped(<randomthings:fluiddisplay>, [	[<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], 	[<ore:blockGlassColorless>, <fluiddrawers:tank>, <ore:blockGlassColorless>], 	[<ore:blockGlassColorless>, <minecraft:glass_bottle>, <ore:blockGlassColorless>]]);
recipes.remove(<randomthings:biomeradar>);
recipes.addShaped(<randomthings:biomeradar>, [	[<ore:plateIron>, <ore:plateBorosilicateGlass>, <ore:plateIron>], 	[<ore:plateIron>, <randomthings:ingredient:4>, <ore:plateIron>], 	[<ore:plateIron>, <ore:plateBorosilicateGlass>, <ore:plateIron>]]);
recipes.remove(<randomthings:irondropper>);
recipes.addShaped(<randomthings:irondropper>, [	[<ore:plateIron>, <ore:ingotRedstoneAlloy>, <ore:plateIron>], 	[<ore:plateIron>, <minecraft:dropper>, <ore:plateIron>], 	[<ore:plateIron>, <ore:ingotRedstoneAlloy>, <ore:plateIron>]]);
recipes.remove(<randomthings:igniter>);
recipes.addShaped(<randomthings:igniter>, [	[<overloaded:compressed_netherrack:2>, <overloaded:compressed_netherrack:2>, <overloaded:compressed_netherrack:2>], 	[<overloaded:compressed_cobblestone:2>, <minecraft:flint_and_steel>, <overloaded:compressed_cobblestone:2>], 	[<overloaded:compressed_cobblestone:2>, <overloaded:compressed_cobblestone:2>, <overloaded:compressed_cobblestone:2>]]);
recipes.remove(<randomthings:blockofsticks:1>*6);
recipes.addShaped(<randomthings:blockofsticks:1>, [	[<randomthings:blockofsticks>, <ore:blockObsidian>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:enderpearl>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:blockObsidian>, <randomthings:blockofsticks>]]);
recipes.remove(<randomthings:notificationinterface>);
recipes.addShaped(<randomthings:notificationinterface>, [	[<ore:plateCertusQuartz>, <ore:plateStainlessSteel>, <ore:plateCertusQuartz>], 	[<ore:plateStainlessSteel>, <appliedenergistics2:interface>, <ore:plateStainlessSteel>], 	[<ore:plateCertusQuartz>, <ore:plateStainlessSteel>, <ore:plateCertusQuartz>]]);
recipes.remove(<randomthings:triggerglass>);
recipes.addShaped(<randomthings:triggerglass>*8, [	[<ore:blockGlassColorless>, <extrautils2:ineffableglass:2>, <ore:blockGlassColorless>], 	[<extrautils2:ineffableglass:2>, <randomthings:advancedredstonetorch_on>, <extrautils2:ineffableglass:2>], 	[<ore:blockGlassColorless>, <extrautils2:ineffableglass:2>, <ore:blockGlassColorless>]]);
recipes.remove(<randomthings:blockdestabilizer>);
recipes.addShaped(<randomthings:blockdestabilizer>, [	[<extrautils2:ineffableglass:3>, <ore:crystalRedstone>, <extrautils2:ineffableglass:3>], 	[<ore:crystalRedstone>, <overloaded:compressed_obsidian:2>, <ore:crystalRedstone>], 	[<extrautils2:ineffableglass:3>, <ore:crystalRedstone>, <extrautils2:ineffableglass:3>]]);
recipes.remove(<randomthings:soundbox>);
recipes.addShaped(<randomthings:soundbox>, [	[<ore:plateDiamond>, <ore:plateLapis>, <ore:plateDiamond>], 	[<ore:plateLapis>, <minecraft:jukebox>, <ore:plateLapis>], [<ore:plateDiamond>, <ore:plateLapis>, <ore:plateDiamond>]]);
recipes.remove(<randomthings:sounddampener>);
recipes.addShaped(<randomthings:sounddampener>, [	[<contenttweaker:stretchedwool>, <ore:dustAluminoSilicateWool>, <contenttweaker:stretchedwool>], 	[<ore:dustAluminoSilicateWool>, <randomthings:portablesounddampener>, <ore:dustAluminoSilicateWool>], 	[<contenttweaker:stretchedwool>, <ore:dustAluminoSilicateWool>, <contenttweaker:stretchedwool>]]);
recipes.remove(<randomthings:advancedredstonetorch_on>);
recipes.addShaped(<randomthings:advancedredstonetorch_on>, [ 	[null, <ore:dustRegularRedstone>, null], 	[<ore:plateRedstone>, <ore:torch>, <ore:plateRedstone>], 	[null, <ore:stickIronMagnetic>, null]]);
recipes.remove(<randomthings:ingredient:8>);
recipes.addShaped(<randomthings:ingredient:8>*4, [	[<ore:boltIron>, <ore:barsIron>, <ore:boltIron>], 	[<ore:barsIron>, <projectred-core:resource_item>, <ore:barsIron>], 	[<ore:boltIron>, <ore:barsIron>, <ore:boltIron>]]);
recipes.remove(<randomthings:blazeandsteel>);
recipes.addShaped(<randomthings:blazeandsteel>, [	[<ore:screwStainlessSteel>, <ore:screwSteel>, null], 	[<ore:screwSteel>, <minecraft:flint_and_steel>, <ore:screwSteel>], 	[null, <ore:screwSteel>, <contenttweaker:blazingrod>]]);
recipes.remove(<randomthings:emeraldcompass>);
recipes.addShaped(<randomthings:emeraldcompass>, [	[null, <randomthings:ingredient:9>, null], 	[<randomthings:ingredient:9>, <minecraft:compass>, <randomthings:ingredient:9>], 	[null, <randomthings:ingredient:9>, null]]);
recipes.remove(<randomthings:goldencompass>);
recipes.addShaped(<randomthings:goldencompass>, [	[null, <ore:plateGold>, null], 	[<ore:plateGold>, <minecraft:compass>, <ore:plateGold>], 	[null, <ore:plateGold>, null]]);
recipes.remove(<randomthings:ingredient:12>);
recipes.addShaped(<randomthings:stableenderpearl>, [	[<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>], 	[<ore:plateGold>, <ore:enderpearl>, <ore:plateGold>], 	[<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>]]);
recipes.remove(<randomthings:stableenderpearl>);
recipes.addShaped(<randomthings:reinforcedenderbucket>, [	[null, <ore:plateDiamond>, null], 	[<ore:plateNiobiumTitanium>, <randomthings:enderbucket>, <ore:plateNiobiumTitanium>], 	[null, <ore:plateNiobiumTitanium>, null]]);
recipes.remove(<randomthings:reinforcedenderbucket>);
recipes.remove(<randomthings:ingredient:7>);
recipes.remove(<randomthings:ingredient:6>);
recipes.remove(<randomthings:spectreaxe>);
recipes.addShaped(<randomthings:spectreaxe>, [	[<contenttweaker:spectreplate>, <contenttweaker:spectreplate>, null], 	[<contenttweaker:spectreplate>, <contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.addShaped(<randomthings:spectrepickaxe>, [	[<contenttweaker:spectreplate>, <contenttweaker:spectreplate>, <contenttweaker:spectreplate>], 	[null,<contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.remove(<randomthings:spectrepickaxe>);
recipes.addShaped(<randomthings:spectresword>, [	[null, <contenttweaker:spectreplate>, null], 	[null, <contenttweaker:spectreplate>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.remove(<randomthings:spectresword>);
recipes.addShaped(<randomthings:spectreshovel>, [	[null, <contenttweaker:spectreplate>, null], 	[null,<contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.remove(<randomthings:spectreshovel>);
recipes.remove(<randomthings:luminousblock>);
recipes.remove(<randomthings:luminousblock:1>);
recipes.remove(<randomthings:luminousblock:2>);
recipes.remove(<randomthings:luminousblock:3>);
recipes.remove(<randomthings:luminousblock:4>);
recipes.remove(<randomthings:luminousblock:5>);
recipes.remove(<randomthings:luminousblock:6>);
recipes.remove(<randomthings:luminousblock:7>);
recipes.remove(<randomthings:luminousblock:8>);
recipes.remove(<randomthings:luminousblock:9>);
recipes.remove(<randomthings:luminousblock:10>);
recipes.remove(<randomthings:luminousblock:11>);
recipes.remove(<randomthings:luminousblock:12>);
recipes.remove(<randomthings:luminousblock:13>);
recipes.remove(<randomthings:luminousblock:14>);
recipes.remove(<randomthings:luminousblock:15>);
recipes.remove(<randomthings:translucentluminousblock>);
recipes.remove(<randomthings:translucentluminousblock:1>);
recipes.remove(<randomthings:translucentluminousblock:2>);
recipes.remove(<randomthings:translucentluminousblock:3>);
recipes.remove(<randomthings:translucentluminousblock:4>);
recipes.remove(<randomthings:translucentluminousblock:5>);
recipes.remove(<randomthings:translucentluminousblock:6>);
recipes.remove(<randomthings:translucentluminousblock:7>);
recipes.remove(<randomthings:translucentluminousblock:8>);
recipes.remove(<randomthings:translucentluminousblock:9>);
recipes.remove(<randomthings:translucentluminousblock:10>);
recipes.remove(<randomthings:translucentluminousblock:11>);
recipes.remove(<randomthings:translucentluminousblock:12>);
recipes.remove(<randomthings:translucentluminousblock:13>);
recipes.remove(<randomthings:translucentluminousblock:14>);
recipes.remove(<randomthings:translucentluminousblock:15>);

recipes.addShaped(<randomthings:luminousblock>, [	[<randomthings:ingredient:5>, <ore:stoneSmooth>, <randomthings:ingredient:5>], 	[<ore:stoneSmooth>, <ore:dyeWhite>, <ore:stoneSmooth>], 	[<randomthings:ingredient:5>, <ore:stoneSmooth>, <randomthings:ingredient:5>]]);

assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeOrange>)    .outputs(<randomthings:translucentluminousblock:1>)    .duration(10)   .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeMagenta>)    .outputs(<randomthings:translucentluminousblock:2>)    .duration(10)    .EUt(12)   .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeLightBlue>)    .outputs(<randomthings:translucentluminousblock:3>)    .duration(10).EUt(12)   .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeYellow>)    .outputs(<randomthings:translucentluminousblock:4>)   .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeLightGreen>)    .outputs(<randomthings:translucentluminousblock:5>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyePink>)    .outputs(<randomthings:translucentluminousblock:6>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeGray>)    .outputs(<randomthings:translucentluminousblock:7>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeLightGray>)    .outputs(<randomthings:translucentluminousblock:8>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeCyan>)    .outputs(<randomthings:translucentluminousblock:9>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyePurple>)    .outputs(<randomthings:translucentluminousblock:10>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeBlue>)    .outputs(<randomthings:translucentluminousblock:11>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeBrown>)    .outputs(<randomthings:translucentluminousblock:12>)    .duration(10).EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeGreen>)    .outputs(<randomthings:translucentluminousblock:13>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeRed>)    .outputs(<randomthings:translucentluminousblock:14>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:translucentluminousblock>,<ore:dyeBlack>)    .outputs(<randomthings:translucentluminousblock:15>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<ore:translucentluminousblock>,<ore:dyeWhite>)    .outputs(<randomthings:translucentluminousblock>).duration(10)    .EUt(12)    .buildAndRegister();

assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeOrange>)    .outputs(<randomthings:luminousblock:1>)    .duration(10)   .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeMagenta>)    .outputs(<randomthings:luminousblock:2>)    .duration(10)    .EUt(12)   .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeLightBlue>)    .outputs(<randomthings:luminousblock:3>)    .duration(10).EUt(12)   .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeYellow>)    .outputs(<randomthings:luminousblock:4>)   .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeLightGreen>)    .outputs(<randomthings:luminousblock:5>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyePink>)    .outputs(<randomthings:luminousblock:6>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeGray>)    .outputs(<randomthings:luminousblock:7>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeLightGray>)    .outputs(<randomthings:luminousblock:8>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeCyan>)    .outputs(<randomthings:luminousblock:9>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyePurple>)    .outputs(<randomthings:luminousblock:10>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeBlue>)    .outputs(<randomthings:luminousblock:11>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeBrown>)    .outputs(<randomthings:luminousblock:12>)    .duration(10).EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeGreen>)    .outputs(<randomthings:luminousblock:13>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeRed>)    .outputs(<randomthings:luminousblock:14>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<randomthings:luminousblock>,<ore:dyeBlack>)    .outputs(<randomthings:luminousblock:15>)    .duration(10)    .EUt(12)    .buildAndRegister();
assembler.recipeBuilder()    .inputs(<ore:luminousblock>,<ore:dyeWhite>)    .outputs(<randomthings:luminousblock>).duration(10)    .EUt(12)    .buildAndRegister();

recipes.remove(<randomthings:spectrelens>);
recipes.addShaped(<randomthings:spectrelens>, [	[<contenttweaker:spectreplate>, <ore:plateLapis>, <contenttweaker:spectreplate>], 	[<ore:plateGlowstone>, <ore:craftingLensBlue>, <ore:plateRedstone>], 	[<contenttweaker:spectreplate>, <ore:plateDiamond>, <contenttweaker:spectreplate>]]);
recipes.remove(<randomthings:spectreenergyinjector>);
recipes.addShaped(<randomthings:spectreenergyinjector>, [	[<ore:stickStainlessSteel>, <randomthings:ingredient:12>, <ore:stickStainlessSteel>], 	[<randomthings:ingredient:12>, <randomthings:spectrelens>, <randomthings:ingredient:12>], 	[<overloaded:compressed_obsidian:2>, <minecraft:beacon>, <overloaded:compressed_obsidian:2>]]);
recipes.remove(<randomthings:itemcollector>);
recipes.addShaped(<randomthings:itemcollector>, [	[null, <ore:plateTungstenCarbide>, null], 	[null, <overloaded:compressed_obsidian:3>, null], 	[<ore:plateDoubleBlackSteel>, <gregtech:machine:496>, <ore:plateDoubleBlackSteel>]]);
recipes.remove(<randomthings:advanceditemcollector>);
recipes.addShaped(<randomthings:advanceditemcollector>, [	[null, <ore:plateFluxedelectrum>, null], 	[null, <overloaded:compressed_obsidian:3>, null], 	[<ore:plateDoubleBlackSteel>, <gregtech:machine:496>, <ore:plateDoubleBlackSteel>]]);
recipes.remove(<randomthings:spectrecharger:0>);
recipes.addShaped(<randomthings:spectrecharger:0>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger_simple>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.remove(<randomthings:spectrecharger:1>);
recipes.addShaped(<randomthings:spectrecharger:1>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.remove(<randomthings:spectrecharger:2>);
recipes.addShaped(<randomthings:spectrecharger:2>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger_vibrant>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.remove(<randomthings:positionfilter>);
recipes.addShaped(<randomthings:positionfilter>, [	[null, <ore:dye>, null], 	[<ore:dye>, <enderio:item_basic_item_filter>, <ore:dye>], 	[null, <ore:dye>, null]]);
recipes.remove(<randomthings:entityfilter>);
recipes.addShaped(<randomthings:entityfilter>, [	[null, <ore:gemLapis>, null], 	[<ore:gemLapis>, <enderio:item_basic_item_filter>, <ore:gemLapis>], 	[null, <ore:gemLapis>, null]]);
recipes.remove(<randomthings:basicredstoneinterface>);
recipes.addShaped(<randomthings:basicredstoneinterface>, [	[<ore:blockRedstone>, <ore:obsidian>, <ore:blockRedstone>], 	[<ore:obsidian>, <appliedenergistics2:interface>, <ore:obsidian>], 	[<ore:blockRedstone>, <ore:obsidian>, <ore:blockRedstone>]]);
recipes.remove(<randomthings:advancedredstoneinterface>);
recipes.addShaped(<randomthings:advancedredstoneinterface>, [	[<randomthings:advancedredstonetorch_on>, <randomthings:advancedredstonerepeater>, <randomthings:advancedredstonetorch_on>], 	[<randomthings:advancedredstonerepeater>, <randomthings:basicredstoneinterface>, <randomthings:advancedredstonerepeater>], 	[<randomthings:advancedredstonetorch_on>, <randomthings:advancedredstonerepeater>, <randomthings:advancedredstonetorch_on>]]);


















































assembler.recipeBuilder()
    .inputs(<extrautils2:ingredients:10>,<extrautils2:ingredients:17>,<minecraft:ghast_tear>,<randomthings:obsidianskull>,<minecraft:ender_pearl>,<minecraft:skull>)
    .outputs(<randomthings:ingredient:1>)
    .duration(1200)
    .EUt(512)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<randomthings:ingredient:6>,<minecraft:iron_boots>)
    .outputs(<randomthings:superlubricentboots>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:coal_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:iron_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:1>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:gold_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:2>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:lapis_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:3>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:redstone_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:4>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:emerald_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:5>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_12:10>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:21>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_1:1>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:18>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:15>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_3:3>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:14>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2:12>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:13>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_0:1>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:12>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2:3>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:11>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_3:14>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:10>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_4:7>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:9>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_1:2>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:8>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:diamond_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:6>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();


recipes.remove(<randomthings:blockofsticks>);

assembler.recipeBuilder()
    .inputs(<minecraft:stick>*16,<minecraft:stick>*16)
    .outputs(<randomthings:blockofsticks>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<randomthings:blockofsticks>)
    .outputs(<minecraft:stick>*32)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:25113>)
    .outputs(<randomthings:ingredient:9>)
    .duration(100)
    .EUt(480)
    .notConsumable(<ore:craftingLensWhite>)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<contenttweaker:reinforcedstring>,<randomthings:ingredient:3>)
    .outputs(<randomthings:ingredient:12>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<minecraft:glass_bottle>)
    .outputs(<randomthings:ingredient:6>)
    .fluidInputs(<liquid:superlubricenttincture>*100)
    .duration(200)
    .EUt(58)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<minecraft:glass_bottle>)
    .outputs(<randomthings:ingredient:6>)
    .fluidInputs(<liquid:superlubricenttincture>*100)
    .duration(200)
    .EUt(58)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<randomthings:beans>,<minecraft:wheat_seeds>*2)
    .fluidInputs(<liquid:lubricant>*500,<liquid:water>*1000)
    .fluidOutputs(<liquid:superlubricenttincture>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<randomthings:beans>,<minecraft:wheat_seeds>*2)
    .fluidInputs(<liquid:lubricant>*500,<liquid:water>*1000)
    .fluidOutputs(<liquid:superlubricenttincture>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<minecraft:gunpowder>,<randomthings:beans>,<minecraft:redstone>)
    .outputs(<randomthings:ingredient:7>*4)
    .duration(122)
    .EUt(400)
    .buildAndRegister();

