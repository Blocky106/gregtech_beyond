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
import mods.appliedenergistics2.Grinder;






furnace.remove(<threng:material>);

Grinder.removeRecipe(<gregtech:ore_platinum_0>);


recipes.addShaped(<appliedenergistics2:interface>, [	[<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>], 	[<appliedenergistics2:material:43>, <gregtech:machine:502>, <appliedenergistics2:material:44>], [<ore:plateAluminium>, <ore:plateGold>, <ore:plateAluminium>]]);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [	[<ore:plateStainlessSteel>, <ore:plateLapis>, <ore:plateStainlessSteel>], 	[<appliedenergistics2:material:44>, <appliedenergistics2:interface>, <appliedenergistics2:material:43>], 	[<ore:plateStainlessSteel>, <ore:plateLapis>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<appliedenergistics2:charger>, [	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>], 	[<appliedenergistics2:material:24>, null, null], 	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [	[<ore:plateMagnalium>, <ore:boltAluminium>, <ore:plateMagnalium>], 	[<appliedenergistics2:material:43>, <gregtech:machine:502>, <appliedenergistics2:material:44>], 	[<ore:plateMagnalium>, <ore:boltAluminium>, <ore:plateMagnalium>]]);
recipes.addShaped(<appliedenergistics2:drive>, [	[<gregtech:meta_item_1:32651>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32651>], 	[<ore:plateKanthal>, <ore:ringKanthal>, <ore:plateKanthal>], 	[<gregtech:meta_item_1:32641>, <ironchest:iron_chest:2>, <gregtech:meta_item_1:32641>]]);
recipes.addShaped(<appliedenergistics2:grindstone>, [	[<ore:dustBronze>, <contenttweaker:woodgear>, <ore:dustBronze>], 	[<ore:gemNetherQuartz>, <ore:craftingFurnace>, <ore:gemNetherQuartz>], 	[<ore:stoneCobble>, <ore:gemNetherQuartz>, <ore:stoneCobble>]]);
recipes.addShaped(<appliedenergistics2:inscriber>, [	[<enderio:item_basic_capacitor>, <gregtech:meta_item_1:32641>, <ore:plateKanthal>], 	[<appliedenergistics2:material>, null, <gregtech:meta_item_1:32681>], 	[<enderio:item_basic_capacitor>, <gregtech:meta_item_1:32641>, <ore:plateKanthal>]]);
recipes.addShaped(<appliedenergistics2:part:180>, [	[null, <appliedenergistics2:material:17>, <gtadditions:ga_transparent_casing:2>], 	[<ore:circuitAdvanced>, <gregtech:machine:2499>, <gtadditions:ga_transparent_casing:3>], 	[null, <appliedenergistics2:material:17>, <gtadditions:ga_transparent_casing:3>]]);
recipes.addShaped(<appliedenergistics2:part:380>, [	[null, <appliedenergistics2:material:17>, null], 	[<appliedenergistics2:material:44>, <ore:itemIlluminatedPanel>, <appliedenergistics2:material:43>], 	[null, <enderio:item_basic_capacitor>, null]]);
recipes.addShaped(<appliedenergistics2:part:460>, [	[null, <ore:circuitGood>, null], 	[<ore:componentArtificialMuscle>, <enderio:item_basic_capacitor>, <ore:componentArtificialMuscle>], 	[<ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>]]);
recipes.addShaped(<appliedenergistics2:controller>,[	[<ore:plateKanthal>, <gregtech:meta_item_1:2111>, <ore:plateKanthal>], 	[<ore:platePlastic>, <ore:circuitAdvanced>, <ore:platePlastic>], [<ore:plateKanthal>, <gregtech:meta_item_1:2111>, <ore:plateKanthal>]]);
recipes.addShaped(<appliedenergistics2:condenser>, [[<ore:ingotPalladium>, <ore:pearlFluix>, <ore:ingotPalladium>], 	[<ore:pearlFluix>, <enderio:item_basic_capacitor>, <ore:pearlFluix>], 	[<ore:ingotPalladium>, <ore:pearlFluix>, <ore:ingotPalladium>]]);
recipes.addShaped(<appliedenergistics2:part:470>, [	[<appliedenergistics2:part:36>, <appliedenergistics2:part:36>, <appliedenergistics2:part:36>], 	[<enderio:item_basic_capacitor>, <appliedenergistics2:part:460>, <enderio:item_basic_capacitor>], 	[<ore:itemInsulatedGlassCable>, <ore:itemInsulatedGlassCable>, <ore:itemInsulatedGlassCable>]]);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<appliedenergistics2:material:43>, <ore:pearlFluix>, <appliedenergistics2:material:44>], 	[<gregtech:meta_item_1:32642>, <gregtech:machine:503>, <gregtech:meta_item_1:32642>], 	[<appliedenergistics2:part:16>, <contenttweaker:titaniumcircuit>, <appliedenergistics2:part:16>]]);
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [	[<appliedenergistics2:material:17>, <enderio:item_basic_capacitor:1>, <appliedenergistics2:material:17>], 	[<appliedenergistics2:part:56>, <appliedenergistics2:fluix_block>, <appliedenergistics2:part:56>], 	[<appliedenergistics2:material:17>, <enderio:item_basic_capacitor:1>, <appliedenergistics2:material:17>]]);
recipes.addShaped(<ae2stuff:grower>, [	[<appliedenergistics2:quartz_growth_accelerator>, <contenttweaker:tungstencircuit>, <appliedenergistics2:quartz_growth_accelerator>], 	[<appliedenergistics2:quartz_growth_accelerator>, <enderio:item_basic_capacitor:2>, <appliedenergistics2:quartz_growth_accelerator>], 	[<appliedenergistics2:quartz_growth_accelerator>, <contenttweaker:tungstencircuit>, <appliedenergistics2:quartz_growth_accelerator>]]);
recipes.addShaped(<appliedenergistics2:part:340>, [	[null, <appliedenergistics2:part:360>, null], 	[null, <appliedenergistics2:material:24>, null], 	[null, <ore:circuitExtreme>, null]]);
recipes.addShaped(<contenttweaker:advancedcraftingunit>, [	[<ore:plateNiobiumTitanium>, <appliedenergistics2:material:6>, <ore:plateNiobiumTitanium>], 	[<contenttweaker:hssgcircuit>, <appliedenergistics2:crafting_unit>, <contenttweaker:hssgcircuit>], 	[<ore:plateNiobiumTitanium>, <appliedenergistics2:material:6>, <ore:plateNiobiumTitanium>]]);
recipes.addShaped(<appliedenergistics2:energy_cell>, [	[<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>], 	[<appliedenergistics2:material:1>, <gregtech:meta_item_1:32500>, <appliedenergistics2:material:1>], 	[<appliedenergistics2:quartz_glass>, <ore:dustFluix>, <appliedenergistics2:quartz_glass>]]);
recipes.addShaped(<appliedenergistics2:quantum_link>, [	[<gtadditions:ga_transparent_casing:4>, <ore:plateNiobiumTitanium>, <gtadditions:ga_transparent_casing:4>], 	[<ore:plateNiobiumTitanium>, <ore:circuitSuperconductor>, <ore:plateNiobiumTitanium>], 	[<gtadditions:ga_transparent_casing:4>, <ore:plateNiobiumTitanium>, <gtadditions:ga_transparent_casing:4>]]);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [	[<ore:plateYttriumBariumCuprate>, <ore:wireGtSingleLuvSuperconductor>, <ore:plateYttriumBariumCuprate>], 	[<ore:wireGtSingleLuvSuperconductor>, <appliedenergistics2:energy_cell>, <ore:wireGtSingleLuvSuperconductor>], 	[<ore:plateYttriumBariumCuprate>, <ore:wireGtSingleLuvSuperconductor>, <ore:plateYttriumBariumCuprate>]]);
recipes.addShaped(<appliedenergistics2:crank>, [	[<ore:itemNutritiousStick>, <ore:stickLongWood>, <ore:stickLongWood>], 	[null, null, <ore:stickLongWood>], 	[null, null, <ore:itemNutritiousStick>]]);
recipes.addShaped(<appliedenergistics2:material:28>, [	[null, <ore:plateAluminium>, <contenttweaker:steel_item_casing>], 	[<appliedenergistics2:material:23>, <ore:plateAluminium>, <ore:plateIron>], 	[null, <ore:plateAluminium>, <contenttweaker:steel_item_casing>]]);recipes.addShaped(<appliedenergistics2:material:30>, [	[<ore:crystalFluix>, null, <ore:plateTungsten>], 	[<ore:plateTitanium>, <appliedenergistics2:material:28>, <appliedenergistics2:material:23>], 	[<ore:crystalFluix>, null, null]]);
recipes.addShaped(<appliedenergistics2:memory_card>, [	[null, null, null], 	[<ore:plateTungsten>, <ore:plateTungsten>, <appliedenergistics2:material:23>], 	[<ore:plateGold>, <ore:plateRedstone>, <ore:crystalFluix>]]);
recipes.addShaped(<appliedenergistics2:material:39>, [	[<appliedenergistics2:quartz_glass>, <ore:plateAluminium>, <appliedenergistics2:quartz_glass>], 	[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>], 	[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<appliedenergistics2:part:360>, [	[<ore:screwStainlessSteel>, <ore:circuitExtreme>, <ore:screwStainlessSteel>], 	[<extendedcrafting:table_advanced>, <appliedenergistics2:part:380>, <extendedcrafting:table_advanced>], 	[<ore:screwStainlessSteel>, <ore:circuitExtreme>, <ore:screwStainlessSteel>]]);



Grinder.removeRecipe(<nuclearcraft:ore>);
Grinder.removeRecipe(<projectred-core:resource_item:102>);
Grinder.removeRecipe(<nuclearcraft:alloy>);
Grinder.removeRecipe(<qmd:ingot:8>);
Grinder.removeRecipe(<nuclearcraft:ingot:12>);
Grinder.removeRecipe(<qmd:ingot:5>);
Grinder.removeRecipe(<nuclearcraft:ingot:13>);
Grinder.removeRecipe(<nuclearcraft:ingot:1>);
Grinder.removeRecipe(<thaumcraft:ingot:2>);
Grinder.removeRecipe(<nuclearcraft:ingot>);
Grinder.removeRecipe(<qmd:ingot:7>);
Grinder.removeRecipe(<projectred-core:resource_item:101>);
Grinder.removeRecipe(<projectred-core:resource_item:100>);
Grinder.removeRecipe(<qmd:ingot:10>);
Grinder.removeRecipe(<appliedenergistics2:charged_quartz_ore>);
Grinder.removeRecipe(<gregtech:ore_certus_quartz_0:5>);
Grinder.removeRecipe(<gregtech:ore_certus_quartz_0:3>);
Grinder.removeRecipe(<gregtech:ore_certus_quartz_0:1>);
Grinder.removeRecipe(<gregtech:ore_certus_quartz_0:2>);
Grinder.removeRecipe(<gregtech:meta_item_1:8202>);
Grinder.removeRecipe(<appliedenergistics2:quartz_ore>);
Grinder.removeRecipe(<gregtech:ore_certus_quartz_0>);
Grinder.removeRecipe(<appliedenergistics2:material>);
Grinder.removeRecipe(<thermalfoundation:material:895>);
Grinder.removeRecipe(<gregtech:meta_item_1:10047>);
Grinder.removeRecipe(<forestry:ingot_copper>);
Grinder.removeRecipe(<minecraft:quartz>);
Grinder.removeRecipe(<gregtech:meta_item_1:10112>);
Grinder.removeRecipe(<gregtech:meta_item_1:10079>);
Grinder.removeRecipe(<minecraft:gold_ingot>);
Grinder.removeRecipe(<thermalfoundation:material:131>);
Grinder.removeRecipe(<thermalfoundation:material:129>);
Grinder.removeRecipe(<thermalfoundation:material:162>);
Grinder.removeRecipe(<appliedenergistics2:material:7>);
Grinder.removeRecipe(<minecraft:iron_ingot>);
Grinder.removeRecipe(<forestry:ingot_tin>);
Grinder.removeRecipe(<thermalfoundation:material:134>);
Grinder.removeRecipe(<gregtech:meta_item_1:10094>);
Grinder.removeRecipe(<thermalfoundation:material:161>);
Grinder.removeRecipe(<thermalfoundation:material:128>);
Grinder.removeRecipe(<gregtech:meta_item_1:10071>);
Grinder.removeRecipe(<thermalfoundation:ore:6>);
Grinder.removeRecipe(<gregtech:meta_item_1:10126>);
Grinder.removeRecipe(<thermalfoundation:material:133>);
Grinder.removeRecipe(<gregtech:meta_item_1:10095>);
Grinder.removeRecipe(<gregtech:meta_item_1:10062>);
Grinder.removeRecipe(<minecraft:ender_pearl>);
Grinder.removeRecipe(<thermalfoundation:material:130>);
Grinder.removeRecipe(<thermalfoundation:material:163>);
Grinder.removeRecipe(<gregtech:meta_item_1:10051>);
Grinder.removeRecipe(<gregtech:meta_item_1:10018>);
Grinder.removeRecipe(<minecraft:coal:1>);
Grinder.removeRecipe(<minecraft:coal>);
Grinder.removeRecipe(<gregtech:meta_item_1:10001>);
Grinder.removeRecipe(<forestry:ingot_bronze>);
Grinder.removeRecipe(<gregtech:meta_item_1:10035>);
Grinder.removeRecipe(<gregtech:ore_coal_0>);
Grinder.removeRecipe(<gregtech:ore_coal_0:1>);
Grinder.removeRecipe(<gregtech:ore_coal_0:2>);
Grinder.removeRecipe(<gregtech:ore_coal_0:3>);
Grinder.removeRecipe(<minecraft:coal_ore>);
Grinder.removeRecipe(<gregtech:ore_coal_0:5>);
Grinder.removeRecipe(<gregtech:ore_silver_0:5>);
Grinder.removeRecipe(<gregtech:ore_silver_0:1>);
Grinder.removeRecipe(<gregtech:ore_silver_0:2>);
Grinder.removeRecipe(<thermalfoundation:ore:2>);
Grinder.removeRecipe(<gregtech:ore_silver_0:3>);
Grinder.removeRecipe(<gregtech:ore_silver_0>);
Grinder.removeRecipe(<gregtech:ore_tin_0:5>);
Grinder.removeRecipe(<gregtech:ore_tin_0:3>);
Grinder.removeRecipe(<gregtech:ore_tin_0:1>);
Grinder.removeRecipe(<gregtech:ore_tin_0>);
Grinder.removeRecipe(<forestry:resources:2>);
Grinder.removeRecipe(<gregtech:ore_tin_0:2>);
Grinder.removeRecipe(<thermalfoundation:ore:1>);
Grinder.removeRecipe(<gregtech:ore_gold_0>);
Grinder.removeRecipe(<gregtech:ore_gold_0:2>);
Grinder.removeRecipe(<gregtech:ore_gold_0:3>);
Grinder.removeRecipe(<gregtech:ore_gold_0:1>);
Grinder.removeRecipe(<gregtech:ore_gold_0:5>);
Grinder.removeRecipe(<minecraft:gold_ore>);
Grinder.removeRecipe(<gregtech:ore_copper_0:5>);
Grinder.removeRecipe(<gregtech:ore_lead_0:2>);
Grinder.removeRecipe(<gregtech:ore_copper_0:2>);
Grinder.removeRecipe(<thermalfoundation:ore>);
Grinder.removeRecipe(<thermalfoundation:ore:3>);
Grinder.removeRecipe(<gregtech:ore_lead_0:1>);
Grinder.removeRecipe(<gregtech:ore_lead_0:3>);
Grinder.removeRecipe(<forestry:resources:1>);
Grinder.removeRecipe(<gregtech:ore_lead_0>);
Grinder.removeRecipe(<gregtech:ore_copper_0:1>);
Grinder.removeRecipe(<gregtech:ore_copper_0>);
Grinder.removeRecipe(<gregtech:ore_aluminium_0:1>);
Grinder.removeRecipe(<gregtech:ore_copper_0:3>);
Grinder.removeRecipe(<gregtech:ore_aluminium_0:2>);
Grinder.removeRecipe(<gregtech:ore_aluminium_0:3>);
Grinder.removeRecipe(<gregtech:ore_aluminium_0>);
Grinder.removeRecipe(<gregtech:ore_lead_0:5>);
Grinder.removeRecipe(<gregtech:ore_aluminium_0:5>);





recipes.addShapeless(<appliedenergistics2:storage_cell_64k>,[<appliedenergistics2:material:38>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_16k>,[<appliedenergistics2:material:37>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_4k>,[<appliedenergistics2:material:36>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:storage_cell_1k>,[<appliedenergistics2:material:35>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_2_cubed>,[<appliedenergistics2:material:32>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_16_cubed>,[<appliedenergistics2:material:33>,<appliedenergistics2:material:39>]);
recipes.addShapeless(<appliedenergistics2:spatial_storage_cell_128_cubed>,[<appliedenergistics2:material:34>,<appliedenergistics2:material:39>]);



recipes.addShaped(<appliedenergistics2:material:41>, [	[null, <ore:pearlFluix>, null], 	[<ore:plateAluminium>, <appliedenergistics2:part:140>, <ore:plateAluminium>], 	[<appliedenergistics2:part:76>, <ore:circuitAdvanced>, <appliedenergistics2:part:76>]]);
recipes.addShaped(<appliedenergistics2:sky_compass>, [	[<ore:plateSteel>, <appliedenergistics2:material:44>, <ore:plateSteel>], 	[<ore:stickLongCertusQuartz>, <ore:plateCertusQuartz>, <ore:stickLongCertusQuartz>], 	[<ore:plateBlackSteel>, <appliedenergistics2:material:43>, <ore:plateBlackSteel>]]);
recipes.addShaped(<appliedenergistics2:quartz_glass>, [	[<ore:blockGlassColorless>, <ore:dustCertusQuartz>, <ore:blockGlassColorless>], 	[<ore:dustRegularNetherQuartz>, <ore:blockGlassColorless>, <ore:dustRegularNetherQuartz>], 	[<ore:blockGlassColorless>, <ore:dustCertusQuartz>, <ore:blockGlassColorless>]]);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [	[<ore:plateTitanium>, <appliedenergistics2:material:44>, <ore:plateTitanium>], 	[<appliedenergistics2:material:43>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:43>], 	[<ore:plateTitanium>, <appliedenergistics2:material:44>, <ore:plateTitanium>]]);
recipes.addShaped(<appliedenergistics2:security_station>, [	[<ore:plateTitanium>, <appliedenergistics2:chest>, <ore:plateTitanium>], 	[<appliedenergistics2:material:43>, <appliedenergistics2:material:38>, <appliedenergistics2:material:44>], 	[<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);
recipes.addShaped(<appliedenergistics2:chest>, [	[<ore:plateTitanium>, <appliedenergistics2:part:380>, <ore:plateTitanium>], 	[<appliedenergistics2:part:76>, <ore:crystalPureFluix>, <appliedenergistics2:part:76>], 	[<ore:plateTitanium>, <contenttweaker:dualitioncore>, <ore:plateTitanium>]]);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [	[<ore:plateTitanium>, <appliedenergistics2:material:23>, <ore:plateTitanium>], 	[<appliedenergistics2:material:36>, <appliedenergistics2:chest>, <appliedenergistics2:material:36>], 	[<ore:plateTitanium>, <appliedenergistics2:part:360>, <ore:plateTitanium>]]);
recipes.addShaped(<appliedenergistics2:io_port>, [	[<ore:plateNiobiumTitanium>, <gtadditions:ga_transparent_casing:4>, <ore:plateNiobiumTitanium>], 	[<appliedenergistics2:drive>, <appliedenergistics2:part:76>, <appliedenergistics2:drive>], 	[<ore:plateNiobiumTitanium>, <appliedenergistics2:material:23>, <ore:plateNiobiumTitanium>]]);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [	[<ore:plateNiobiumTitanium>, <gtadditions:ga_transparent_casing:4>, <ore:plateNiobiumTitanium>], 	[<appliedenergistics2:io_port>, <ore:circuitElite>, <appliedenergistics2:io_port>], 	[<ore:plateNiobiumTitanium>, <gtadditions:ga_transparent_casing:4>, <ore:plateNiobiumTitanium>]]);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [	[<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:part:76>, <appliedenergistics2:quartz_vibrant_glass>], 	[<ore:crystalPureFluix>, <ore:circuitElite>, <ore:crystalPureFluix>], 	[<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:part:76>, <appliedenergistics2:quartz_vibrant_glass>]]);
recipes.addShaped(<appliedenergistics2:network_tool>, [	[null, <appliedenergistics2:quartz_vibrant_glass>, null], 	[<ore:circuitExtreme>, <appliedenergistics2:material:24>, <appliedenergistics2:part:76>], 	[null, <appliedenergistics2:part:76>, <appliedenergistics2:fluix_block>]]);
recipes.addShaped(<appliedenergistics2:material:41>, [	[null, <ore:pearlFluix>, null], 	[<appliedenergistics2:part:76>, <appliedenergistics2:part:140>, <appliedenergistics2:part:76>], 	[<ore:plateTitanium>, <ore:circuitExtreme>, <ore:plateTitanium>]]);





#ae2 stuff---------------------------------------
recipes.addShaped(<ae2stuff:visualiser>, [	[<appliedenergistics2:material:41>, <ore:circuitElite>, <appliedenergistics2:material:41>], 	[<appliedenergistics2:material:24>, <appliedenergistics2:part:380>, <appliedenergistics2:material:24>], 	[<appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>, <appliedenergistics2:fluix_block>]]);
recipes.addShaped(<ae2stuff:wireless_kit>, [	[<gtadditions:ga_transparent_casing:4>, <appliedenergistics2:material:41>, <gtadditions:ga_transparent_casing:4>], 	[<appliedenergistics2:part:76>, <appliedenergistics2:material:24>, <appliedenergistics2:part:76>], 	[<ore:crystalPureFluix>, <appliedenergistics2:network_tool>, <ore:crystalPureFluix>]]);
recipes.addShaped(<ae2stuff:encoder>, [	[<ore:pearlFluix>, <appliedenergistics2:crafting_unit>, <ore:pearlFluix>], 	[<appliedenergistics2:material:23>, <tconstruct:tooltables>, <appliedenergistics2:material:23>], 	[<ore:plateTitanium>, <ore:itemIlluminatedPanel>, <ore:plateTitanium>]]);
recipes.addShaped(<ae2stuff:inscriber>, [	[<ore:plateTitanium>, <ore:circuitExtreme>, <ore:plateTitanium>], 	[<appliedenergistics2:inscriber>, <appliedenergistics2:crafting_unit>, <appliedenergistics2:inscriber>], 	[<ore:plateTitanium>, <appliedenergistics2:material:23>, <ore:plateTitanium>]]);
recipes.addShaped(<ae2stuff:wireless>, [	[<ore:crystalPureFluix>, <ore:plateTitanium>, <ore:crystalPureFluix>], 	[<appliedenergistics2:material:41>, <appliedenergistics2:material:23>, <appliedenergistics2:material:41>], 	[<ore:crystalPureFluix>, <ore:plateTitanium>, <ore:crystalPureFluix>]]);



#lazy ae2-------------------------------------------











assembler.recipeBuilder()
    .fluidInputs(<liquid:soldering_alloy>*144)
    .inputs(<appliedenergistics2:material:28>,<appliedenergistics2:material:52>*4,<appliedenergistics2:interface>,<gregtech:meta_item_1:17183>*2)
    .outputs(<appliedenergistics2:material:58>)
    .duration(40)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:item_material:15>,<gregtech:meta_item_1:2219>,<threng:material>)
    .outputs(<threng:material:5>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:6>*2,<appliedenergistics2:material:45>*4,<threng:material:1>*2)
    .outputs(<threng:material:7>)
    .duration(80)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<threng:material:2>)
    .outputs(<threng:material>)
    .fluidInputs(<liquid:hydrogen>*2000)
    .property("temperature", 2700)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19061>*4,<appliedenergistics2:material:8>*3,<gregtech:meta_item_1:2012>*4)
    .outputs(<threng:material:1>*8)
    .duration(80)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:35>,<appliedenergistics2:material:39>)
    .outputs(<appliedenergistics2:storage_cell_1k>.withTag({}))
    .fluidInputs(<liquid:soldering_alloy>*144)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:36>,<appliedenergistics2:material:39>)
    .outputs(<appliedenergistics2:storage_cell_4k>.withTag({}))
    .fluidInputs(<liquid:soldering_alloy>*144)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:37>,<appliedenergistics2:material:39>)
    .outputs(<appliedenergistics2:storage_cell_16k>.withTag({}))
    .fluidInputs(<liquid:soldering_alloy>*144)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:38>,<appliedenergistics2:material:39>)
    .outputs(<appliedenergistics2:storage_cell_64k>.withTag({}))
    .fluidInputs(<liquid:soldering_alloy>*144)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:44>*2,<appliedenergistics2:material:43>*2)
    .outputs(<contenttweaker:dualitioncore>)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .duration(800)
    .EUt(80)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<minecraft:glass>*2,<ore:dustNetherQuartz>)
    .outputs(<appliedenergistics2:quartz_glass>*2)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<minecraft:glass>*2,<gregtech:meta_item_1:2202>)
    .outputs(<appliedenergistics2:quartz_glass>*2)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>*4,<gregtech:meta_item_1:12550>)
    .outputs(<appliedenergistics2:quartz_vibrant_glass>*4)
    .duration(80)
    .EUt(80)
    .buildAndRegister();

recipes.remove(<threng:material:9>);
recipes.addShaped(<threng:material:9>, [[null, null, null], 	[<threng:material:8>, <ore:plateSilicon>, <threng:material:8>], 	[null, null, null]]);


macerator.recipeBuilder()
    .inputs(<appliedenergistics2:sky_stone_block>)
    .outputs(<appliedenergistics2:material:45>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:sky_stone_block>*8,<gregtech:meta_item_1:17001>*2)
    .fluidInputs(<liquid:refinedglue>*200)
    .outputs(<appliedenergistics2:sky_stone_chest>)
    .duration(10)
    .EUt(6)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:25>,<appliedenergistics2:interface>,<appliedenergistics2:molecular_assembler>)
    .outputs(<appliedenergistics2:material:53>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<appliedenergistics2:material:52>, [	[<ore:screwStainlessSteel>, <appliedenergistics2:material:23>, <ore:screwStainlessSteel>], 	[<ore:plateStainlessSteel>, <ore:crystalFluix>, <ore:plateStainlessSteel>], 	[null, <ore:plateStainlessSteel>, null]]);

recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, [	[<ore:screwCupronickel>, <ore:craftingPiston>, <ore:screwCupronickel>], 	[<ore:plateAluminium>, <appliedenergistics2:interface>, <ore:plateAluminium>], 	[<ore:screwCupronickel>, <ore:craftingPiston>, <ore:screwCupronickel>]]);


