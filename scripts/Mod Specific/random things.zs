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



recipes.addShaped(<randomthings:waterwalkingboots>, [	[null, null, null], 	[<ore:enderpearl>, null, <ore:enderpearl>], 	[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);
recipes.addShaped(<randomthings:redstonetool>, [	[null, <ore:craftingRedstoneTorch>, null], 	[null, <ore:ingotRedstoneAlloy>, null], 	[null, <ore:stickLongWood>, null]]);
recipes.addShaped(<randomthings:advancedredstonerepeater>, [	[null, null, null], 	[<randomthings:advancedredstonetorch_on>, <gregtech:machine_casing:2>, <randomthings:advancedredstonetorch_on>], 	[<projectred-integration:gate:10>, <minecraft:repeater>, <projectred-integration:gate:10>]]);
recipes.addShaped(<randomthings:escaperope>, [	[<ore:wireFineGold>, <minecraft:lead>, <ore:wireFineGold>], 	[<ore:enderpearl>, <randomthings:ingredient:12>, <ore:enderpearl>], 	[<ore:wireFineGold>, <randomthings:ingredient:12>, <ore:wireFineGold>]]);
recipes.addShaped(<randomthings:enderbucket>, [	[null, null, null], 	[<contenttweaker:bulatsteelplate>, <minecraft:bucket>, <contenttweaker:bulatsteelplate>], 	[null, <ore:itemVibrantCrystal>, null]]);
recipes.addShaped(<randomthings:playerinterface>, [	[<overloaded:compressed_obsidian>, <randomthings:stableenderpearl>, <overloaded:compressed_obsidian>], 	[<overloaded:compressed_obsidian>, <appliedenergistics2:interface>, <overloaded:compressed_obsidian>], 	[<overloaded:compressed_obsidian>, <ore:netherStar>, <overloaded:compressed_obsidian>]]);
recipes.addShaped(<randomthings:lapisglass>*4, [	[<ore:blockGlassColorless>, <ore:blockLapis>, <ore:blockGlassColorless>], 	[<ore:blockLapis>, <ore:blockGlassColorless>, <ore:blockLapis>], 	[<ore:blockGlassColorless>, <ore:blockLapis>, <ore:blockGlassColorless>]]);
recipes.addShaped(<randomthings:lapislamp>, [	[<ore:blockLapis>, <ore:plateLapis>, <ore:blockLapis>], 	[<ore:plateLapis>, <minecraft:redstone_lamp>, <ore:plateLapis>], 	[<ore:blockLapis>, <ore:plateLapis>, <ore:blockLapis>]]);
recipes.addShaped(<randomthings:dyeingmachine>, [	[<ore:plateBlackSteel>, <ore:dyeSoulMachine>, <ore:plateBlackSteel>], 	[<ore:dyeSoulMachine>, <gregtech:machine:503>, <ore:dyeSoulMachine>], 	[<ore:plateBlackSteel>, <ore:dyeSoulMachine>, <ore:plateBlackSteel>]]);
recipes.addShaped(<randomthings:onlinedetector>, [	[<ore:stoneSmooth>, <projectred-integration:gate:10>, <ore:stoneSmooth>], 	[<randomthings:advancedredstonerepeater>, <contenttweaker:detectiondevice>, <randomthings:advancedredstonerepeater>], 	[<ore:stoneSmooth>, <projectred-integration:gate:10>, <ore:stoneSmooth>]]);
recipes.addShaped(<randomthings:chatdetector>, [	[<ore:stoneSmooth>, <randomthings:advancedredstonerepeater>, <ore:stoneSmooth>], 	[<projectred-integration:gate:10>, <contenttweaker:detectiondevice>, <projectred-integration:gate:10>], 	[<ore:stoneSmooth>, <randomthings:advancedredstonerepeater>, <ore:stoneSmooth>]]);
recipes.addShaped(<randomthings:analogemitter>, [	[<randomthings:advancedredstonetorch_on>, <ore:blockRedSteel>, <randomthings:advancedredstonetorch_on>], 	[<ore:blockRedSteel>, <contenttweaker:detectiondevice>, <ore:blockRedSteel>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockRedSteel>, <randomthings:advancedredstonetorch_on>]]);
recipes.addShaped(<randomthings:inventorytester>, [	[<projectred-integration:gate:26>, <ironchest:iron_chest:6>, <projectred-integration:gate:26>], 	[<ore:stoneSmooth>, <contenttweaker:detectiondevice>, <ore:stoneSmooth>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockBlackSteel>, <randomthings:advancedredstonetorch_on>]]);
recipes.addShaped(<randomthings:globalchatdetector>, [	[<projectred-integration:gate:26>, <ore:blockRedstone>, <projectred-integration:gate:26>], 	[<ore:blockRedstone>, <contenttweaker:detectiondevice>, <ore:blockRedstone>], 	[<randomthings:advancedredstonetorch_on>, <ore:blockRedstone>, <randomthings:advancedredstonetorch_on>]]);
recipes.addShaped(<randomthings:imbuingstation>, [	[<contenttweaker:greensteelplate>, <overloaded:infinite_water_source>, <contenttweaker:greensteelplate>], 	[<ore:blockCrudeSteel>, <gregtech:machine:132>, <ore:blockCrudeSteel>], 	[<contenttweaker:greensteelplate>, <ore:voodooPoppetProtectionSuffocation>, <contenttweaker:greensteelplate>]]);
recipes.addShaped(<randomthings:fluiddisplay>, [	[<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], 	[<ore:blockGlassColorless>, <fluiddrawers:tank>, <ore:blockGlassColorless>], 	[<ore:blockGlassColorless>, <minecraft:glass_bottle>, <ore:blockGlassColorless>]]);
recipes.addShaped(<randomthings:biomeradar>, [	[<ore:plateIron>, <ore:plateBorosilicateGlass>, <ore:plateIron>], 	[<ore:plateIron>, <randomthings:ingredient:4>, <ore:plateIron>], 	[<ore:plateIron>, <ore:plateBorosilicateGlass>, <ore:plateIron>]]);
recipes.addShaped(<randomthings:irondropper>, [	[<ore:plateIron>, <ore:ingotRedstoneAlloy>, <ore:plateIron>], 	[<ore:plateIron>, <minecraft:dropper>, <ore:plateIron>], 	[<ore:plateIron>, <ore:ingotRedstoneAlloy>, <ore:plateIron>]]);
recipes.addShaped(<randomthings:igniter>, [	[<overloaded:compressed_netherrack:2>, <overloaded:compressed_netherrack:2>, <overloaded:compressed_netherrack:2>], 	[<overloaded:compressed_cobblestone:2>, <minecraft:flint_and_steel>, <overloaded:compressed_cobblestone:2>], 	[<overloaded:compressed_cobblestone:2>, <overloaded:compressed_cobblestone:2>, <overloaded:compressed_cobblestone:2>]]);
recipes.addShaped(<randomthings:blockofsticks:1>, [	[<randomthings:blockofsticks>, <ore:blockObsidian>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:enderpearl>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:blockObsidian>, <randomthings:blockofsticks>]]);
recipes.addShaped(<randomthings:notificationinterface>, [	[<ore:plateCertusQuartz>, <ore:plateStainlessSteel>, <ore:plateCertusQuartz>], 	[<ore:plateStainlessSteel>, <appliedenergistics2:interface>, <ore:plateStainlessSteel>], 	[<ore:plateCertusQuartz>, <ore:plateStainlessSteel>, <ore:plateCertusQuartz>]]);
recipes.addShaped(<randomthings:triggerglass>*8, [	[<ore:blockGlassColorless>, <extrautils2:ineffableglass:2>, <ore:blockGlassColorless>], 	[<extrautils2:ineffableglass:2>, <randomthings:advancedredstonetorch_on>, <extrautils2:ineffableglass:2>], 	[<ore:blockGlassColorless>, <extrautils2:ineffableglass:2>, <ore:blockGlassColorless>]]);
recipes.addShaped(<randomthings:blockdestabilizer>, [	[<extrautils2:ineffableglass:3>, <ore:crystalRedstone>, <extrautils2:ineffableglass:3>], 	[<ore:crystalRedstone>, <overloaded:compressed_obsidian:2>, <ore:crystalRedstone>], 	[<extrautils2:ineffableglass:3>, <ore:crystalRedstone>, <extrautils2:ineffableglass:3>]]);
recipes.addShaped(<randomthings:soundbox>, [	[<ore:plateDiamond>, <ore:plateLapis>, <ore:plateDiamond>], 	[<ore:plateLapis>, <minecraft:jukebox>, <ore:plateLapis>], [<ore:plateDiamond>, <ore:plateLapis>, <ore:plateDiamond>]]);
recipes.addShaped(<randomthings:sounddampener>, [	[<contenttweaker:stretchedwool>, <ore:dustAluminoSilicateWool>, <contenttweaker:stretchedwool>], 	[<ore:dustAluminoSilicateWool>, <randomthings:portablesounddampener>, <ore:dustAluminoSilicateWool>], 	[<contenttweaker:stretchedwool>, <ore:dustAluminoSilicateWool>, <contenttweaker:stretchedwool>]]);
recipes.addShaped(<randomthings:advancedredstonetorch_on>, [ 	[null, <ore:dustRegularRedstone>, null], 	[<ore:plateRedstone>, <ore:torch>, <ore:plateRedstone>], 	[null, <ore:stickIronMagnetic>, null]]);
recipes.addShaped(<randomthings:ingredient:8>*4, [	[<ore:boltIron>, <ore:barsIron>, <ore:boltIron>], 	[<ore:barsIron>, <projectred-core:resource_item>, <ore:barsIron>], 	[<ore:boltIron>, <ore:barsIron>, <ore:boltIron>]]);
recipes.addShaped(<randomthings:blazeandsteel>, [	[<ore:screwStainlessSteel>, <ore:screwSteel>, null], 	[<ore:screwSteel>, <minecraft:flint_and_steel>, <ore:screwSteel>], 	[null, <ore:screwSteel>, <contenttweaker:blazingrod>]]);
recipes.addShaped(<randomthings:emeraldcompass>, [	[null, <randomthings:ingredient:9>, null], 	[<randomthings:ingredient:9>, <minecraft:compass>, <randomthings:ingredient:9>], 	[null, <randomthings:ingredient:9>, null]]);
recipes.addShaped(<randomthings:goldencompass>, [	[null, <ore:plateGold>, null], 	[<ore:plateGold>, <minecraft:compass>, <ore:plateGold>], 	[null, <ore:plateGold>, null]]);
recipes.addShaped(<randomthings:stableenderpearl>, [	[<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>], 	[<ore:plateGold>, <ore:enderpearl>, <ore:plateGold>], 	[<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>]]);
recipes.addShaped(<randomthings:reinforcedenderbucket>, [	[null, <ore:plateDiamond>, null], 	[<ore:plateNiobiumTitanium>, <randomthings:enderbucket>, <ore:plateNiobiumTitanium>], 	[null, <ore:plateNiobiumTitanium>, null]]);
recipes.addShaped(<randomthings:spectreaxe>, [	[<contenttweaker:spectreplate>, <contenttweaker:spectreplate>, null], 	[<contenttweaker:spectreplate>, <contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.addShaped(<randomthings:spectrepickaxe>, [	[<contenttweaker:spectreplate>, <contenttweaker:spectreplate>, <contenttweaker:spectreplate>], 	[null,<contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.addShaped(<randomthings:spectresword>, [	[null, <contenttweaker:spectreplate>, null], 	[null, <contenttweaker:spectreplate>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
recipes.addShaped(<randomthings:spectreshovel>, [	[null, <contenttweaker:spectreplate>, null], 	[null,<contenttweaker:obsidianrod>, null], 	[null,<contenttweaker:obsidianrod>, null]]);
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

recipes.addShaped(<randomthings:spectrelens>, [	[<contenttweaker:spectreplate>, <ore:plateLapis>, <contenttweaker:spectreplate>], 	[<ore:plateGlowstone>, <ore:craftingLensBlue>, <ore:plateRedstone>], 	[<contenttweaker:spectreplate>, <ore:plateDiamond>, <contenttweaker:spectreplate>]]);
recipes.addShaped(<randomthings:spectreenergyinjector>, [	[<ore:stickStainlessSteel>, <randomthings:ingredient:12>, <ore:stickStainlessSteel>], 	[<randomthings:ingredient:12>, <randomthings:spectrelens>, <randomthings:ingredient:12>], 	[<overloaded:compressed_obsidian:2>, <minecraft:beacon>, <overloaded:compressed_obsidian:2>]]);
recipes.addShaped(<randomthings:itemcollector>, [	[null, <ore:plateTungstenCarbide>, null], 	[null, <overloaded:compressed_obsidian:3>, null], 	[<ore:plateDoubleBlackSteel>, <gregtech:machine:496>, <ore:plateDoubleBlackSteel>]]);
recipes.addShaped(<randomthings:advanceditemcollector>, [	[null, <ore:plateFluxedelectrum>, null], 	[null, <overloaded:compressed_obsidian:3>, null], 	[<ore:plateDoubleBlackSteel>, <gregtech:machine:496>, <ore:plateDoubleBlackSteel>]]);
recipes.addShaped(<randomthings:spectrecharger:0>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger_simple>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.addShaped(<randomthings:spectrecharger:1>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.addShaped(<randomthings:spectrecharger:2>, [	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>], 	[<contenttweaker:spectreplate>, <enderio:item_inventory_charger_vibrant>, <contenttweaker:spectreplate>], 	[<randomthings:ingredient:12>, <ore:wireGtDoubleNiobiumTitanium>, <randomthings:ingredient:12>]]);
recipes.addShaped(<randomthings:positionfilter>, [	[null, <ore:dye>, null], 	[<ore:dye>, <enderio:item_basic_item_filter>, <ore:dye>], 	[null, <ore:dye>, null]]);
recipes.addShaped(<randomthings:entityfilter>, [	[null, <ore:gemLapis>, null], 	[<ore:gemLapis>, <enderio:item_basic_item_filter>, <ore:gemLapis>], 	[null, <ore:gemLapis>, null]]);
recipes.addShaped(<randomthings:basicredstoneinterface>, [	[<ore:blockRedstone>, <ore:obsidian>, <ore:blockRedstone>], 	[<ore:obsidian>, <appliedenergistics2:interface>, <ore:obsidian>], 	[<ore:blockRedstone>, <ore:obsidian>, <ore:blockRedstone>]]);
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
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:iron_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:1>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:gold_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:2>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:lapis_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:3>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:redstone_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:4>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:emerald_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:5>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_12:10>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:21>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_1:1>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:18>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:15>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_3:3>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:14>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2:12>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:13>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_0:1>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:12>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_2:3>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:11>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_3:14>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:10>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_4:7>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:9>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<gregtech:meta_block_compressed_1:2>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:8>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<minecraft:fermented_spider_eye>,<gregtech:meta_item_1:16196>*4,<minecraft:diamond_block>*4)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<randomthings:diviningrod:6>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

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
    
chemReactor.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32162>)
    .inputs(<randomthings:beans>)
    .outputs(<randomthings:beans:1>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32162>)
    .inputs(<randomthings:beans>)
    .outputs(<randomthings:beans:1>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();