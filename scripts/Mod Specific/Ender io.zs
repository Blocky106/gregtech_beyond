

import mods.enderio.AlloySmelter;
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

mods.enderio.AlloySmelter.addRecipe(<contenttweaker:silversteel>,[<gtadditions:ga_dust:32014>]);
mods.enderio.AlloySmelter.addRecipe(<gregtech:meta_item_1:10095>,[<gregtech:meta_item_1:2095>]);

recipes.removeByMod("enderio");

recipes.addShaped(<enderio:item_basic_capacitor>, [	[<ore:plateSteel>, <ore:plateDenseAluminium>, <ore:plateSteel>], 	[<contenttweaker:bulatsteelingot>, <ore:dustBedrock>, <contenttweaker:bulatsteelingot>], 	[<ore:boltBlueSteel>, null, <ore:boltBlueSteel>]]);
recipes.addShaped(<enderio:block_dark_steel_anvil>, [	[<ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:blockDarkSteel>], 	[null, <ore:ingotDarkSteel>, null], 	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<enderio:block_infinity>, [	[<ore:dustBedrock>, <ore:dustBedrock>, <ore:dustBedrock>], 	[<ore:dustBedrock>, <ore:dustBedrock>, <ore:dustBedrock>], 	[<ore:dustBedrock>, <ore:dustBedrock>, <ore:dustBedrock>]]);
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, [	[null, <gregtech:meta_tool:8>, null], 	[<contenttweaker:bulatsteelrod>, <contenttweaker:bulatsteelrod>, <contenttweaker:bulatsteelrod>], 	[<contenttweaker:bulatsteelrod>, <contenttweaker:bulatsteelrod>, <contenttweaker:bulatsteelrod>]]);
recipes.addShaped(<enderio:item_material:51>, [	[<ore:dustSmallBatteryAlloy>, <gtadditions:ga_dust:32003>, <ore:dustSmallBatteryAlloy>], 	[<gtadditions:ga_dust:32003>, <ore:itemBinderComposite>, <gtadditions:ga_dust:32003>], 	[<ore:dustSmallBatteryAlloy>, <gtadditions:ga_dust:32003>, <ore:dustSmallBatteryAlloy>]]);
recipes.addShaped(<enderio:item_material:22> * 4, [	[<ore:dustMagnesium>, <ore:dustSilicon>, <ore:dustManganese>], 	[<ore:dustRockSalt>, <ore:dustSmallFireclay>, <ore:dustRockSalt>], 	[<ore:dustCalcium>, <ore:dustSilicon>, <ore:dustRegularChrome>]]);
recipes.addShaped(<enderio:block_tank>, [	[<gregtech:meta_item_2:32433>, <ore:barsIron>, <gregtech:meta_item_2:32433>], 	[<ore:barsIron>, <gregtech:machine:811>, <ore:barsIron>], 	[<gregtech:meta_item_2:32433>, <ore:barsIron>, <gregtech:meta_item_2:32433>]]);
recipes.addShaped(<enderio:item_material:10>*2, [	[<ore:stoneSmooth>, <minecraft:cobblestone_wall>, <ore:stoneSmooth>], 	[<minecraft:cobblestone_wall>, <contenttweaker:woodgear>, <minecraft:cobblestone_wall>], 	[<ore:stoneSmooth>, <minecraft:cobblestone_wall>, <ore:stoneSmooth>]]);
recipes.addShaped(<enderio:item_material>*2, [	[<ore:plateIron>, <gtadditions:ga_dust:32013>, <ore:plateIron>], 	[<gtadditions:ga_dust:32013>, <ore:frameGtWood>, <gtadditions:ga_dust:32013>], 	[<ore:plateIron>, <gtadditions:ga_dust:32013>, <ore:plateIron>]]);
recipes.addShaped(<enderio:block_infinity:1>,[ [<enderio:block_infinity>, <enderio:block_infinity>, <enderio:block_infinity>], [<enderio:block_infinity>, <enderio:block_infinity>, <enderio:block_infinity>], [<enderio:block_infinity>, <enderio:block_infinity>, <enderio:block_infinity>]]);
recipes.addShaped(<enderio:block_infinity:2>,[ [<enderio:block_infinity:1>, <enderio:block_infinity:1>, <enderio:block_infinity:1>], [<enderio:block_infinity:1>, <enderio:block_infinity:1>, <enderio:block_infinity:1>], [<enderio:block_infinity:1>, <enderio:block_infinity:1>, <enderio:block_infinity:1>]]);
recipes.addShaped(<enderio:item_material:11>, [	[<ore:dustBedrock>, <ore:ingotElectricalSteel>, <ore:dustBedrock>], 	[<ore:ingotElectricalSteel>, <ore:gearStone>, <ore:ingotElectricalSteel>], 	[<ore:dustBedrock>, <ore:ingotElectricalSteel>, <ore:dustBedrock>]]);
recipes.addShaped(<enderio:item_basic_capacitor:1>, [	[<ore:platePlatinum>, <ore:plateDenseStaballoy>, <ore:platePlatinum>], 	[<ore:ingotTungstenSteel>, <enderio:item_basic_capacitor>, <ore:ingotTungstenSteel>], 	[<ore:boltTungstenCarbide>, null, <ore:boltTungstenCarbide>]]);
recipes.addShapeless(<enderio:item_alloy_nugget> * 9, [<enderio:item_alloy_ingot>]);
recipes.addShapeless(<enderio:item_alloy_ingot> * 9, [<enderio:block_alloy>]);
recipes.addShapeless(<enderio:item_alloy_nugget:1> * 9, [<enderio:item_alloy_ingot:1>]);
recipes.addShapeless(<enderio:item_alloy_ingot:1> * 9, [<enderio:block_alloy:1>]);
recipes.addShapeless(<enderio:item_alloy_nugget:2> * 9, [<enderio:item_alloy_ingot:2>]);
recipes.addShapeless(<enderio:item_alloy_ingot:2> * 9, [<enderio:block_alloy:2>]);
recipes.addShapeless(<enderio:item_alloy_nugget:3> * 9, [<enderio:item_alloy_ingot:3>]);
recipes.addShapeless(<enderio:item_alloy_ingot:3> * 9, [<enderio:block_alloy:3>]);
recipes.addShapeless(<enderio:item_alloy_nugget:4> * 9, [<enderio:item_alloy_ingot:4>]);
recipes.addShapeless(<enderio:item_alloy_ingot:4> * 9, [<enderio:block_alloy:4>]);
recipes.addShapeless(<enderio:item_alloy_nugget:5> * 9, [<enderio:item_alloy_ingot:5>]);
recipes.addShapeless(<enderio:item_alloy_ingot:5> * 9, [<enderio:block_alloy:5>]);
recipes.addShapeless(<enderio:item_alloy_nugget:6> * 9, [<enderio:item_alloy_ingot:6>]);
recipes.addShapeless(<enderio:item_alloy_ingot:6> * 9, [<enderio:block_alloy:6>]);
recipes.addShapeless(<enderio:item_alloy_nugget:7> * 9, [<enderio:item_alloy_ingot:7>]);
recipes.addShapeless(<enderio:item_alloy_ingot:7> * 9, [<enderio:block_alloy:7>]);
recipes.addShapeless(<enderio:item_alloy_nugget:8> * 9, [<enderio:item_alloy_ingot:8>]);
recipes.addShapeless(<enderio:item_alloy_ingot:8> * 9, [<enderio:block_alloy:8>]);
recipes.addShapeless(<enderio:item_alloy_nugget:9> * 9, [<enderio:item_alloy_ingot:9>]);
recipes.addShapeless(<enderio:item_alloy_ingot:9> * 9, [<enderio:block_alloy:9>]);
recipes.addShaped(<enderio:block_exit_rail>, [	[null, <ore:dustRegularRedstone>, null], 	[null, <ore:rail>, null], 	[null, <ore:craftingPiston>, null]]);
recipes.addShaped(<enderio:block_dark_steel_ladder>*7, [	[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>], 	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 	[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);
recipes.addShapeless(<gtadditions:ga_dust:32012>*3, [<ore:dustSilicon>, <ore:dustRegularIron>, <ore:dustRegularIron>,<ore:dustCoal>]);
recipes.addShapeless(<enderio:item_redstone_nor_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_or_filter>]);
recipes.addShapeless(<enderio:item_redstone_nand_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_and_filter>]);
recipes.addShapeless(<enderio:item_redstone_xnor_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_xor_filter>]);
recipes.addShapeless(<enderio:item_redstone_or_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_nor_filter>]);
recipes.addShapeless(<enderio:item_redstone_and_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_nand_filter>]);
recipes.addShapeless(<enderio:item_redstone_xor_filter>, [<minecraft:redstone_torch>, <enderio:item_redstone_xnor_filter>]);
recipes.addShaped(<enderio:item_material:3>, [	[null, null, null], 	[null,null,null], 	[<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);
recipes.addShaped(<enderio:item_material:13>, [	[<ore:nuggetSteel>, <gregtech:meta_item_1:12550>, <ore:nuggetSteel>], 	[<gregtech:meta_item_1:12550>, null, <gregtech:meta_item_1:12550>], 	[<ore:nuggetSteel>, <gregtech:meta_item_1:12550>, <ore:nuggetSteel>]]);
recipes.addShaped(<enderio:block_simple_wired_charger>, [	[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>], 	[<ore:compressed1xCobblestone>, <ore:cableGtSingleTin>, <ore:compressed1xCobblestone>], 	[<ore:plateSteel>, <gregtech:machine:501>, <ore:plateSteel>]]);
recipes.addShaped(<enderio:block_wired_charger>, [	[<ore:boltAluminium>, <gregtech:meta_item_1:32510>, <ore:boltAluminium>], 	[<ore:plateLead>, <enderio:block_simple_wired_charger>, <ore:plateLead>], 	[<ore:boltAluminium>, <ore:cableGtSingleIron>, <ore:boltAluminium>]]);
recipes.addShapeless(<enderio:item_fluid_filter>,[<enderio:item_basic_item_filter>]);
recipes.addShaped(<enderio:item_limited_item_filter>, [	[<ore:stickEmerald>, null, <ore:stickEmerald>], 	[<gregtech:meta_item_2:32477>, <enderio:item_advanced_item_filter>, <gregtech:meta_item_2:32477>], 	[<ore:stickEmerald>, null, <ore:stickEmerald>]]);
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [[null, <ore:wireGtSingleAluminium>, null], 	[<ore:ingotElectricalSteel>, <enderio:item_basic_item_filter>, <ore:ingotElectricalSteel>], 	[null, <ore:wireGtSingleAluminium>, null]]);


recipes.addShaped(<enderio:block_reinforced_obsidian>, [	[<ore:stickLongNaquadriaticTaranium>, <ore:blockNaquadriaticCompound>, <ore:stickLongNaquadriaticTaranium>], 	[<ore:blockNaquadriaticCompound>, <ore:obsidian>, <ore:blockNaquadriaticCompound>], [<ore:stickLongNaquadriaticTaranium>, <ore:blockNaquadriaticCompound>, <ore:stickLongNaquadriaticTaranium>]]);
recipes.addShaped(<enderio:block_farm_station>, [	[<ore:circuitAdvanced>, <ore:toolHoe>, <ore:circuitAdvanced>], 	[<ore:gearIronInfinity>, <ore:frameGtIron>, <ore:gearIronInfinity>], 	[<ore:gearSmallAluminium>, <ore:itemEnhancedMachineChassi>, <ore:gearSmallAluminium>]]);
recipes.addShaped(<enderio:item_capacitor_silver>, [	[<contenttweaker:silversteelgear>, <ore:gearSterlingSilver>, <contenttweaker:silversteelgear>], 	[<ore:plateSilver>, <enderio:item_basic_capacitor:1>, <ore:plateSilver>], 	[<ore:screwElectrum>, null, <ore:screwElectrum>]]);
recipes.addShaped(<enderio:item_basic_capacitor:2>, [[<ore:gearHsse>, <ore:platePolonium>, <ore:gearHsse>], 	[<ore:plateDenseNaquadahEnriched>, <enderio:item_basic_capacitor:1>, <ore:plateDenseNaquadahEnriched>], 	[<ore:screwTritanium>, null, <ore:screwTritanium>]]);
recipes.addShaped(<enderio:item_material:12>, [	[<ore:dustBedrock>, <ore:ingotEnergeticalloy>, <ore:dustBedrock>], 	[<ore:ingotEnergeticalloy>, <ore:gearIronInfinity>, <ore:ingotEnergeticalloy>], 	[<ore:dustBedrock>, <ore:ingotEnergeticalloy>, <ore:dustBedrock>]]);
recipes.addShaped(<enderio:block_powered_spawner>, [	[<gregtech:meta_item_1:32654>, <ore:plateEnderium>, <gregtech:meta_item_1:32654>], 	[<ore:plateEnderium>, <ore:circuitElite>, <ore:plateEnderium>], 	[<ore:gearEnergized>, <ore:itemMachineChassi>, <ore:gearEnergized>]]);
recipes.addShaped(<enderio:block_inventory_panel>, [	[<extendedcrafting:material:2>, <gregtech:meta_item_2:32433>, <extendedcrafting:material:2>], 	[<ore:ingotDarkSteel>, <gtadditions:ga_meta_item:32579>, <ore:ingotDarkSteel>], 	[<extendedcrafting:material:2>, <gregtech:meta_item_2:32433>, <extendedcrafting:material:2>]]);
recipes.addShaped(<enderio:item_endergy_conduit:2>*2, [	[<ore:itemConduitBinder>, <ore:plateAluminium>, <ore:itemConduitBinder>], 	[<ore:plateIron>, <ore:wireGtDoubleAluminium>, <ore:plateIron>], 	[<ore:itemConduitBinder>, <ore:plateAluminium>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_endergy_conduit:3>*2, [	[<ore:itemConduitBinder>, <ore:plateGold>, <ore:itemConduitBinder>], 	[<ore:plateAluminium>, <ore:wireGtDoubleGold>, <ore:plateAluminium>], 	[<ore:itemConduitBinder>, <ore:plateGold>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_endergy_conduit:4>*2, [	[<ore:itemConduitBinder>, <ore:plateGold>, <ore:itemConduitBinder>], 	[<ore:plateCopper>, <ore:wireGtDoubleCopper>, <ore:plateCopper>], 	[<ore:itemConduitBinder>, <ore:plateGold>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_endergy_conduit:5>*2, [	[<ore:itemConduitBinder>, <ore:plateSilver>, <ore:itemConduitBinder>],   [<ore:plateCopper>, <ore:wireGtDoubleSilver>, <ore:plateCopper>], 	[<ore:itemConduitBinder>, <ore:plateSilver>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_endergy_conduit:6>*2, [	[<ore:itemConduitBinder>, <ore:plateElectrum>, <ore:itemConduitBinder>], 	[<ore:plateSilver>, <ore:wireGtDoubleElectrum>, <ore:plateSilver>], 	[<ore:itemConduitBinder>, <ore:plateElectrum>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_endergy_conduit:7>*2, [ [<ore:itemConduitBinder>, <ore:plateEnergeticsilver>, <ore:itemConduitBinder>], 	[<ore:plateElectrum>, <ore:wireGtDoubleEnergeticsilver>, <ore:plateElectrum>], 	[<ore:itemConduitBinder>, <ore:plateEnergeticsilver>, <ore:itemConduitBinder>]]);
recipes.addShaped(<enderio:item_soul_vial>, [	[null, <contenttweaker:treatedwoodplanks>, null], 	[<extrautils2:decorativeglass>, null, <extrautils2:decorativeglass>], 	[null, <extrautils2:decorativeglass>, null]]);
recipes.addShaped(<enderio:item_material:6>, [	[null, null, null], 	[<contenttweaker:boundleather>, <contenttweaker:boundleather>, null], 	[<ore:stickLongSteel>, <contenttweaker:boundleather>, null]]);
recipes.addShaped(<enderio:item_material:7>, [	[null, null, null], 	[<ore:itemGliderWing>, <ore:stickLongBlackSteel>, <ore:itemGliderWing>], 	[null, null, null]]);
recipes.addShaped(<enderio:item_material:73>, [	[<ore:nuggetSteel>, <ore:ingotDarkSteel>, <ore:nuggetSteel>], 	[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>], 	[<ore:nuggetSteel>, <ore:ingotDarkSteel>, <ore:nuggetSteel>]]);
recipes.addShaped(<enderio:item_dark_steel_axe>, [	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 	[<ore:ingotDarkSteel>, <ore:stickObsidian>, null], 	[null, <ore:stickObsidian>, null]]);
recipes.addShaped(<enderio:item_dark_steel_pickaxe>, [	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 	[null, <ore:stickObsidian>, null], 	[null, <ore:stickObsidian>, null]]);
recipes.addShaped(<enderio:item_dark_steel_sword>, [	[null, <ore:ingotDarkSteel>, null], 	[<ore:gearDark>, <ore:ingotDarkSteel>, <ore:gearDark>], 	[<ore:itemWeatherCrystal>, <ore:stickObsidian>, <ore:itemWeatherCrystal>]]);
recipes.addShaped(<enderio:item_dark_steel_bow>, [	[null, <ore:ingotDarkSteel>, <contenttweaker:reinforcedstring>], 	[<ore:stickObsidian>, <ore:itemWeatherCrystal>, <contenttweaker:reinforcedstring>], 	[null, <ore:ingotDarkSteel>, <contenttweaker:reinforcedstring>]]);
recipes.addShaped(<enderio:item_dark_steel_shears>, [	[null, <ore:ingotDarkSteel>, null], 	[null, null, <ore:ingotDarkSteel>], 	[null, null, null]]);
recipes.addShaped(<enderio:item_dark_steel_crook>, [	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickObsidian>], 	[null, null, <ore:stickObsidian>]]);
recipes.addShaped(<enderio:item_dark_steel_treetap>, [	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickObsidian>], 	[<ore:nuggetDarkSteel>, null, null], 	[null, null, null]]);
recipes.addShaped(<enderio:item_dark_steel_hand>, [	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickObsidian>], 	[<ore:nuggetDarkSteel>, <ore:ingotDarkSteel>, <ore:stickObsidian>], 	[null, null, <ore:stickObsidian>]]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget>*9,[<enderio:item_alloy_endergy_ingot>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:1>*9,[<enderio:item_alloy_endergy_ingot:1>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:2>*9,[<enderio:item_alloy_endergy_ingot:2>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:3>*9,[<enderio:item_alloy_endergy_ingot:3>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:4>*9,[<enderio:item_alloy_endergy_ingot:4>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:5>*9,[<enderio:item_alloy_endergy_ingot:5>]);
recipes.addShapeless(<enderio:item_alloy_endergy_nugget:6>*9,[<enderio:item_alloy_endergy_ingot:6>]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot>,[<enderio:item_alloy_endergy_nugget>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:1>,[<enderio:item_alloy_endergy_nugget:1>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:2>,[<enderio:item_alloy_endergy_nugget:2>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:3>,[<enderio:item_alloy_endergy_nugget:3>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:4>,[<enderio:item_alloy_endergy_nugget:4>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:5>,[<enderio:item_alloy_endergy_nugget:5>*9]);
recipes.addShapeless(<enderio:item_alloy_endergy_ingot:6>,[<enderio:item_alloy_endergy_nugget:6>*9]);
recipes.addShaped(<enderio:block_travel_anchor>, [	[<ore:plateEnderPearl>, <ore:plateStainlessSteel>, <ore:plateEnderPearl>], 	[<ore:plateStainlessSteel>, <overloaded:compressed_obsidian>, <ore:plateStainlessSteel>], 	[<ore:plateEnderPearl>, <ore:plateStainlessSteel>, <ore:plateEnderPearl>]]);
recipes.addShaped(<enderio:item_stellar_alloy_sword>, [	[null, <ore:plateStellaralloy>, null], 	[null, <ore:plateStellaralloy>, null], 	[null, <enderio:item_end_steel_sword>, null]]);
recipes.addShaped(<enderio:item_yeta_wrench>, [	[<ore:ingotPulsatingIron>, <gregtech:meta_tool:8>, <ore:ingotPulsatingIron>], 	[<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>], 	[null, <ore:ingotPulsatingIron>, null]]);
recipes.addShaped(<enderio:item_cold_fire_igniter>, [	[null, <ore:ingotDarkSteel>, null], 	[null, null, <ore:itemFlint>], 	[null, null, null]]);
recipes.addShaped(<enderio:item_travel_staff>, [	[null, null, <ore:itemPulsatingCrystal>], 	[null, <ore:stickLongTungstenSteel>, null], 	[<ore:stickLongTungstenSteel>, null, null]]);
recipes.addShaped(<enderio:item_inventory_remote>, [	[<appliedenergistics2:material:41>, <appliedenergistics2:wireless_access_point>, <appliedenergistics2:material:41>], 	[<appliedenergistics2:material:42>, <enderio:block_inventory_panel>, <appliedenergistics2:material:42>], 	[<ore:plateTitanium>, <ore:springTitanium>, <ore:plateTitanium>]]);
recipes.addShaped(<enderio:item_inventory_remote:1>, [	[<ore:plateDoubleTungstenSteel>, <ore:plateDenseTungstenSteel>, <ore:plateDoubleTungstenSteel>], 	[<ore:circuitExtreme>, <enderio:item_inventory_remote>, <ore:circuitExtreme>], 	[<ore:cableGtDoubleTungsten>, <appliedenergistics2:energy_cell>, <ore:cableGtDoubleTungsten>]]);
recipes.addShaped(<enderio:item_inventory_remote:2>, [	[<ore:plateHsss>, <ore:circuitMaster>, <ore:plateHsss>], 	[<ore:springHsss>, <enderio:item_inventory_remote:1>, <ore:springHsss>], 	[<ore:circuitElite>, <ore:stickLongHsss>, <ore:circuitElite>]]);
recipes.addShaped(<enderio:item_existing_item_filter>, [	[null, <ore:craftingRedstoneTorch>, null], 	[null, <enderio:item_advanced_item_filter>, null], 	[null, <thermalfoundation:material:512>, null]]);
recipes.addShaped(<enderio:item_inventory_charger_simple>, [	[<ore:plateHsse>, <gregtech:meta_item_1:32520>, <ore:plateHsse>], 	[<ore:cableGtSingleEnergeticsilver>, <thermalfoundation:material:512>, <ore:cableGtSingleEnergeticsilver>], 	[<ore:plateHsse>, <gregtech:machine:682>, <ore:plateHsse>]]);
recipes.addShaped(<enderio:item_inventory_charger_basic>, [	[<ore:plateHssg>, <gregtech:meta_item_1:32531>, <ore:plateHssg>], 	[<ore:cableGtSingleEnergeticsilver>, <thermalfoundation:material:512>, <ore:cableGtSingleEnergeticsilver>], 	[<ore:plateHssg>, <gregtech:machine:683>, <ore:plateHssg>]]);
recipes.addShaped(<enderio:item_inventory_charger_vibrant>, [	[<ore:plateHsss>, <gtadditions:ga_meta_item2:1>, <ore:plateHsss>], 	[<ore:cableGtSingleEnergeticsilver>, <thermalfoundation:material:512>, <ore:cableGtSingleEnergeticsilver>], 	[<ore:plateHsss>, <gregtech:machine:684>, <ore:plateHsss>]]);
recipes.addShaped(<enderio:item_dark_steel_shield>, [	[<ore:ingotDarkSteel>, <ore:gearDark>, <ore:ingotDarkSteel>], 	[<ore:gearDark>, <minecraft:shield>, <ore:gearDark>], 	[<ore:ingotDarkSteel>, <ore:gearDark>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<enderio:item_end_steel_shield>, [	[<enderio:block_end_iron_bars>, <ore:ingotEndSteel>, <enderio:block_end_iron_bars>], 	[<ore:ingotEndSteel>, <enderio:item_dark_steel_shield>, <ore:ingotEndSteel>], 	[<enderio:block_end_iron_bars>, <ore:ingotEndSteel>, <enderio:block_end_iron_bars>]]);
recipes.addShaped(<enderio:item_dark_steel_upgrade>, [	[<enderio:block_end_iron_bars>, <ore:ingotDarkSteel>, <enderio:block_end_iron_bars>], 	[<ore:ingotDarkSteel>, <ore:xuUpgradeBlank>, <ore:ingotDarkSteel>], 	[<enderio:block_end_iron_bars>, <ore:ingotDarkSteel>, <enderio:block_end_iron_bars>]]);
recipes.addShaped(<enderio:block_soul_binder>, [	[<ore:plateTungstenSteel>, <ore:ingotDarkSteel>, <ore:plateTungstenSteel>], 	[<ore:skullZombieElectrode>, <ore:itemSoulMachineChassi>, <ore:skullZombieElectrode>], 	[<ore:plateTungstenSteel>, <gregtech:machine:504>, <ore:plateTungstenSteel>]]);
recipes.addShaped(<enderio:item_conduit_probe>, [	[<ore:nuggetDarkSteel>, null, <ore:nuggetDarkSteel>], 	[<ore:stickLongBlackSteel>, <ore:plateEnergeticsilver>, <ore:stickLongBlackSteel>], 	[null, null, null]]);
recipes.addShaped(<enderio:item_conduit_probe>, [	[null, null, null],	[<ore:nuggetDarkSteel>, null, <ore:nuggetDarkSteel>], 	[<ore:stickLongBlackSteel>, <ore:plateEnergeticsilver>, <ore:stickLongBlackSteel>]]);
recipes.addShaped(<enderio:item_alloy_ball:6>, [	[null, <ore:nuggetDarkSteel>, null], 	[<ore:nuggetDarkSteel>, <ore:ingotDarkSteel>, <ore:nuggetDarkSteel>], 	[null, <ore:nuggetDarkSteel>, null]]);



recipes.addShaped(<enderio:item_stellar_alloy_pickaxe>, [	[<ore:plateStellaralloy>, <ore:plateStellaralloy>, <ore:plateStellaralloy>], 	[null, <ore:stickStellaralloy>, null], 	[null, <enderio:item_end_steel_pickaxe>, null]]);
recipes.addShaped(<enderio:item_stellar_alloy_axe>, [	[<ore:plateStellaralloy>, <ore:plateStellaralloy>, null], 	[<ore:plateStellaralloy>, <ore:stickStellaralloy>, null], 	[null, <enderio:item_end_steel_axe>, null]]);
recipes.addShaped(<enderio:item_end_steel_sword>, [	[null, <ore:ingotEndSteel>, null], 	[<enderio:block_end_iron_bars>, <ore:ingotEndSteel>, <enderio:block_end_iron_bars>], 	[null, <enderio:item_dark_steel_sword>, null]]);
recipes.addShaped(<enderio:item_end_steel_axe>, [	[<ore:ingotEndSteel>, <ore:ingotEndSteel>, null], 	[<ore:ingotEndSteel>, <ore:stickObsidian>, null], 	[null, <enderio:item_dark_steel_axe>, null]]);
recipes.addShaped(<enderio:item_end_steel_pickaxe>, [	[<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>], 	[null, <ore:stickObsidian>, null], 	[null, <enderio:item_dark_steel_pickaxe>, null]]);
recipes.addShaped(<enderio:item_basic_item_filter>, [	[<ore:plateSteel>, null, <ore:plateSteel>], 	[<ore:plateSteel>, <gregtech:meta_item_1:32729>, <ore:plateSteel>], 	[<ore:plateSteel>, null, <ore:plateSteel>]]);
recipes.addShaped(<enderio:item_advanced_item_filter>, [	[<ore:plateEnergeticsilver>, <ore:plateAluminium>, <ore:plateEnergeticsilver>], 	[<enderio:item_basic_item_filter>, <ore:springAluminium>, <enderio:item_basic_item_filter>], 	[<ore:plateEnergeticsilver>, <ore:plateAluminium>, <ore:plateEnergeticsilver>]]);
recipes.addShaped(<enderio:item_big_item_filter>, [	[<ore:ingotMelodicAlloy>, <ore:plateTitanium>, <ore:ingotMelodicAlloy>], 	[<enderio:item_advanced_item_filter>, <ore:springTitanium>, <enderio:item_advanced_item_filter>], 	[<ore:ingotMelodicAlloy>, <ore:plateTitanium>, <ore:ingotMelodicAlloy>]]);

recipes.addShapeless(<enderio:item_redstone_or_filter>,[<enderio:item_basic_item_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_and_filter>,[<enderio:item_redstone_or_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_nor_filter>,[<enderio:item_redstone_and_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_nand_filter>,[<enderio:item_redstone_nor_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_xor_filter>,[<enderio:item_redstone_nand_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_xnor_filter>,[<enderio:item_redstone_xor_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_toggle_filter>,[<enderio:item_redstone_xnor_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_counting_filter>,[<enderio:item_redstone_toggle_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_sensor_filter>,[<enderio:item_redstone_counting_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_timer_filter>,[<enderio:item_redstone_sensor_filter>,<minecraft:redstone_torch>]);
recipes.addShapeless(<enderio:item_redstone_not_filter>,[<enderio:item_redstone_timer_filter>,<minecraft:redstone_torch>]);

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_or_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_and_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_nor_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_nand_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_xor_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_xnor_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();   

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_toggle_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();   

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_counting_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();   

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_sensor_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();   

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_timer_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();  

assembler.recipeBuilder()
    .inputs(<enderio:item_basic_item_filter>,<minecraft:redstone_torch>)
    .outputs(<enderio:item_redstone_not_filter>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .EUt(400)
    .duration(120)
    .buildAndRegister();  

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_nugget:5>*8,<minecraft:diamond>)
    .outputs(<enderio:item_material:14>)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2204>,<gregtech:meta_item_1:2216>,<gregtech:meta_item_1:2033>)
    .fluidInputs(<liquid:liquid_sunshine>*1000)
    .outputs(<enderio:item_material:38>*4)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:16>)
    .outputs(<enderio:item_material:17>)
    .fluidInputs(<liquid:osmium>*144)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12527>,<gregtech:meta_item_1:9963>*9)
    .outputs(<enderio:item_material:18>)
    .duration(800)
    .EUt(90)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:block_alloy:6>*3,<enderio:item_alloy_ingot:6>*4)
    .outputs(<enderio:block_dark_steel_anvil>)
    .duration(400)
    .EUt(24)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:wooden_pressure_plate>,<minecraft:redstone_torch>)
    .outputs(<enderio:block_painted_pressure_plate:1>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:stone_pressure_plate>,<minecraft:redstone_torch>)
    .outputs(<enderio:block_painted_pressure_plate:3>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:heavy_weighted_pressure_plate>,<minecraft:redstone_torch>)
    .outputs(<enderio:block_painted_pressure_plate:5>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:light_weighted_pressure_plate>,<minecraft:redstone_torch>)
    .outputs(<enderio:block_painted_pressure_plate:7>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:block_painted_pressure_plate:8>,<minecraft:redstone_torch>)
    .outputs(<enderio:block_painted_pressure_plate:9>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32213>,<extendedcrafting:material:129>*9)
    .outputs(<enderio:item_material:19>)
    .duration(400)
    .EUt(50)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<enderio:item_material:19>)
    .outputs(<enderio:item_material:34>)
    .duration(800)
    .EUt(400)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:nutrient_distillation>*25)
    .inputs(<minecraft:glowstone_dust>)
    .chancedOutput(<enderio:block_holier_fog>, 500, 100)
    .chancedOutput(<enderio:block_holier_fog>, 500, 100)
    .chancedOutput(<enderio:block_holier_fog>, 500, 100)
    .chancedOutput(<enderio:block_holier_fog>, 500, 100)
    .outputs(<gregtech:meta_item_1:330>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();


assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12569>*5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<enderio:item_stellar_alloy_helmet>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12569>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<enderio:item_stellar_alloy_chestplate>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12569>*7)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<enderio:item_stellar_alloy_leggings>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12569>*4)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<enderio:item_stellar_alloy_boots>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:8>*5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<enderio:item_end_steel_helmet>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:8>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<enderio:item_end_steel_chestplate>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:8>*7)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<enderio:item_end_steel_leggings>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:8>*4)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<enderio:item_end_steel_boots>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6>*5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<enderio:item_dark_steel_helmet>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<enderio:item_dark_steel_chestplate>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6>*7)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<enderio:item_dark_steel_leggings>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6>*4)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<enderio:item_dark_steel_boots>.withTag({}))
    .duration(800)
    .EUt(800)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<enderio:item_material>,<enderio:item_material:51>)
    .outputs(<enderio:item_material:1>)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<enderio:item_material:1>,<enderio:item_material:67>)
    .outputs(<enderio:item_material:54>)
    .duration(400)
    .EUt(240)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitExtreme>, <enderio:item_big_item_filter>,<gregtech:meta_item_1:17235>*16)
    .fluidInputs(<liquid:energeticsilver>*288)
    .outputs(<enderio:item_big_advanced_item_filter>)
    .EUt(2000)
    .duration(800)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<enderio:item_material:54>,<enderio:item_material:52>)
    .outputs(<enderio:item_material:53>)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<enderio:item_material:67>*3,<gregtech:meta_item_1:2522>*2)
    .outputs(<enderio:item_material:52>*4)
    .duration(800)
    .EUt(900)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<minecraft:glowstone_dust>)
    .notConsumable(<extrautils2:suncrystal>)
    .fluidInputs(<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:liquid_sunshine>*1000)
    .duration(400)
    .EUt(512)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<minecraft:glowstone_dust>)
    .notConsumable(<extrautils2:suncrystal>)
    .fluidInputs(<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:liquid_sunshine>*1000)
    .duration(400)
    .EUt(512)
    .buildAndRegister();





recipes.addShaped(<enderio:block_inventory_panel>, [	[<ore:plateAluminium>, <gregtech:meta_item_2:32433>, <ore:plateAluminium>], 	[<appliedenergistics2:material:24>, <ore:circuitAdvanced>, <appliedenergistics2:material:24>], 	[<ore:plateAluminium>, <gregtech:meta_item_2:32433>, <ore:plateAluminium>]]);
recipes.addShapeless(<enderio:item_extract_speed_downgrade>,[<enderio:item_extract_speed_upgrade>]);













