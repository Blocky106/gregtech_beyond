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

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:rhodium>*1000)
    .outputs(<gregtech:meta_item_1:2862>*2,<projectred-core:resource_item:105>)
    .duration(800)
    .EUt(24)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<appliedenergistics2:material:47>)
	.fluidOutputs(<liquid:uumatter> * 50)
	.duration(800)
	.EUt(4)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<contenttweaker:titaniumcontainingice>)
	.chancedOutput(<gtadditions:ga_dust:32019>, 90000, 100)
	.fluidOutputs(<liquid:chlorine> * 120)
	.duration(8000)
	.EUt(4)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32037>)
	.fluidOutputs(<liquid:radon>*200,<liquid:titanium>*400)
	.outputs(<gregtech:meta_item_1:1311>)
	.duration(200)
	.EUt(12000)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32030>*3)
	.outputs(<gregtech:meta_item_1:2075>*2,<gregtech:meta_item_1:2069>)
	.duration(200)
	.EUt(1900)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.fluidInputs(<liquid:naquadahemulsion>*1000)
	.fluidOutputs(<liquid:naquadah_solution>*20)
	.outputs(<gtadditions:ga_dust:32023> * 5)
	.duration(200)
	.EUt(120)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32023>)
	.outputs(<gregtech:meta_item_1:1011>*2,<gregtech:meta_item_1:1307>,<gregtech:meta_item_1:75>,<gregtech:meta_item_1:552>)
	.fluidOutputs(<liquid:radon>*5)
	.duration(1200)
	.EUt(24)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2537>)
	.outputs(<gregtech:meta_item_1:2902>,<gregtech:meta_item_1:902>*2)
	.duration(200)
	.EUt(40)
	.buildAndRegister();

lcentrifuge.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2128>)
	.outputs(<gtadditions:ga_dust:32007>)
	.duration(12)
	.EUt(6)
	.buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:8>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:8>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<extendedcrafting:material:7>,<gregtech:meta_item_1:8203>)
    .outputs(<contenttweaker:luminated_quartzite>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

recipes.addShapeless(<contenttweaker:luminated_quartzite>,[<extendedcrafting:material:7>,<extendedcrafting:material:7>,<gregtech:meta_item_1:8203>]);

lathe.recipeBuilder()
    .inputs(<minecraft:obsidian>)
    .outputs(<contenttweaker:obsidianrod>)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

extruder.recipeBuilder()
    .inputs(<minecraft:obsidian>)
    .outputs(<contenttweaker:obsidianrod>)
    .notConsumable(<gregtech:meta_item_1:32351>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8202>)
    .fluidInputs(<liquid:water>*1000)
    .outputs(<appliedenergistics2:material>)
    .duration(80)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:7>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:9>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:6>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:10>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:5>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:11>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:4>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:12>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:3>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:13>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:2>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:14>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye:1>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:15>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<projectred-transmission:wire>,<minecraft:dye>)
    .fluidInputs(<liquid:plastic>*100)
    .outputs(<projectred-transmission:wire:16>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:glass_bottle>,<minecraft:glowstone_dust>,<gregtech:meta_item_1:2111>)
    .outputs(<randomthings:timeinabottle>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:hicomputationstationmk3>*2,<gregtech:machine:606>,<ore:circuitInfinite>,<ore:circuitInfinite>,<gregtech:meta_item_1:12529>*4,<gregtech:meta_item_1:12569>*4)
    .outputs(<gregtech:machine:10001>)
    .duration(800)
    .EUt(500000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<tombstone:crafting_ingredient:3>*3,<enderio:item_material:8>*3)
    .outputs(<tombstone:fishing_rod_of_misadventure>)
    .duration(800)
    .EUt(2400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleCopper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 24}))
    .fluidInputs(<liquid:rubber>*288)
    .outputs(<gregtech:cable:5018>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();
    
recipes.addShaped(<gtadditions:ga_dust:32015>*4, [	[<ore:dustSterlingSilver>, <ore:dustGold>, <ore:dustRegularSilver>], 	[<ore:dustRegularSilver>, <ore:dustRegularSilver>, null], 	[null, null, null]]);
mixer.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .inputs(<ore:dustSterlingSilver>, <ore:dustGold>, <ore:dustRegularSilver>*4)
    .outputs(<gtadditions:ga_dust:32015>*6)
    .duration(120)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .inputs(<gregtech:meta_item_1:2018>*2,<gregtech:meta_item_1:2062>*4,<gregtech:meta_item_1:2026>*2)
    .outputs(<gtadditions:ga_dust:32015>*8)
    .duration(80)
    .EUt(100)
    .buildAndRegister();


thermal.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:8825>)
    .chancedOutput(<gregtech:meta_item_1:571>, 5000, 40)
    .outputs(<gtadditions:ga_meta_item:3820>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister(); 

lcentrifuge.recipeBuilder()
    .inputs(<contenttweaker:gemstonecluster>)
    .outputs(<gregtech:ore_amethyst_0>*16,<gregtech:ore_cinnabar_0>*16,<gregtech:ore_opal_0>*16,<gregtech:ore_topaz_0>*16,<gregtech:ore_diamandine_0>*16)
    .duration(300)
    .EUt(4)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<contenttweaker:gemstonecluster>)
    .outputs(<gregtech:ore_amethyst_0>*16,<gregtech:ore_cinnabar_0>*16,<gregtech:ore_opal_0>*16,<gregtech:ore_topaz_0>*16,<gregtech:ore_diamandine_0>*16)
    .duration(300)
    .EUt(4)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:stone>*64,<gregtech:ore_emerald_0>*48)
    .outputs(<contenttweaker:gemstonecluster>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<minecraft:stone>,<gregtech:meta_item_1:2113>)
    .outputs(<gregtech:ore_emerald_0>)
    .EUt(12)
    .duration(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16184>*64,<gregtech:meta_item_1:19079>*48)
    .outputs(<gregtech:meta_item_1:32729>)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16001>*32,<gregtech:meta_item_1:19079>*32)
    .outputs(<gregtech:meta_item_1:32729>)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16001>*32,<gregtech:meta_item_1:19079>*32)
    .outputs(<gregtech:meta_item_1:32729>)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16183>*16,<gregtech:meta_item_1:19079>*32)
    .outputs(<gregtech:meta_item_1:32729>)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16072>*32,<gregtech:meta_item_1:19079>*18)
    .outputs(<gregtech:meta_item_1:32729>*2)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16304>*8,<gregtech:meta_item_1:19079>*8)
    .outputs(<gregtech:meta_item_1:32729>*8)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<contenttweaker:coalball>)
    .outputs(<gregtech:meta_item_1:2204>)
    .duration(24)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32421>*2,<gregtech:meta_item_1:2421>*64)
    .notConsumable(<liquid:moltenawakenedcompressedmetal>*512)
    .outputs(<contenttweaker:uvhasocw>)
    .duration(400)
    .EUt(128000)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2760>*16,<gregtech:meta_item_1:2205>*16,<gregtech:meta_item_1:2006>*16,<gregtech:meta_item_1:2912>*16,<gregtech:meta_item_1:2051>*16,<gregtech:meta_item_1:2047>*16,<gregtech:meta_item_1:2307>*16,<gregtech:meta_item_1:2031>*16,<gtadditions:ga_dust:208>*16)
    .fluidInputs(<liquid:hydrogen>*32000,<liquid:nitrogen>*32000,<liquid:neon>*32000,<liquid:helium>*32000,<liquid:krypton>*32000,<liquid:argon>*32000)
    .outputs(<gtadditions:ga_dust:32064>)
    .duration(999999)
    .EUt(12)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32064>)
    .outputs(<contenttweaker:compressedmetalingot>)
    .duration(444)
    .EUt(32000)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:moltenenhancedenderium>*144)
    .outputs(<contenttweaker:enhancedenderiumingot>)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:moltenenhancedenderium>*144)
    .outputs(<contenttweaker:enhancedenderiumplate>)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

extruder.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumingot>)
    .outputs(<contenttweaker:enhancedenderiumplate>)
    .notConsumable(<gregtech:meta_item_1:32350>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();

extruder.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumingot>)
    .outputs(<contenttweaker:enhancedenderiumrod>*2)
    .notConsumable(<gregtech:meta_item_1:32351>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();

lathe.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumingot>)
    .outputs(<contenttweaker:enhancedenderiumrod>*2)
    .duration(120)
    .EUt(12)
    .buildAndRegister();

lathe.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumcrystal>*8)  
    .outputs(<contenttweaker:enhancedenderiumlense>)
    .duration(400)
    .EUt(8000)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumunrefinedcrystal>*2)
    .notConsumable(<gregtech:meta_item_1:15331>)
    .outputs(<contenttweaker:enhancedenderiumcrystal>)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32063>*27)
    .chancedOutput(<gtadditions:ga_dust:32155>*13, 5000, 200)
    .outputs(<gregtech:meta_item_1:2111>*14)
    .duration(480)
    .EUt(30000)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32155>*2)
    .notConsumable(<gregtech:meta_item_1:15331>)
    .outputs(<contenttweaker:enhancedenderiumunrefinedcrystal>)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:compressedmetalingot>*2)
    .notConsumable(<contenttweaker:enhancedenderiumlense>)
    .outputs(<contenttweaker:awakenedcompressedmetalingot>*2)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:awakenedcompressedmetalingot>)
    .fluidOutputs(<liquid:moltenawakenedcompressedmetal>*144)
    .duration(80)
    .EUt(12000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:awakenedcompressedmetalplate>)
    .fluidOutputs(<liquid:moltenawakenedcompressedmetal>*144)
    .duration(80)
    .EUt(12000)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<contenttweaker:awakenedcompressedmetalingot>)
    .outputs(<contenttweaker:awakenedcompressedmetalplate>)
    .duration(40)
    .EUt(20000)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumingot>)
    .outputs(<gtadditions:ga_dust:32063>)
    .duration(50)
    .EUt(99)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:enhancedenderiumplate>)
    .outputs(<gtadditions:ga_dust:32063>)
    .duration(50)
    .EUt(99)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32063>)
    .outputs(<contenttweaker:enhancedenderiumingot>)
    .duration(800)
    .EUt(12000)
    .property("temperature", 6000)
    .buildAndRegister();
    
furnace.remove(<gregtech:meta_item_1:10573>);

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*200)
    .chancedOutput(<gregtech:meta_item_1:2105>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:2960>, 3333, 0)
    .fluidOutputs(<liquid:ic2distilled_water>*125)
    .duration(20)
    .EUt(8000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*200)
    .chancedOutput(<gregtech:meta_item_1:2105>, 3333, 0)
    .chancedOutput(<gregtech:meta_item_1:2960>, 3333, 0)
    .fluidOutputs(<liquid:ic2distilled_water>*125)
    .duration(20)
    .EUt(8000)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2204>*2,<gregtech:meta_item_1:2074>*3,<gregtech:meta_item_1:2072>*2)
    .outputs(<gregtech:meta_item_1:2573>*7)
    .duration(300)
    .EUt(2000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2573>)
    .outputs(<gregtech:meta_item_1:10573>)
    .property("temperature", 2700)
    .duration(200)
    .EUt(1980)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2184>,<gregtech:meta_item_1:2074>)
    .outputs(<gregtech:meta_item_1:2235>*2)
    .duration(80)
    .EUt(1980)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:uvhasocw>)
    .outputs(<contenttweaker:uvhasoc>*2)
    .fluidInputs(<liquid:water>*20000)
    .duration(600)
    .EUt(32000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:uvhasocw>)
    .outputs(<contenttweaker:uvhasoc>*3)
    .fluidInputs(<liquid:distilled_water>*500)
    .duration(400)
    .EUt(32000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:uvhasocw>)
    .outputs(<contenttweaker:uvhasoc>*4)
    .fluidInputs(<liquid:lubricant>*250)
    .duration(300)
    .EUt(32000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10273>);
furnace.remove(<gregtech:meta_item_1:9273>);


assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32405>*4,<contenttweaker:biotransistor>*2,<contenttweaker:stemcellcontainmentcell>*2,<gtadditions:ga_meta_item:32018>*2,<contenttweaker:opticalenforcedlaser>*2,<gtadditions:ga_meta_item:32407>*4,<gtadditions:ga_meta_item:32406>*4,<gtadditions:ga_meta_item:32408>*4,<contenttweaker:biowarecoolingunit>*2,<contenttweaker:uvhasoc>*2,<contenttweaker:biowareprocessingunit>,<contenttweaker:biowaremainboard>,<gtadditions:ga_meta_item:32213>*4,<gregtech:cable:967>*32)
    .fluidInputs(<liquid:soldering_alloy>*3200,<liquid:lubricant>*2000,<liquid:indalloy140>*600)
    .outputs(<contenttweaker:biowaremainchip>*32)
    .duration(400)
    .EUt(500000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19391>*32,<nuclearcraft:part:6>*4,<contenttweaker:biowaremainchip>,<gregtech:meta_item_2:16308>*16,<gtadditions:ga_meta_item:32018>*4,<gtadditions:ga_meta_item:32405>*2,<gtadditions:ga_meta_item:32406>*2,<gtadditions:ga_meta_item:32407>*2,<gtadditions:ga_meta_item:32405>*2,<gtadditions:ga_meta_item:32411>)
    .fluidInputs(<liquid:tritanium>*144,<liquid:raw_growth_medium>*4000)
    .duration(200)   
    .EUt(491520)
    .outputs(<gtadditions:ga_meta_item:32015>*4)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:twocryogeniccoolant>*2,<gregtech:meta_item_1:12854>*4,<gregtech:meta_item_1:12692>*4)
    .outputs(<contenttweaker:biowarecoolingunit>)
    .fluidInputs(<liquid:europium>*1200)
    .duration(200)
    .EUt(40000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32405>*32,<gregtech:meta_item_1:12022>*16,<gregtech:meta_item_1:14549>*32,<gregtech:meta_item_1:14549>*32,<gregtech:cable:968>*16,<gregtech:meta_item_2:16692>*64,<gregtech:meta_item_2:16692>*64,<gregtech:meta_item_2:16692>*64,<gregtech:meta_item_2:16692>*64)
    .outputs(<contenttweaker:biotransistor>*16)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:stemcellcontainmentcell>, [	[<contenttweaker:containment_plating>, <contenttweaker:containment_plating>, <contenttweaker:containment_plating>], 	[<contenttweaker:containment_plating>, <contenttweaker:containment_box>, <contenttweaker:containment_plating>], 	[<contenttweaker:containment_plating>, <contenttweaker:containment_plating>, <contenttweaker:containment_plating>]]);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2075>*2,<gregtech:meta_item_1:2069>)
    .outputs(<gtadditions:ga_dust:32030>*3)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:blockgraphite>)
    .outputs(<gregtech:meta_item_1:2204>)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:moltenrawneutronium>*144)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gtadditions:ga_dust:32050>)
    .duration(400)
    .EUt(120000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32050>)
    .fluidInputs(<liquid:atomicseperationcatalyst>*1000)
    .outputs(<contenttweaker:hotrawneutroniumingot>)
    .property("temperature", 8600)
    .duration(4000)
    .EUt(12000000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<contenttweaker:hotrawneutroniumingot>)
    .outputs(<contenttweaker:rawneutroniumingot>)
    .duration(1200)
    .EUt(40000000)
    .buildAndRegister();

plasma_condenser.findRecipe(10000000 ,[<gtadditions:ga_meta_item:32449>,<gtadditions:ga_meta_item:32450>],[<liquid:liquid_helium>*32000]).remove();

plasma_condenser.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32449>)
    .notConsumable(<gtadditions:ga_meta_item:32450>)
    .fluidInputs(<liquid:liquid_helium>*32000,<liquid:liquidrawneutronium>*144)
    .fluidOutputs(<liquid:helium>*32000)
    .outputs(<gregtech:meta_item_1:10993>,<gtadditions:ga_meta_item:32428>)
    .duration(1600)
    .EUt(10000000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:rawneutroniumingot>)
    .fluidOutputs(<liquid:liquidrawneutronium>*144)
    .duration(80)
    .EUt(24000)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:liquidrawneutronium>*144)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<contenttweaker:rawneutroniumingot>)
    .duration(400)
    .EUt(120000)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:electromagnet>, [	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>], 	[<ore:stickLongNeodymiumMagnetic>, <ore:blockVanadiumMagnetite>, <ore:stickLongNeodymiumMagnetic>], 	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]]);
recipes.addShaped(<contenttweaker:berylliumdetector>, [	[<ore:plateBeryllium>, <ore:frameGtRedSteel>, <ore:plateBeryllium>], 	[<ore:plateBeryllium>, <gregtech:meta_item_1:32694>, <ore:plateBeryllium>], 	[<ore:plateBeryllium>, <ore:frameGtRedSteel>, <ore:plateBeryllium>]]);

mixer.recipeBuilder()
    .fluidInputs(<liquid:phenol> * 1000, <liquid:formaldehyde> * 1000)
    .fluidOutputs(<liquid:photopolymer> * 2000)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

wiremill.findRecipe(8,[<gregtech:meta_item_1:10573>], null).remove();

wiremill.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10573>)
    .outputs(<gregtech:cable:573>*2)
    .duration(200)
    .EUt(1980)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10519>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .property("temperature", 2700)
    .outputs(<gregtech:meta_item_1:10519>)
    .duration(2800)
    .EUt(2000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .property("temperature", 2700)
    .fluidInputs(<liquid:radon>*1000)
    .outputs(<gregtech:meta_item_1:10519>)
    .duration(1500)
    .EUt(2000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .property("temperature", 2700)
    .fluidInputs(<liquid:xenon>*500)
    .outputs(<gregtech:meta_item_1:10519>)
    .duration(1000)
    .EUt(2000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2519>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .fluidInputs(<liquid:nitrogen>*1200)
    .outputs(<gregtech:meta_item_1:10519>)
    .property("temperature", 2700)
    .duration(2500)
    .EUt(2000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:berylliumdetector>*4,<contenttweaker:electromagnet>*4,<gregtech:cable:3307>*6,<ore:circuitElite>*16,<contenttweaker:radiationproofplate>*8,<gregtech:meta_item_1:10756>*4,<gregtech:meta_item_1:12760>*4)
    .outputs(<gregtech:machine:10023>)
    .fluidInputs(<liquid:osmiridium>*1296)
    .duration(8000)
    .EUt(8000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogentetrafluoromehtane>*500,<liquid:methane>*500)
    .fluidOutputs(<liquid:hydrogentetrafluorocarbidedioxide>*1000,<liquid:hydrogen_sulfide>*1000,<liquid:water>*1000)
    .duration(90)
    .EUt(500)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogentetrafluorocarbidedioxide>*2000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:fluorohydrideammoniumcarbamat>*2000)
    .duration(90)
    .EUt(500)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogentetrafluorocarbidedioxide>*2000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:fluorohydrideammoniumcarbamat>*2000)
    .duration(90)
    .EUt(500)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .inputs(<gtadditions:ga_dust:69>,<gtadditions:ga_dust:32112>)
    .fluidInputs(<liquid:styrene>*5000,<liquid:dichloromethane>*800,<liquid:phenylpentanoicacid>*1790,<liquid:ferrocene>*1900,<liquid:fluorohydrideammoniumcarbamat>*1000)
    .notConsumable(<gregtech:meta_item_1:12051>)
    .fluidOutputs(<liquid:pcbb>*1000)
    .duration(5000)
    .EUt(500000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10551>);
furnace.remove(<gregtech:meta_item_1:9572>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2551>)
    .outputs(<gregtech:meta_item_1:10551>)
    .duration(800)
    .EUt(24000)
    .property("temperature", 6000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32016>*4,<gregtech:meta_item_1:12564>*2,<enderio:item_material:14>*2,<enderio:item_material:15>*2,<ore:circuitElite>)
    .outputs(<contenttweaker:opticalenforcedlaser>*32)
    .fluidInputs(<liquid:heavy_lepton_mix>*1000)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12692>*4,<gtadditions:ga_meta_item:32407>*2,<gtadditions:ga_meta_item:32585>,<gtadditions:ga_meta_item:32408>*2,<gregtech:meta_item_2:16300>*32,<gregtech:meta_item_2:16300>*32)
    .outputs(<contenttweaker:biowaremainboard>)
    .fluidInputs(<liquid:heavy_lepton_mix>*1000)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32484>*16,<gregtech:meta_item_2:32481>*16,<gregtech:meta_item_2:32474>*8,<gregtech:meta_item_1:19692>*32,<gtadditions:ga_meta_item:32405>*4)
    .outputs(<contenttweaker:biowareprocessingunit>*4)
    .duration(1000)
    .EUt(600000)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:mercury>*1000)
    .fluidOutputs(<liquid:hot_mercury>*1000)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:photopolymer>*144)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<contenttweaker:photopolymerplate>)
    .duration(500)
    .EUt(240)
    .buildAndRegister();
    

vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11032>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11858>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11859>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11207>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11869>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11883>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11047>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11854>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11032>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11858>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11859>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11207>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11869>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11883>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11047>],null).remove();
vacfreezer.findRecipe(120, [<gregtech:meta_item_1:11854>],null).remove();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11032>)
    .outputs(<gregtech:meta_item_1:10032>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11858>)
    .outputs(<gregtech:meta_item_1:10858>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11859>)
    .outputs(<gregtech:meta_item_1:10859>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11207>)
    .outputs(<gregtech:meta_item_1:10207>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11869>)
    .outputs(<gregtech:meta_item_1:10869>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11883>)
    .outputs(<gregtech:meta_item_1:10883>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11047>)
    .outputs(<gregtech:meta_item_1:10047>)
    .duration(200)
    .EUt(32000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11854>)
    .outputs(<gregtech:meta_item_1:10854>)
    .duration(500)
    .EUt(100000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gtadditions:ga_dust:80>)
    .outputs(<gregtech:meta_item_1:2575>*2)
    .fluidInputs(<liquid:pcbb>*500)
    .duration(800)
    .EUt(500000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2869>*2)
    .fluidInputs(<liquid:chlorine>*3000)
    .outputs(<gtadditions:ga_dust:32113>*2)
    .property("temperature", 600)
    .duration(400)
    .EUt(32000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32113>)
    .outputs(<gtadditions:ga_dust:32112>)
    .fluidInputs(<liquid:acetic_acid>*1000)
    .property("temperature",2700)
    .duration(80)
    .EUt(32000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<thaumcraft:nugget:10>)
    .outputs(<gregtech:meta_item_1:2326>)
    .duration(400)
    .EUt(24000)
    .fluidInputs(<liquid:sulfuric_acid>*2000)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2353>*16,<gregtech:meta_item_1:2014>*2,<gregtech:meta_item_1:2309>*4,<gregtech:meta_item_1:2235>*2,<gregtech:meta_item_1:2533>*2,<gregtech:meta_item_1:2037>*6,<gregtech:meta_item_1:2022>*12,<gregtech:meta_item_1:2059>*8)
    .outputs(<gregtech:meta_item_1:2572>*64)
    .fluidInputs(<liquid:oxygen>*12000)
    .duration(800)
    .EUt(64000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10572>);
furnace.remove(<gregtech:meta_item_1:10002>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2572>)
    .outputs(<gregtech:meta_item_1:10572>)
    .property("temperature", 6000)
    .duration(4000)
    .EUt(600)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10527>);
furnace.remove(<gregtech:meta_item_1:9527>);

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12840>,<gregtech:meta_item_1:19018>)
    .outputs(<gregtech:meta_item_2:32448>*8)
    .duration(300)
    .fluidInputs(<liquid:sulfuric_acid>*125)
    .EUt(10)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12840>,<gregtech:meta_item_1:19018>)
    .outputs(<gregtech:meta_item_2:32448>*8)
    .duration(300)
    .fluidInputs(<liquid:sulfuric_acid>*125)
    .EUt(10)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12728>,<gregtech:meta_item_1:19018>)
    .outputs(<gregtech:meta_item_2:32448>*32)
    .duration(300)
    .fluidInputs(<liquid:sulfuric_acid>*125)
    .EUt(10)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12728>,<gregtech:meta_item_1:19018>)
    .outputs(<gregtech:meta_item_2:32448>*32)
    .duration(300)
    .fluidInputs(<liquid:sulfuric_acid>*125)
    .EUt(10)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2002>)
    .outputs(<gregtech:meta_item_1:10002>)
    .property("temperature", 2600)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*3000,<liquid:hydrofluoric_acid>*1000,<liquid:methane>*2000)
    .fluidOutputs(<liquid:hydrogentetrafluoromehtane>*6000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*3000,<liquid:hydrofluoric_acid>*1000,<liquid:methane>*2000)
    .fluidOutputs(<liquid:hydrogentetrafluoromehtane>*6000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10736>);

assembler.findRecipe(8,[<gtadditions:ga_meta_item:32454>*3,<minecraft:stick>*3], null).remove();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32454>*3,<minecraft:fence>*2)
    .outputs(<minecraft:bed>)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<minecraft:blaze_powder>)
    .outputs(<minecraft:ender_eye>)
    .duration(300)
    .EUt(480)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<minecraft:blaze_powder>)
    .outputs(<minecraft:ender_eye>)
    .duration(300)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2196>)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .fluidInputs(<liquid:bisphenolb>*100)
    .outputs(<gregtech:meta_item_2:32447>*8)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2353>*4)
    .fluidInputs(<liquid:oxygen>*6000)
    .outputs(<gtadditions:ga_dust:20>*10)
    .duration(700)
    .EUt(212)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2353>*4)
    .fluidInputs(<liquid:oxygen>*6000)
    .outputs(<gtadditions:ga_dust:20>*10)
    .duration(700)
    .EUt(212)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:20>*2,<gtadditions:ga_dust:8>*2)
    .fluidInputs(<liquid:sulfuric_acid>*2000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*2000,<liquid:oxygen>*4000)
    .outputs(<gtadditions:ga_dust:32106>*4)
    .duration(500)
    .EUt(1980)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:20>*2,<gtadditions:ga_dust:8>*2)
    .fluidInputs(<liquid:sulfuric_acid>*2000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*2000,<liquid:oxygen>*4000)
    .outputs(<gtadditions:ga_dust:32106>*4)
    .duration(500)
    .EUt(1980)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32106>*10)
    .fluidOutputs(<liquid:lanthanumyttriumsolution>*10000)
    .fluidInputs(<liquid:preheated_water>*10000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2087>)
    .fluidInputs(<liquid:lanthanumyttriumsolution>*4000)
    .outputs(<gtadditions:ga_dust:32108>)
    .duration(200)
    .EUt(10000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2087>)
    .fluidInputs(<liquid:lanthanumyttriumsolution>*4000)
    .outputs(<gtadditions:ga_dust:32108>)
    .duration(200)
    .EUt(10000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32108>,<gregtech:meta_item_1:2200>)
    .outputs(<gtadditions:ga_dust:32109>)
    .duration(500)
    .fluidInputs(<liquid:oxygen>*2000)
    .EUt(60000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32108>,<gregtech:meta_item_1:2200>)
    .outputs(<gtadditions:ga_dust:32109>)
    .duration(500)
    .fluidInputs(<liquid:oxygen>*2000)
    .EUt(60000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32109>*3)
    .notConsumable(<gregtech:meta_item_1:14530>)
    .fluidInputs(<liquid:acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32114>*2,<gtadditions:ga_dust:32115>)
    .property("temperature", 4500)
    .duration(500)
    .EUt(12000)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32115>)
    .fluidInputs(<liquid:hydrochloric_acid>*2000)
    .fluidOutputs(<liquid:lanthanumceriumacidicsolution>*1000)
    .outputs(<gtadditions:ga_dust:32123>)
    .duration(500)
    .EUt(5000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:lanthanumceriumacidicsolution>*2000)
    .fluidOutputs(<liquid:lanthanumceriumsolution>*1000,<liquid:hydrochloric_acid>*1000)
    .duration(480)
    .EUt(32000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:lanthanumceriumsolution>*2000,<liquid:hydrochloric_acid>*8000)
    .outputs(<gtadditions:ga_dust:32116>*1000)
    .fluidOutputs(<liquid:chlorine>*3000,<liquid:water>*5000)
    .duration(800)
    .EUt(90000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:lanthanumceriumsolution>*2000,<liquid:hydrochloric_acid>*8000)
    .outputs(<gtadditions:ga_dust:32116>*2)
    .fluidOutputs(<liquid:chlorine>*3000,<liquid:water>*5000)
    .duration(800)
    .EUt(90000)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32116>)
    .outputs(<gtadditions:ga_dust:32117>*2)
    .fluidInputs(<liquid:cerium>*1000)
    .duration(200)
    .EUt(21000)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32117>,<gregtech:meta_item_1:2059>)
    .outputs(<gtadditions:ga_dust:32118>*2)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32118>*4)
    .fluidInputs(<liquid:nitric_acid>*2000)
    .fluidOutputs(<liquid:ceriumlanthanumsaturatedcompoundsolution>*1000)
    .outputs(<gtadditions:ga_dust:14>*5)
    .duration(120)
    .EUt(120000)
    .notConsumable(<gtadditions:ga_dust:32112>)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32118>*4)
    .fluidInputs(<liquid:nitric_acid>*2000)
    .fluidOutputs(<liquid:ceriumlanthanumsaturatedcompoundsolution>*1000)
    .outputs(<gtadditions:ga_dust:14>*5)
    .duration(120)
    .EUt(120000)
    .notConsumable(<gtadditions:ga_dust:32112>)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:ceriumlanthanumsaturatedcompoundsolution>*1000)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<gtadditions:ga_dust:32119>)
    .duration(400)
    .EUt(6000)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:ceriumlanthanumingot>)
    .outputs(<gtadditions:ga_dust:32125>)
    .duration(2000)
    .EUt(12)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32119>*2)
    .outputs(<gtadditions:ga_dust:32125>,<gtadditions:ga_dust:32030>)
    .duration(500)
    .fluidOutputs(<liquid:oxygen>*1000)
    .EUt(12000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32119>*2)
    .outputs(<gtadditions:ga_dust:32125>,<gtadditions:ga_dust:32030>)
    .duration(500)
    .fluidOutputs(<liquid:oxygen>*1000)
    .EUt(12000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32125>)
    .fluidOutputs(<liquid:moltenceriumlanthanum>*1000)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:moltenceriumdopedlanthanum>*1000)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<gtadditions:ga_dust:32120>)
    .duration(400)
    .EUt(6000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:271>,<gtadditions:ga_dust:32120>)
    .fluidOutputs(<liquid:unprocessedcelasolution>*1000)
    .fluidInputs(<liquid:alumina_solution>*1000)
    .fluidOutputs(<liquid:tributylamine>*1000)
    .duration(500)
    .EUt(480)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .fluidInputs(<liquid:unprocessedcelasolution>*1000)
    .outputs(<gtadditions:ga_dust:32124>)
    .fluidOutputs(<liquid:dichloromethane>*1000)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32124>)
    .outputs(<gtadditions:ga_dust:32121>)
    .property("temperature", 6000)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32121>)
    .fluidOutputs(<liquid:moltencelananoparticles>*1000)
    .duration(600)
    .EUt(12000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:moltencelananoparticles>*1000)
    .outputs(<gtadditions:ga_dust:32122>)
    .inputs(<gregtech:meta_item_2:32505>)
    .duration(800)
    .EUt(25000)
    .buildAndRegister();

autoclave.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12034>)
    .fluidInputs(<liquid:nitrogen>*1000)
    .outputs(<contenttweaker:lanthanumseedcrystal>)
    .duration(800)
    .EUt(800000)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32122>)
    .fluidOutputs(<liquid:moltencelananocarbides>*1000)
    .duration(500)
    .EUt(35000)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .inputs(<contenttweaker:lanthanumseedcrystal>,<contenttweaker:unpreperated_cela_boule>)
    .notConsumable(<gtadditions:ga_meta_item:32492>)
    .notConsumable(<gtadditions:ga_meta_item:32493>)
    .notConsumable(<gregtech:meta_item_1:14157>)
    .outputs(<contenttweaker:celasiliconboule>)
    .duration(800)
    .EUt(24000)
    .buildAndRegister();
furnace.remove(<gregtech:meta_item_1:10517>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:10517>)
    .duration(800)
    .EUt(240000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .fluidInputs(<liquid:nitrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<gregtech:meta_item_1:10517>)
    .duration(600)
    .EUt(237000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .fluidInputs(<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<gregtech:meta_item_1:10517>)
    .duration(700)
    .EUt(237000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .fluidInputs(<liquid:xenon>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .outputs(<gregtech:meta_item_1:10517>)
    .duration(450)
    .EUt(220000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32449>,<contenttweaker:photogenallyenhancedwafer>,<gregtech:meta_item_1:32671>,<gregtech:meta_item_1:32611>)
    .fluidInputs(<liquid:sterilized_growth_medium>*2000)
    .outputs(<contenttweaker:opticallyenhancedcircuitboard>)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:opticallyenhancedcircuitboard>,<gregtech:meta_item_1:19200>*32)
    .fluidInputs(<liquid:iron_chloride>*5000)
    .outputs(<contenttweaker:opticalcircuitboard>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:opticallyenhancedcircuitboard>,<gregtech:meta_item_1:19200>*32)
    .fluidInputs(<liquid:sodium_persulfate>*10000)
    .outputs(<contenttweaker:opticalcircuitboard>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:opticallyenhancedcircuitboard>,<gregtech:meta_item_1:19200>*32)
    .fluidInputs(<liquid:iron_chloride>*5000)
    .outputs(<contenttweaker:opticalcircuitboard>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:opticallyenhancedcircuitboard>,<gregtech:meta_item_1:19200>*32)
    .fluidInputs(<liquid:sodium_persulfate>*10000)
    .outputs(<contenttweaker:opticalcircuitboard>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32125>)
    .outputs(<contenttweaker:ceriumlanthanumingot>)
    .property("temperature", 2700)
    .duration(400)
    .EUt(23000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10735>);
furnace.remove(<gregtech:meta_item_1:9735>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2735>)
    .outputs(<gregtech:meta_item_1:10735>)
    .property("temperature", 9700)
    .duration(1200)
    .EUt(24000)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32123>*10)
    .outputs(<gregtech:meta_item_1:2159>*6,<gregtech:meta_item_1:2906>*4)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32114>*6)
    .outputs(<gregtech:meta_item_1:2159>*4,<gregtech:meta_item_1:2286>*2)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32123>*10)
    .outputs(<gregtech:meta_item_1:2159>*6,<gregtech:meta_item_1:2906>*4)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32114>*6)
    .outputs(<gregtech:meta_item_1:2159>*4,<gregtech:meta_item_1:2286>*2)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10523>);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2309>*2,<gregtech:meta_item_1:2205>*3)
    .outputs(<gtadditions:ga_dust:32110>*5)
    .duration(800)
    .EUt(24000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10546>);
furnace.remove(<gregtech:meta_item_1:9546>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2546>)
    .outputs(<gregtech:meta_item_1:10546>)
    .duration(800)
    .EUt(50000)
    .property("temperature", 6000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2183>)
    .property("temperature", 2700)
    .outputs(<gregtech:meta_item_1:10183>)
    .duration(500)
    .EUt(220)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<minecraft:string>,<gregtech:meta_item_2:32504>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .outputs(<contenttweaker:reinforcedstring>*2)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<minecraft:string>,<gregtech:meta_item_2:32504>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .outputs(<contenttweaker:reinforcedstring>*2)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<contenttweaker:reinforcedstring>,<minecraft:leather>)
    .outputs(<contenttweaker:boundleather>)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*1000,<liquid:benzyl_chloride>*2000)
    .fluidOutputs(<liquid:quaternaryammonium>*3000)
    .duration(800)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*1000,<liquid:benzyl_chloride>*2000)
    .fluidOutputs(<liquid:quaternaryammonium>*3000)
    .duration(800)
    .EUt(24)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<ore:plankWood>)
    .fluidInputs(<liquid:quaternaryammonium>*144)
    .notConsumable(<gregtech:meta_item_1:32766>)
    .outputs(<contenttweaker:treatedwoodplanks>)
    .duration(40)
    .EUt(240)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<ore:plankWood>)
    .notConsumable(<gregtech:meta_item_1:32766>)
    .fluidInputs(<liquid:quaternaryammonium>*144)
    .outputs(<contenttweaker:treatedwoodplanks>)
    .duration(40)
    .EUt(240)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:714>, [	[<ore:cableGtSingleTin>, <ore:plateRubber>, <ore:cableGtSingleTin>], 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:501>, <contenttweaker:cupronickelcoil>], 	[<ore:cableGtSingleTin>, <ore:plateRubber>, <ore:cableGtSingleTin>]]);
furnace.remove(<gregtech:meta_item_1:10557>);
furnace.remove(<gregtech:meta_item_1:9557>);
furnace.remove(<gregtech:meta_item_1:9515>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2557>)
    .outputs(<gregtech:meta_item_1:10557>)
    .property("temperature", 6000)
    .duration(490)
    .EUt(9000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2033>)
    .fluidInputs(<liquid:mana>*250)
    .outputs(<thermalfoundation:material:72>)
    .duration(400)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2033>)
    .fluidInputs(<liquid:mana>*250)
    .outputs(<thermalfoundation:material:72>)
    .duration(400)
    .EUt(2400)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<thermalfoundation:material:72>)
    .outputs(<thermalfoundation:material:136>)
    .property("temperature", 9000)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<thaumcraft:ingot:1>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<thaumcraft:plate:3>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();




ebf.findRecipe(120,[<gregtech:meta_item_1:183>],null).remove();
recipes.addShaped(<gregtech:machine:1>, [	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 	[<ore:plateBronze>, <gregtech:meta_tool:8>, <ore:plateBronze>], 	[<ore:blockBrick>, null, <ore:blockBrick>] ]);
 
mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2018>*3,<gregtech:meta_item_1:2033>)
    .outputs(<gregtech:meta_item_1:2577>*4)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2961>)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:aluminosilicatewoolsolution>*288)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_steel>*2,<gregtech:meta_item_1:16180>*4)
    .fluidInputs(<liquid:aluminosilicatewoolsolution>*288)
    .duration(40)
    .EUt(12)
    .outputs(<contenttweaker:vacuumfurnacecasing>*2)
    .buildAndRegister();


furnace.remove(<gregtech:meta_item_1:10126>);
furnace.remove(<gregtech:meta_item_1:9126>);
furnace.remove(<gregtech:meta_item_1:10109>);
furnace.remove(<gregtech:meta_item_1:9109>);
furnace.remove(<gregtech:meta_item_1:9577>);
furnace.remove(<gregtech:meta_item_1:10577>);










alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10197>*2,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2197>*2,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10197>*2,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2197>*2,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<minecraft:iron_ingot>*2,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2033>*2,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<minecraft:iron_ingot>*2,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2033>*2,<gregtech:meta_item_1:10044>], null).remove();

alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10018>,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10018>,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10087>,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2087>,<gregtech:meta_item_1:2044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:10087>,<gregtech:meta_item_1:10044>], null).remove();
alloy_smelter.findRecipe(16,[<gregtech:meta_item_1:2087>,<gregtech:meta_item_1:10044>], null).remove();


assembler.recipeBuilder() 
    .inputs(<gregtech:frame_red_steel>,<gregtech:meta_item_1:12196>*16,<gregtech:meta_item_1:17184>*4)
    .outputs(<contenttweaker:logcasing>)
    .duration(400)
    .EUt(1000)
    .buildAndRegister();

assembler.recipeBuilder() 
    .inputs(<gregtech:frame_eglin_steel>,<gregtech:meta_item_1:12989>*4)
    .outputs(<contenttweaker:woodeneglinsteelcasing>)
    .duration(400)
    .EUt(1000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:3>,[	[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], 	[<ore:plateSteel>, <ore:plateSilver>, <ore:plateSteel>], 	[<ore:plateSteel>, <gregtech:machine_casing:10>, <ore:plateSteel>]]);
recipes.addShaped(<gregtech:machine:2>, [	[<ore:plateSteel>, <gregtech:machine_casing>, <ore:plateSteel>],	[<ore:plateSteel>, <gregtech:machine:1>, <ore:plateSteel>], 	[<ore:blockBrick>, <ore:blockBrick>, <ore:blockBrick>]]);
recipes.addShaped(<gregtech:machine:6>, [	[<ore:plateSteel>, <gregtech:machine_casing>, <ore:plateSteel>], 	[<ore:plateSteel>, <gregtech:machine:5>, <ore:plateSteel>], 	[<ore:blockBrick>, <ore:blockBrick>, <ore:blockBrick>]]);

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:solardistilledwater>*1000)
    .fluidOutputs(<liquid:dirtywater>*800,<liquid:salt_water>*200)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<ore:plankWood>)
    .fluidInputs(<liquid:creosote>*500)
    .outputs(<contenttweaker:lightlytreatedwoodplanks>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<ore:plankWood>)
    .fluidInputs(<liquid:creosote>*500)
    .outputs(<contenttweaker:lightlytreatedwoodplanks>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32574>*4,<gregtech:meta_item_1:12232>*4,<gregtech:meta_item_1:16987>*16)
    .fluidInputs(<liquid:stainless_steel>*144)
    .outputs(<overloaded:infinite_water_source>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32572>*9,<gregtech:meta_item_1:2216>*9)
    .outputs(<gtadditions:ga_dust:32126>*9)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32126>*9)
    .outputs(<contenttweaker:rawlapotron>)
    .duration(120)
    .EUt(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:rawlapotron>,<gregtech:meta_item_2:32492>*2,<gregtech:cable:51>*4)
    .outputs(<gregtech:meta_item_2:32213>)
    .duration(240)
    .EUt(1800)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10545>);
furnace.remove(<gregtech:meta_item_1:9545>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2545>)
    .outputs(<gregtech:meta_item_1:10545>)
    .duration(2000)
    .EUt(512)
    .property("temperature", 3400)
    .buildAndRegister();

pyro.findRecipe(96,[<gregtech:meta_item_1:14184>,<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],[<liquid:tetrafluoroethylene>*3000]).remove();

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:forcefieldgenerator>*4,<ore:circuitUev>*2,<gregtech:meta_item_2:26720>*4,<gregtech:meta_item_1:12720>*8,<gtadditions:ga_meta_item:32456>*4,<gregtech:meta_item_1:13714>*4,<gregtech:meta_item_2:17714>*4,<gregtech:meta_item_2:18714>*2,<gregtech:meta_item_2:19720>*6,<gregtech:meta_item_1:17720>*32)
    .outputs(<contenttweaker:ionthruster>)
    .duration(9000)
    .EUt(2000000)
    .fluidInputs(<liquid:tritanium>*2500,<liquid:europium>*2500,<liquid:duranium>*2500)
    .buildAndRegister();


assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12543>*6,<gregtech:meta_item_1:12007>*6,<gregtech:frame_hsss>,<gregtech:meta_item_1:32606>)
    .fluidInputs(<liquid:hssg>*1000)
    .outputs(<contenttweaker:optimizedrestrictedpcbcasing>*2)
    .duration(4000)
    .EUt(80000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10579>);
furnace.remove(<gregtech:meta_item_1:9579>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2579>)
    .outputs(<gregtech:meta_item_1:10579>)
    .duration(800)
    .property("temperature",6700)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12579>*8,<gregtech:meta_item_1:12312>*4,<contenttweaker:twocryogeniccoolant>*2,<gtadditions:ga_cable:2>*2,<gregtech:frame_osmiridium>,<ore:circuitMaster>)
    .outputs(<contenttweaker:opticalspeedingpipecasing>)
    .duration(1400)
    .EUt(12800)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32366>,<contenttweaker:vacuumfurnacecasing>,<contenttweaker:ionthruster>*2,<contenttweaker:tricryogeniccoolant>*2,<gregtech:meta_item_1:12311>*6,<gregtech:meta_item_1:12736>*6,<gregtech:meta_item_2:19683>*4,<gregtech:meta_item_2:17706>*6)
    .outputs(<contenttweaker:perfectlysealedvacuumcasing>)
    .fluidInputs(<liquid:lubricant>*2500,<liquid:indalloy140>*288,<liquid:incoloy813>*576,<liquid:incoloy945x>*576)
    .duration(800)
    .EUt(99999)
    .buildAndRegister();

lcr.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:ammonia>*2000,<liquid:nitrochlorobenzene>*1000,<liquid:hydrogen>*6000)
    .fluidOutputs(<liquid:ammonium_chloride>*1000,<liquid:paraphenylenediaminesolution>*8000)
    .duration(300)
    .EUt(12000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:paraphenylenediaminesolution>*8000)
    .outputs(<gtadditions:ga_dust:32093>*14)
    .fluidOutputs(<liquid:water>*2000)
    .duration(800)
    .EUt(21000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .outputs(<gtadditions:ga_dust:32094>*16,<gregtech:meta_item_1:2065>)
    .fluidInputs(<liquid:terephtaladehyde>*1000,<liquid:thionyl_chloride>*1000)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

lcr.recipeBuilder()
    .outputs(<gtadditions:ga_dust:32094>*16,<gregtech:meta_item_1:2065>)
    .fluidInputs(<liquid:terephtaladehyde>*1000,<liquid:thionyl_chloride>*1000)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32094>*16,<gtadditions:ga_dust:32093>*14)
    .fluidInputs(<liquid:nmethyl2pyrrolidone>*100)
    .fluidOutputs(<liquid:unrefinedkevlar>*1000)
    .duration(800)
    .EUt(8000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32094>*16,<gtadditions:ga_dust:32093>*14)
    .fluidInputs(<liquid:nmethyl2pyrrolidone>*100)
    .fluidOutputs(<liquid:unrefinedkevlar>*1000)
    .duration(800)
    .EUt(8000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:methylamine>*1000,<liquid:bbutyrolactone>*1000)
    .fluidOutputs(<liquid:nmethyl2pyrrolidone>*1000,<liquid:water>*1000)
    .duration(500)
    .EUt(1222)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:methylamine>*1000,<liquid:bbutyrolactone>*1000)
    .fluidOutputs(<liquid:nmethyl2pyrrolidone>*1000,<liquid:water>*1000)
    .duration(500)
    .EUt(1222)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:883>)
    .fluidInputs(<liquid:diketene>*1000,<liquid:hydrogen>*2000)
    .duration(600)
    .EUt(4000)
    .fluidOutputs(<liquid:bbutyrolactone>*1000)
    .notConsumable(<gtadditions:ga_dust:32092>)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*9)
    .fluidInputs(<liquid:naphtalene>*1000,<liquid:sulfuric_acid>*1000,<liquid:hydrochloric_acid>*1000)
    .outputs(<gregtech:meta_item_1:2155>*2,<gregtech:meta_item_1:2890>*6)
    .fluidOutputs(<liquid:twonaphthol>*1000,<liquid:water>*2000)
    .duration(500)
    .EUt(512)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:iron_chloride>*2000,<liquid:twonaphthol>*2000)
    .fluidOutputs(<liquid:binol>*1000,<liquid:hydrochloric_acid>*2000,<liquid:iron_ii_chloride>*2000)
    .duration(900)
    .EUt(9000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:86>*34)
    .outputs(<gtadditions:ga_dust:112>*2)
    .fluidInputs(<liquid:binol>*1000,<liquid:butylithium>*1000,<liquid:chlorodiphenylphosphine>*1000)
    .fluidOutputs(<liquid:cyclopentadiene>*2000,<liquid:water>*1000,<liquid:liquidbinap>*1000)
    .duration(560)
    .EUt(12890)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:86>*68)
    .fluidInputs(<liquid:phosphorus_trichloride>*1000)
    .fluidOutputs(<liquid:chlorodiphenylphosphine>*3000)
    .duration(500)
    .EUt(12000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:86>*68)
    .fluidInputs(<liquid:phosphorus_trichloride>*1000)
    .fluidOutputs(<liquid:chlorodiphenylphosphine>*3000)
    .duration(500)
    .EUt(12000)
    .buildAndRegister();

electrolyzer.findRecipe(30,null,[<liquid:water>*1000]).remove();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:liquidbinap>*1000)
    .outputs(<gtadditions:ga_dust:32092>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:81>)
    .fluidOutputs(<liquid:terephtaladehyde>*144)
    .duration(512)
    .EUt(1800)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:unrefinedkevlar>*1000)
    .fluidOutputs(<liquid:crystalkevlar>*1000)
    .notConsumable(<contenttweaker:rotarryspinningwhisker>)
    .duration(6000)
    .EUt(12800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12515>*4,<gregtech:meta_item_1:32607>,<gregtech:meta_item_2:32706>,<gregtech:meta_item_1:14043>*4)
    .fluidInputs(<liquid:soldering_alloy>*500)
    .outputs(<contenttweaker:rotarryspinningwhisker>)
    .duration(700)
    .EUt(9000)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:metastableenergeticalalloy>*288,<liquid:superheavy_mix>*144,<liquid:superheavy_l_alloy>*144,<liquid:superheavy_h_alloy>*144)
    .fluidOutputs(<liquid:pvtchs>*1000)
    .duration(800)
    .EUt(50000000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:metastable_hassium>*1000,<liquid:metastable_flerovium>*1000,<liquid:metastable_oganesson>*1000)
    .fluidOutputs(<liquid:metastableenergeticalalloy>*1000)
    .duration(8000)
    .EUt(2400000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:crystalkevlar>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .inputs(<gregtech:meta_item_1:2884>)
    .outputs(<gregtech:meta_item_1:2580>)
    .duration(4000)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:crystalkevlar>*1440)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .inputs(<gregtech:meta_item_1:2884>*10)
    .outputs(<gregtech:meta_item_1:2580>*10)
    .duration(8000)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:crystalkevlar>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .inputs(<gregtech:meta_item_1:2884>)
    .outputs(<gregtech:meta_item_1:2580>)
    .duration(40000)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:crystalkevlar>*1440)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .inputs(<gregtech:meta_item_1:2884>*10)
    .outputs(<gregtech:meta_item_1:2580>*10)
    .duration(80000)
    .EUt(2400)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:computercasing>*8,<contenttweaker:superconductingwire>*4,<gtadditions:ga_meta_item:32379>*2,<gtadditions:ga_meta_item:32373>*4,<gtadditions:ga_meta_item:32391>*4,<gtadditions:ga_meta_item:32385>*4,<ore:circuitUmv>*6,<gregtech:ga_cable:4737>*32,<gregtech:meta_item_1:12331>*32,<gregtech:meta_item_1:12853>*16,<gregtech:meta_item_2:17072>*64,<gregtech:meta_item_2:26859>*16,<contenttweaker:forcefieldgenerator>*4)
    .fluidInputs(<liquid:naquadria>*1700,<liquid:liquid_crystal_detector>*2000)
    .outputs(<gregtech:machine:10008>)
    .duration(1800)
    .EUt(3200000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:wire_coil:8>) 
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<contenttweaker:fusioncoil>*8)
    .duration(300)
    .EUt(31000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:superconductingcoil>,<contenttweaker:fusioncoil>,<gtadditions:ga_meta_item:32507>,<gregtech:ga_cable:2739>)
    .outputs(<contenttweaker:superconductingwire>)
    .duration(800)
    .EUt(2000000)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10071>)
    .outputs(<gregtech:meta_item_1:12071>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<nuclearcraft:ingot:1>)
    .outputs(<gregtech:meta_item_1:12071>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<forestry:ingot_tin>)
    .outputs(<gregtech:meta_item_1:12071>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<projectred-core:resource_item:101>)
    .outputs(<gregtech:meta_item_1:12071>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:71>)
    .outputs(<gregtech:meta_item_1:12071>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:72>)
    .outputs(<gregtech:meta_item_1:12072>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10072>)
    .outputs(<gregtech:meta_item_1:12072>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<qmd:ingot:3>)
    .outputs(<gregtech:meta_item_1:12072>)
    .duration(20)
    .EUt(12)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:18235>*4,<ore:circuitElite>*4,<gregtech:machine:505>,<gregtech:meta_item_1:13184>*2,<gregtech:meta_item_1:32614>*2)
    .fluidInputs(<liquid:tungsten_steel>*511)
    .outputs(<gregtech:machine:10028>)
    .duration(300)
    .EUt(2000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32729>*4,<gregtech:meta_item_1:14184>*16,<contenttweaker:reinforcedstring>*4)
    .outputs(<contenttweaker:seperationfilter>)
    .duration(420)
    .EUt(1280)
    .buildAndRegister();

recipes.addShapeless(<contenttweaker:seperationcatalyst>,[<contenttweaker:seperationfilter>,<gregtech:meta_item_1:19051>*16,<torchmaster:frozen_pearl>]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19079>*32,<gregtech:meta_item_1:12113>)
    .outputs(<gregtech:meta_item_1:32102>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19079>*32,<gregtech:meta_item_1:12212>)
    .outputs(<gregtech:meta_item_1:32102>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19079>*32,<gregtech:meta_item_1:12113>*4,<ore:circuitGood>*2)
    .outputs(<gregtech:meta_item_1:32103>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19079>*32,<gregtech:meta_item_1:12212>*4,<ore:circuitGood>*2)
    .outputs(<gregtech:meta_item_1:32103>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19079>*32,<gregtech:meta_item_1:12216>)
    .outputs(<gregtech:meta_item_1:32628>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:ceriumlanthanumingot>)
    .fluidOutputs(<liquid:moltenceriumlanthanum>*1000)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sodium_persulfate>*250)
    .inputs(<gregtech:meta_item_2:32444>,<gregtech:meta_item_1:19112>*8)
    .outputs(<gtadditions:ga_meta_item:32032>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:4243>*4,<contenttweaker:tricryogeniccoolant>*2,<contenttweaker:highpowercasing>*2,<ore:circuitUiv>*4,<contenttweaker:uvhasoc>*16,<qmd:semiconductor:6>*4,<extendedcrafting:frame>,<gtadditions:ga_meta_item:32374>*2,<gtadditions:ga_meta_item:32392>*2,<gtadditions:ga_meta_item:32362>*2,<gregtech:machine:3242>,<gregtech:machine:4019>)
    .fluidInputs(<liquid:liquid_neon>*12000,<liquid:mutatedlivingsolder>*500000,<liquid:cosmic_neutronium>*120000,<liquid:emergency_coolant>*12000)
    .outputs(<gregtech:machine:10025>)
    .duration(400)
    .EUt(12000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:9580>);
furnace.remove(<gregtech:meta_item_1:10580>);
furnace.remove(<gregtech:meta_item_1:10141>);
furnace.remove(<gregtech:meta_item_1:10144>);
furnace.remove(<gregtech:meta_item_1:9141>);
furnace.remove(<gregtech:meta_item_1:9144>);
furnace.remove(<gregtech:meta_item_1:10145>);
furnace.remove(<gregtech:meta_item_1:9145>);
furnace.remove(<gregtech:meta_item_1:10395>);
furnace.remove(<gregtech:meta_item_1:9395>);
furnace.remove(<gregtech:meta_item_1:10411>);
furnace.remove(<gregtech:meta_item_1:9411>);
furnace.remove(<gregtech:meta_item_1:10575>);
furnace.remove(<gregtech:meta_item_1:9575>);
furnace.remove(<gregtech:meta_item_1:10700>);
furnace.remove(<gregtech:meta_item_1:9700>);
furnace.remove(<gregtech:meta_item_1:10728>);
furnace.remove(<gregtech:meta_item_1:9728>);
furnace.remove(<gregtech:meta_item_1:10730>);
furnace.remove(<gregtech:meta_item_1:9730>);
furnace.remove(<gregtech:meta_item_1:10840>);
furnace.remove(<gregtech:meta_item_1:9840>);
furnace.remove(<gregtech:meta_item_1:10965>);
furnace.remove(<gregtech:meta_item_1:9965>);
furnace.remove(<gregtech:meta_item_1:10391>);
furnace.remove(<gregtech:meta_item_1:9391>);


chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*3)
    .fluidInputs(<liquid:radium_emulsion>*200)
    .fluidOutputs(<liquid:radium_sodium_solution>*200)
    .duration(200)
    .EUt(240)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:radium_sodium_solution>*1000)
    .outputs(<gregtech:meta_item_1:2063>,<gtadditions:ga_dust:32097>*5)
    .duration(600)
    .EUt(960)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:radium_sodium_solution>*1000)
    .outputs(<gregtech:meta_item_1:2063>,<gtadditions:ga_dust:32097>*5)
    .duration(600)
    .EUt(960)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32097>)
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:radium_cake_solution>*1000)
    .duration(100)
    .EUt(120)
    .buildAndRegister(); 

lcr.recipeBuilder()
    .fluidInputs(<liquid:radium_cake_solution>*2000,<liquid:formic_acid>*2000)
    .outputs(<gtadditions:ga_dust:32130>*4)
    .fluidOutputs(<liquid:ethylene>*1000,<liquid:water>*1000)
    .duration(800)
    .EUt(30)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32130>*2)
    .fluidInputs(<liquid:chlorine>*500)
    .outputs(<gtadditions:ga_dust:32096>)
    .fluidOutputs(<liquid:hydrochloric_acid>*250)
    .duration(300)
    .EUt(120)
    .buildAndRegister();


fluidheater.recipeBuilder()
    .fluidInputs(<liquid:activatedthoriumsolution>*300)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:heatedthoriumsolution>*200)
    .duration(12)
    .EUt(1888)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .fluidInputs(<liquid:heatedthoriumsolution>*200)
    .fluidOutputs(<liquid:supercooledthoriumsolution>*200)
    .duration(900)
    .EUt(621)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:supercooledthoriumsolution>*1000)
    .fluidOutputs(<liquid:thoriumsolution>*200)
    .outputs(<gregtech:meta_item_1:1069>,<gregtech:meta_item_1:1571>,<gregtech:meta_item_1:1825>)
    .duration(609)
    .EUt(490)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:purifiedthoriumemulsion>*1000)
    .fluidOutputs(<liquid:driedthoriumemulsion>*5000,<liquid:water>*500)
    .duration(480)
    .EUt(32000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:supercooledthoriumsolution>*1000)
    .fluidOutputs(<liquid:thoriumsolution>*200)
    .outputs(<gregtech:meta_item_1:1069>,<gregtech:meta_item_1:1571>,<gregtech:meta_item_1:1825>)
    .duration(609)
    .EUt(490)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:purifiedthoriumemulsion>*1000)
    .fluidOutputs(<liquid:driedthoriumemulsion>*5000,<liquid:water>*500)
    .duration(480)
    .EUt(32000)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<liquid:acetic_anhydride>)
    .inputs(<gtadditions:ga_dust:922>*3)
    .fluidInputs(<liquid:nitric_acid>*1000,<liquid:sulfuric_acid>*1000,<liquid:dense_hydrazine_fuel_mixture>*1000,<liquid:glyceryl>*1000)
    .fluidOutputs(<liquid:explosivehydrazine>*4000)
    .duration(300)
    .EUt(4000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10516>);
furnace.remove(<gregtech:meta_item_1:9516>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2516>)
    .outputs(<gregtech:meta_item_1:10516>)
    .property("temperature", 7600)
    .EUt(2000)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1072>*4,<gregtech:meta_item_1:32644>*2,<ore:circuitElite>*2,<gregtech:machine:4004>,<gregtech:meta_item_1:14734>*4,<gregtech:meta_item_1:14547>*4)
    .outputs(<gregtech:machine:10017>)
    .duration(1200)
    .EUt(2000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10526>);
furnace.remove(<gregtech:meta_item_1:9526>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2858>)
    .outputs(<gregtech:meta_item_1:11858>)
    .property("temperature",3700)
    .duration(250)
    .EUt(8000)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32090>)
    .outputs(<gregtech:meta_item_1:2035>)
    .chancedOutput(<gregtech:meta_item_1:1035>, 5000, 150)
    .duration(400)
    .EUt(190)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32090>)
    .outputs(<gregtech:meta_item_1:2035>)
    .chancedOutput(<gregtech:meta_item_1:1035>, 5000, 150)
    .duration(400)
    .EUt(190)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12521>*4,<gregtech:meta_item_2:16579>*32,<contenttweaker:highpowercasing>,<gregtech:meta_item_1:19207>*32,<gregtech:meta_item_1:19859>*32,<gregtech:meta_item_1:12551>*4)
    .outputs(<contenttweaker:computercasingvent>)
    .duration(200)
    .EUt(1400)
    .buildAndRegister();

fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:nobelium>*144,<liquid:lawrencium>*144)
    .fluidOutputs(<liquid:fontium>*144)
    .property("eu_to_start", 640000000)
    .duration(500)
    .EUt(500000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32055>)
    .fluidInputs(<liquid:explosivehydrazine>*1000)
    .outputs(<gtadditions:ga_dust:32156>)
    .duration(400)
    .EUt(15000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32055>)
    .fluidInputs(<liquid:explosivehydrazine>*1000)
    .outputs(<gtadditions:ga_dust:32156>)
    .duration(400)
    .EUt(15000)
    .buildAndRegister();

assembler.findRecipe(100000,[<gregtech:meta_item_1:12707>,<gregtech:meta_item_1:12717>,<gregtech:meta_item_1:12719>,<gregtech:meta_item_1:1780>,<gtadditions:ga_explosive>],[<liquid:free_electron_gas>*1000]).remove();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12707>,<gtadditions:ga_dust:32156>*2,<gregtech:meta_item_1:12717>,<gregtech:meta_item_1:12719>,<gregtech:meta_item_1:1780>,<gtadditions:ga_explosive>)
    .fluidInputs(<liquid:free_electron_gas>*1000)
    .outputs(<gtadditions:ga_explosive:2>)
    .duration(500)
    .EUt(100000)
    .buildAndRegister();

assembler.findRecipe(2,[<minecraft:ender_pearl>,<minecraft:blaze_powder>],null).remove();
assembler.findRecipe(2,[<minecraft:ender_pearl>*6,<minecraft:blaze_rod>],null).remove();

assembler.recipeBuilder()
    .inputs(<contenttweaker:quantumcasing>,<gregtech:meta_item_1:32677>*2,<gregtech:meta_item_1:12031>*32,<gregtech:meta_item_2:16470>*8,<gregtech:meta_item_1:12111>*32)
    .outputs(<contenttweaker:fieldgeneratorcasing>)
    .duration(400)
    .EUt(120000)
    .buildAndRegister();

ebf.findRecipe(480,[<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:10184>],null).remove();
chemReactor.findRecipe(30,[<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>],[<liquid:sodium_persulfate>*2000]).remove();
chemReactor.findRecipe(30,[<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>],[<liquid:iron_chloride>*1000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>],[<liquid:sodium_persulfate>*2000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>],[<liquid:iron_chloride>*1000]).remove();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>)
    .fluidInputs(<liquid:sodium_persulfate>*2000)
    .outputs(<gtadditions:ga_meta_item:32033>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>)
    .fluidInputs(<liquid:iron_chloride>*1000)
    .outputs(<gtadditions:ga_meta_item:32033>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>)
    .fluidInputs(<liquid:sodium_persulfate>*2000)
    .outputs(<gtadditions:ga_meta_item:32033>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19087>*12,<gregtech:meta_item_2:32445>)
    .fluidInputs(<liquid:iron_chloride>*1000)
    .outputs(<gtadditions:ga_meta_item:32033>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:10184>)
    .outputs(<gregtech:meta_item_1:11235>*2)
    .duration(400)
    .EUt(4000)
    .property("temperature",4200)
    .buildAndRegister();

vacfreezer.findRecipe(120,[<gregtech:meta_item_1:11235>],null).remove();

vacfreezer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:11235>)
    .outputs(<gregtech:meta_item_1:10235>)
    .duration(200)
    .EUt(4200)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10470>);
furnace.remove(<gregtech:meta_item_1:9470>);
furnace.remove(<gregtech:meta_item_1:10142>);
furnace.remove(<gregtech:meta_item_1:9142>);

metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10095>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<gregtech:meta_item_1:12095>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

thermal.findRecipe(60,[<gregtech:meta_item_1:6288>],null).remove();

thermal.recipeBuilder()
    .inputs(<gregtech:meta_item_1:6288>)
    .outputs(<gregtech:meta_item_1:7288>*2)
    .chancedOutput(<gregtech:meta_item_1:2025>*3, 5000, 0)
    .EUt(12)
    .duration(40)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32707>*2,<gregtech:meta_item_2:32486>*16,<gregtech:meta_item_2:16859>*16,<contenttweaker:engravedgoldchip>*4,<gregtech:meta_item_2:32484>*6,<gregtech:meta_item_2:32481>*12)
    .outputs(<contenttweaker:datadisc>)
    .duration(240)
    .EUt(6000)
    .buildAndRegister();

ebf.findRecipe(120,[<gregtech:meta_item_1:2061>*32,<gregtech:meta_item_1:1410>],null).remove();

ebf.recipeBuilder()
    .inputs(<contenttweaker:unbaked_monocrystalline_silicon_boule>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_2:32439>)
    .property("temperature", 1784)
    .duration(9000)
    .EUt(120)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:unbaked_monocrystalline_silicon_boule>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32439>)
    .property("temperature", 1784)
    .duration(4000)
    .EUt(120)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:unbaked_monocrystalline_silicon_boule>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidInputs(<liquid:argon>*1000)
    .outputs(<gregtech:meta_item_2:32439>)
    .property("temperature", 1784)
    .duration(1000)
    .EUt(120)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12549>*32,<gregtech:meta_item_1:14985>*32,<gregtech:meta_item_2:19530>*4,<gregtech:meta_item_1:14549>*32,<gregtech:meta_item_2:26570>*8,<gregtech:meta_item_1:14570>*32
    ,<contenttweaker:quantumcasing>,<ore:circuitUiv>*8,<gregtech:meta_item_1:12570>*32,<gtadditions:ga_meta_item:32362>*4,<gtadditions:ga_meta_item:32356>*2,<gtadditions:ga_meta_item:32380>*2
    ,<gtadditions:ga_meta_item:32386>*2,<gtadditions:ga_meta_item:32499>*16)
    .outputs(<gregtech:machine:10021>)
    .fluidInputs(<liquid:artheriumsn>*50000,<liquid:germanium>*2000,<liquid:americium>*4200,<liquid:naquadriatic_taranium>*6000)
    .notConsumable(<contenttweaker:datadiskblackholecompressor>)
    .duration(20000)
    .EUt(2000000)
    .buildAndRegister();


lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32062>*5,<gtadditions:ga_dust:32086>,<gtadditions:ga_dust:32088>)
    .fluidInputs(<liquid:siliconoil>*1000,<liquid:ethylene_glycol>*4000)
    .fluidOutputs(<liquid:polyurethaneresin>*1000)
    .duration(400)
    .EUt(2500)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:water>*5000,<liquid:dimethyldichlorosilane>*4000,<liquid:ethylene_oxide>*1000)
    .fluidOutputs(<liquid:siliconoil>*5000)
    .EUt(1800)
    .duration(200)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:water>*5000,<liquid:dimethyldichlorosilane>*4000,<liquid:ethylene_oxide>*1000)
    .fluidOutputs(<liquid:siliconoil>*5000)
    .EUt(1800)
    .duration(200)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:diphenylmethanediiscocyanatemixture>*1000)
    .outputs(<gtadditions:ga_dust:32062>*29)
    .fluidOutputs(<liquid:hydrochloric_acid>*5000)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:diaminodiphenylmethanemixture>*1000,<liquid:phosgene>*1000)
    .fluidOutputs(<liquid:diphenylmethanediiscocyanatemixture>*2000) 
    .duration(500)
    .EUt(24000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:aniline>*2000,<liquid:formaldehyde>*2000,<liquid:hydrochloric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:diaminodiphenylmethanemixture>*1000)
    .duration(200)
    .EUt(7200)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:diaminodiphenylmethanemixture>*1000,<liquid:phosgene>*1000)
    .fluidOutputs(<liquid:diphenylmethanediiscocyanatemixture>*2000) 
    .duration(500)
    .EUt(24000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:aniline>*2000,<liquid:formaldehyde>*2000,<liquid:hydrochloric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:diaminodiphenylmethanemixture>*1000)
    .duration(200)
    .EUt(7200)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:iron_chloride>*100,<liquid:propionicacid>*1000,<liquid:pentanol>*2000)
    .outputs(<gtadditions:ga_dust:32089>)
    .inputs(<gregtech:meta_item_1:2071>)
    .duration(800)
    .EUt(25000)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:iron_chloride>*100,<liquid:propionicacid>*1000,<liquid:pentanol>*2000)
    .outputs(<gtadditions:ga_dust:32089>)
    .inputs(<gregtech:meta_item_1:2071>)
    .duration(800)
    .EUt(25000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:carbon_monoxide>*1000,<liquid:nickeltetracarbonyl>*100)
    .fluidOutputs(<liquid:propionicacid>*1000,<liquid:water>*1000)
    .duration(800)
    .EUt(4000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:carbon_monoxide>*1000,<liquid:nickeltetracarbonyl>*100)
    .fluidOutputs(<liquid:propionicacid>*1000,<liquid:water>*1000)
    .duration(800)
    .EUt(4000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_monoxide>*4000)
    .inputs(<gregtech:meta_item_1:2044>)
    .fluidOutputs(<liquid:nickeltetracarbonyl>*1000)
    .duration(200)
    .EUt(52000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:carbon_monoxide>*4000)
    .inputs(<gregtech:meta_item_1:2044>)
    .fluidOutputs(<liquid:nickeltetracarbonyl>*1000)
    .duration(200)
    .EUt(52000)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .fluidOutputs(<liquid:hydrogen>*11000)
    .outputs(<gtadditions:ga_dust:32087>*64,<gtadditions:ga_dust:32087>*42,<gregtech:meta_item_1:2155>*6,<gregtech:meta_item_1:2009>*3)
    .fluidInputs(<liquid:carbon_monoxide>*1000)
    .inputs(<gtadditions:ga_dust:32113>*4,<gtadditions:ga_dust:86>*64,<gtadditions:ga_dust:86>*40,<gtadditions:ga_dust:929>*18)
    .duration(400)
    .EUt(90000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:highpowercasing>,<gregtech:meta_item_1:32674>,<gtadditions:ga_meta_item:1207>*2,<gregtech:meta_item_1:18235>*16,<gregtech:meta_item_1:17032>*4,<ore:circuitElite>)
    .fluidInputs(<liquid:osmium>*1296)
    .outputs(<contenttweaker:quantumcasing>)
    .duration(1000)
    .EUt(12000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_transparent_casing:4>,<contenttweaker:quantumcasing>)
    .fluidInputs(<liquid:trinium>*144)
    .outputs(<contenttweaker:quantumglass>)
    .duration(1000)
    .EUt(12000)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000)
    .fluidOutputs(<liquid:hundretmethanol>*1000)
    .inputs(<gtadditions:ga_dust:30>)
    .outputs(<gtadditions:ga_dust:31>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:butanol>*1000)
    .fluidOutputs(<liquid:hundretbutanol>*1000)
    .inputs(<gtadditions:ga_dust:30>)
    .outputs(<gtadditions:ga_dust:31>)
    .duration(100)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32397>)
    .fluidInputs(<liquid:hundretmethanol>*2000,<liquid:hundretbutanol>*2000)
    .outputs(<contenttweaker:purepetridish>)
    .duration(400)
    .EUt(28000)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<contenttweaker:petridishmold>)
    .fluidInputs(<liquid:polypropelene>*144,<liquid:polybenzimidazole>*144,<liquid:polyetheretherketone>*144)
    .outputs(<gtadditions:ga_meta_item:32023>)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

fluid_solidifier.findRecipe(24,[<gregtech:meta_item_1:32313>],[<liquid:polystyrene>*36]).remove();
fluid_solidifier.findRecipe(24,[<gregtech:meta_item_1:32313>],[<liquid:polytetrafluoroethylene>*36]).remove();

forming_press.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2061>*32,<gregtech:meta_item_1:2410>,<contenttweaker:monocrystalline_seed_crystal>)
    .outputs(<contenttweaker:unbaked_monocrystalline_silicon_boule>)
    .duration(200)
    .EUt(2)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:34>,<gtadditions:ga_dust:33>,<gtadditions:ga_dust:32>)
    .fluidInputs(<liquid:sterilized_growth_medium>*1000)
    .outputs(<contenttweaker:evolvedalaemixture>*3)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:34>,<gtadditions:ga_dust:33>,<gtadditions:ga_dust:32>)
    .fluidInputs(<liquid:sterilized_growth_medium>*1000)
    .outputs(<contenttweaker:evolvedalaemixture>*3)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:evolvedalaemixture>*2,<contenttweaker:taucetialgaemixture>*2)
    .fluidInputs(<liquid:water>*20000)
    .outputs(<contenttweaker:algaebreedingbase>*2)
    .duration(2900)
    .EUt(500000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12184>*64,<gregtech:meta_item_1:12859>*32,<gtadditions:ga_meta_item:1231>*32)
    .outputs(<contenttweaker:petridishmold>)
    .duration(700)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder()
    .outputs(<contenttweaker:mutationbasedpetridish>)
    .inputs(<contenttweaker:algaebreedingbase>,<gtadditions:ga_dust:373>,<contenttweaker:purepetridish>)
    .duration(400)
    .EUt(1500000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*4000,<liquid:butene>*2000,<liquid:carbon_monoxide>*2000)
    .fluidOutputs(<liquid:pentoldehyde>*1000,<liquid:isopentoldehyde>*1000)
    .inputs(<contenttweaker:tinyoranorhodiumcatalystdust>)
    .duration(500)
    .EUt(60000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:isopentoldehyde>*1000)
    .fluidOutputs(<liquid:hydrogen>*10000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2012>*6)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:pentoldehyde>*1000,<liquid:hydrogen>*2000)
    .inputs(<gregtech:meta_item_1:49>)
    .fluidOutputs(<liquid:pentanol>*1000)
    .duration(480)
    .EUt(99999)
    .buildAndRegister();

cas.recipeBuilder()
    .fluidInputs(<liquid:livingsolder>*2000)
    .inputs(<gtadditions:ga_dust:32043>*16,<gregtech:meta_item_1:32615>,<gtadditions:ga_meta_item:32035>,<contenttweaker:biocells>*4,<gtadditions:ga_meta_item:32018>*16)
    .outputs(<contenttweaker:biocircuitboard>)
    .duration(400)
    .EUt(52000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidOutputs(<liquid:livingsolder>*14400)
    .notConsumable(<gtadditions:ga_meta_item:32463>)
    .inputs(<contenttweaker:mutationbasedpetridish>,<gtadditions:ga_meta_item:32018>*2)
    .fluidInputs(<liquid:geneticmutagen>*1000)
    .duration(400)
    .EUt(5200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*8)
    .inputs(<gregtech:meta_item_1:2564>)
    .fluidOutputs(<liquid:geneticmutagen>*2)
    .duration(12000)
    .EUt(7000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*16)
    .notConsumable(<contenttweaker:biobasedpetridish>)
    .inputs(<gregtech:meta_item_1:2558>)
    .fluidOutputs(<liquid:geneticmutagen>*6)
    .duration(800)
    .EUt(7000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*16)
    .notConsumable(<contenttweaker:biobasedpetridish>)
    .inputs(<gregtech:meta_item_1:2564>)
    .fluidOutputs(<liquid:geneticmutagen>*4)
    .duration(12000)
    .EUt(500000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*16)
    .notConsumable(<contenttweaker:biobasedpetridish>)
    .inputs(<gtadditions:ga_meta_item:32344>)
    .fluidOutputs(<liquid:geneticmutagen>*8)
    .duration(12000)
    .EUt(500000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:bacterial_growth_medium>*32)
    .notConsumable(<contenttweaker:biobasedpetridish>)
    .inputs(<gtadditions:ga_meta_item:32345>)
    .fluidOutputs(<liquid:geneticmutagen>*32)
    .duration(12000)
    .EUt(500000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:acetaldehyde>*1000,<liquid:formaldehyde>*4000)
    .fluidOutputs(<liquid:carbon_monoxide>*1000)
    .inputs(<gregtech:meta_item_1:2373>)
    .outputs(<gtadditions:ga_dust:32086>*21)
    .duration(400)
    .EUt(22000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:biomass>*2000,<liquid:geneticmutagen>*250)
    .outputs(<contenttweaker:biobasedpetridish>)
    .inputs(<contenttweaker:purepetridish>)
    .duration(250)
    .EUt(18000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:iron_chloride>*16000)
    .inputs(<contenttweaker:biocircuitboard>,<gregtech:meta_item_1:19993>*32)
    .outputs(<contenttweaker:ultrabiomutatedcircuitboard>)
    .duration(3200)
    .EUt(5000000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sodium_persulfate>*32000)
    .inputs(<contenttweaker:biocircuitboard>,<gregtech:meta_item_1:19993>*32)
    .outputs(<contenttweaker:ultrabiomutatedcircuitboard>)
    .duration(4000)
    .EUt(5000000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:thulium>*512)
    .inputs(<gregtech:wire_coil:6>*2,<gtadditions:ga_meta_item:1207>*2,<gregtech:frame_hsss>,<gregtech:meta_item_1:17235>*4,<gregtech:meta_item_2:16858>*64,<gregtech:meta_item_2:16858>*64)
    .outputs(<contenttweaker:coil>)
    .duration(700)
    .EUt(51290)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sterilebiomedium>*2000)
    .inputs(<gtadditions:ga_meta_item:32018>*32,<gregtech:meta_item_1:2678>*16)
    .outputs(<contenttweaker:biocells>)
    .duration(50000)
    .EUt(32000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sterilizedbiocatalystmedium>*1000)
    .fluidOutputs(<liquid:sterilebiomedium>*100)
    .inputs(<gregtech:meta_item_1:2020>*4,<gregtech:meta_item_1:2719>*2,<gregtech:meta_item_1:1307>*6)
    .duration(800)
    .EUt(12000)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:sterilebiomedium>*500)
    .inputs(<contenttweaker:biocells>*4,<contenttweaker:biobasedpetridish>)
    .outputs(<contenttweaker:biobasedpetridiswithculture>)
    .fluidOutputs(<liquid:sterilizedbiocatalystmedium>*500)
    .duration(800)
    .EUt(90000)
    .buildAndRegister();



ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2537>)
    .outputs(<gregtech:meta_item_1:9051>)
    .property("temperature", 2700)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:redstone_alloy>*2048)
    .inputs(<gtadditions:ga_meta_item:32594>,<gregtech:meta_item_1:2421>*32)
    .outputs(<contenttweaker:femtopicw>)
    .duration(800)
    .EUt(999999)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:reinfrocedkevlarcloth>)
    .outputs(<gregtech:meta_item_1:2581>)
    .duration(800)
    .EUt(2000000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_monoxide>*2000,<liquid:hydrogen>*4000,<liquid:pentanol>*2000)
    .fluidOutputs(<liquid:hexanoldehyde>*1000,<liquid:isohexanoldehyde>*1000)
    .inputs(<contenttweaker:tinyoranorhodiumcatalystdust>)
    .duration(1200)
    .EUt(600000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:isohexanoldehyde>*1000)
    .fluidOutputs(<liquid:hydrogen>*12000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2012>*8)
    .duration(100)
    .EUt(24)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:hexanoldehyde>*1000)
    .fluidOutputs(<liquid:hexanol>*1000)
    .duration(800)
    .EUt(523000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hexanol>*1000)
    .inputs(<gtadditions:ga_dust:32089>,<gtadditions:ga_dust:32129>*14,<gregtech:meta_item_1:2044>*2)
    .outputs(<gtadditions:ga_dust:32088>)
    .duration(1200)
    .EUt(420000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:500>, [	[null, null, null], 	[<ore:cableGtSingleLead>, <ore:plateWroughtIron>, <ore:cableGtSingleLead>], 	[<ore:plateLead>, <gregtech:machine_casing>, <ore:plateLead>]]);


alloy_smelter.recipeBuilder()
    .inputs(<contenttweaker:paraffinwax>,<contenttweaker:boundleather>)
    .outputs(<contenttweaker:boiledleather>)
    .duration(400)
    .EUt(222)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:28>,<gregtech:meta_item_1:2524>*2,<gregtech:meta_item_1:2105>)
    .outputs(<gtadditions:ga_dust:32085>*4)
    .duration(128)
    .EUt(128)
    .buildAndRegister();

autoclave.recipeBuilder()
    .fluidInputs(<liquid:plastic>*144)
    .inputs(<gregtech:meta_item_1:2012>)
    .chancedOutput(<gregtech:meta_item_2:32504>*2, 500, 120)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:titanium_tetrachloride>*1000)
    .outputs(<gtadditions:ga_dust:32129>*4)
    .fluidOutputs(<liquid:hydrochloric_acid>*4000)
    .inputs(<gtadditions:ga_dust:32082>)
    .duration(600)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:titanium_tetrachloride>*1000)
    .outputs(<gtadditions:ga_dust:32129>*4)
    .fluidOutputs(<liquid:hydrochloric_acid>*4000)
    .inputs(<gtadditions:ga_dust:32082>)
    .duration(600)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000)
    .inputs(<gregtech:meta_item_1:2757>)
    .outputs(<gtadditions:ga_dust:32082>*2)
    .duration(600)
    .EUt(2800)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10992>);
furnace.remove(<gregtech:meta_item_1:9992>);
furnace.remove(<gregtech:meta_item_1:10581>);
furnace.remove(<gregtech:meta_item_1:9581>);

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:liquidbinap>*1000)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gtadditions:ga_dust:32092>)
    .duration(39)
    .EUt(220)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:dirtywater>*1000)
    .fluidOutputs(<liquid:water>*856)
    .outputs(<gtadditions:ga_dust:32095>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32095>)
    .chancedOutput(<gregtech:meta_item_1:2328>, 9000, 200)
    .chancedOutput(<gregtech:meta_item_1:2241>, 5600, 1200)
    .chancedOutput(<thermalfoundation:material:864>, 2000, 140)
    .chancedOutput(<gregtech:meta_item_1:2960>, 1200, 520)
    .outputs(<gtadditions:ga_dust:32081>)
    .duration(40)
    .EUt(40)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:dirtywater>*1000)
    .fluidOutputs(<liquid:water>*856)
    .outputs(<gtadditions:ga_dust:32095>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32095>)
    .chancedOutput(<gregtech:meta_item_1:2328>, 9000, 200)
    .chancedOutput(<gregtech:meta_item_1:2241>, 5600, 1200)
    .chancedOutput(<thermalfoundation:material:864>, 2000, 140)
    .chancedOutput(<gregtech:meta_item_1:2960>, 1200, 520)
    .outputs(<gtadditions:ga_dust:32081>)
    .duration(40)
    .EUt(40)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32081>*9)
    .outputs(<minecraft:dirt>)
    .duration(499)
    .EUt(200)
    .buildAndRegister();

extractor.recipeBuilder()   
    .inputs(<gregtech:concrete:10>)
    .outputs(<gregtech:concrete:6>)
    .duration(49)
    .EUt(12)
    .buildAndRegister();

wiremill.findRecipe(8,[<gregtech:meta_item_1:10231>],null).remove();

wiremill.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10231>)
    .outputs(<gregtech:cable:231>*2)
    .duration(120)
    .EUt(390)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:raw_gasoline>*2000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:ethanolgasoline>*2000)
    .duration(400)
    .EUt(1999)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:raw_gasoline>*2000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:ethanolgasoline>*2000)
    .duration(400)
    .EUt(1999)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*1500,<liquid:ether>*500)
    .duration(190)
    .EUt(240)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:diluted_sulfuric_acid>*1500,<liquid:ether>*500)
    .duration(190)
    .EUt(240)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*8000,<liquid:iron_ii_chloride>*1000,<liquid:cyclopentadiene>*2000,<liquid:ice>*4000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:impureferrocenemixture>*15000)
    .duration(999)
    .EUt(2400)
    .buildAndRegister();

lcr.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .fluidInputs(<liquid:impureferrocenemixture>*7500,<liquid:ether>*1000)
    .fluidOutputs(<liquid:ferrocenewaste>*7500,<liquid:ferrocenesolution>*1000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .fluidInputs(<liquid:impureferrocenemixture>*7500,<liquid:ether>*1000)
    .fluidOutputs(<liquid:ferrocenewaste>*7500,<liquid:ferrocenesolution>*1000)
    .duration(20)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:ferrocenesolution>*2000)
    .fluidOutputs(<liquid:ether>*1000,<liquid:ferrocene>*1000)
    .duration(250)
    .EUt(1500)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_peroxide>*1000,<liquid:nitrogen_dioxide>*1000)
    .inputs(<gregtech:meta_item_1:2865>*2)
    .fluidOutputs(<liquid:combustionpromoter>*2000)
    .duration(459)
    .EUt(1260)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32080>*4)
    .fluidInputs(<liquid:combustionpromoter>*2000,<liquid:naphtha>*4000,<liquid:tetranitromethane>*2000,<liquid:lpg>*1000,<liquid:light_fuel>*3000)
    .fluidOutputs(<liquid:jetfuel>*40000)
    .duration(1200)
    .EUt(900)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:ferrocene>*1000)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gtadditions:ga_dust:32080>)
    .duration(890)
    .EUt(12000)
    .buildAndRegister();

ebf.findRecipe(120,[<gregtech:meta_item_1:2981>],null).remove();

compressor.recipeBuilder()
    .inputs(<contenttweaker:asphalt>*9)
    .outputs(<contenttweaker:asphaltblock>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:asphaltblock>)
    .outputs(<contenttweaker:asphalt>*9)
    .duration(40)
    .EUt(12)
    .buildAndRegister(); 

chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2326>)
    .fluidInputs(<liquid:sulfuric_acid>*500)
    .chancedOutput(<contenttweaker:rareearthone>, 3333, 100)
    .chancedOutput(<contenttweaker:rareearthtwo>, 3333, 100)
    .chancedOutput(<contenttweaker:rareearththree>, 3333, 100)
    .duration(600)
    .EUt(2200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:teflon>*576,<liquid:enrichedholmium>*1024,<liquid:radoxpolymer>*1440)
    .outputs(<contenttweaker:cosmic_circuit_board>)
    .inputs(<gregtech:meta_item_1:12584>*4,<gregtech:meta_item_1:12913>*4,<contenttweaker:ultrabiomutatedcircuitboard>)
    .duration(4000)
    .EUt(8000000)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<ore:circuitSuperconductor>*16,<contenttweaker:xontopic>*64,<contenttweaker:cosmic_circuit_board>*16,<contenttweaker:spacetimebendingsmdtransistor>*64,<contenttweaker:spacetimebendingsmdcapacitor>*64)
    .fluidInputs(<liquid:radoxpolymer>*50000)
    .outputs(<contenttweaker:spacetimebendingprocessor>)
    .duration(4000)
    .EUt(60000000)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2027>,<gregtech:meta_item_1:2309>*3)
    .outputs(<gregtech:meta_item_1:2585>*4)
    .duration(400)
    .EUt(15670)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2993>)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .duration(240)
    .EUt(20000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2993>)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .chancedOutput(<contenttweaker:trueneutroniumparticle>, 3333, 0)
    .duration(240)
    .EUt(20000)
    .buildAndRegister();

assembler.recipeBuilder()   
    .inputs(<gregtech:machine:2534>,<ore:circuitExtreme>*2,<gregtech:meta_item_2:26300>*2,<gregtech:meta_item_1:13905>*4,<ore:circuitMaster>*2,<gregtech:meta_item_2:19051>*4,<ore:circuitElite>*2,<gregtech:meta_item_1:13983>*2)
    .outputs(<gregtech:machine:2559>)
    .duration(800)
    .EUt(1222)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2912>*36,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2016>*2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs(<gtadditions:ga_dust:32072>*40)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32072>)
    .outputs(<nuclearcraft:alloy:12>)
    .property("temperature", 1400)
    .duration(500)
    .EUt(630)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2074>*3,<gregtech:meta_item_1:2373>*6)
    .fluidInputs(<liquid:sulfuric_acid>*2000)
    .fluidOutputs(<liquid:water>*2000,<liquid:diluted_sulfuric_acid>*3000)
    .outputs(<qmd:chemical_dust>*3)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:monazite_solution>*1000)
    .outputs(<gtadditions:ga_dust:32065>,<gregtech:meta_item_1:2159>,<gregtech:meta_item_1:2122>,<gregtech:meta_item_1:2121>,<gregtech:meta_item_1:2713>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();


#--------MV Components-------------------------#
recipes.addShaped(<gregtech:meta_item_1:32601>, [	[<ore:cableGtSingleCopper>, <ore:wireGtDoubleCupronickel>, <ore:stickAluminium>], 	[<ore:wireGtDoubleCupronickel>, <ore:stickSteelMagnetic>, <ore:wireGtDoubleCupronickel>], 	[<ore:stickAluminium>, <ore:wireGtDoubleCupronickel>, <ore:cableGtSingleCopper>]]);
recipes.addShaped(<gregtech:meta_item_1:32631>, [	[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>], 	[<gregtech:meta_item_1:32601>, <ore:cableGtSingleCopper>, <gregtech:meta_item_1:32601>], 	[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>]]);




assembler.recipeBuilder()  
     .inputs(<gregtech:cable:5018>*2,<gregtech:cable:1109>*4,<gregtech:meta_item_1:14001>*2,<gregtech:meta_item_1:14298>)   
     .outputs(<gregtech:meta_item_1:32601>)   
     .duration(40)    
     .EUt(120)   
     .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32601>*2,<gregtech:cable:5018>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:rubber>*864)
    .outputs(<gregtech:meta_item_1:32631>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()    
    .inputs(<ore:circuitExtreme>*4,<ore:plateEnderEye>)
    .outputs(<gregtech:meta_item_1:32671>)
    .fluidInputs(<liquid:osmium>*1412)
    .duration(80)
    .EUt(120)
    .buildAndRegister();
    
recipes.addShaped(<gregtech:meta_item_1:32671>, [	[<ore:plateDoubleOsmium>, <ore:circuitExtreme>, <ore:plateDoubleOsmium>], 	[<ore:circuitExtreme>, <ore:plateEnderEye>, <ore:circuitExtreme>], 	[<ore:plateDoubleOsmium>, <ore:circuitExtreme>, <ore:plateDoubleOsmium>]]);
assembler.findRecipe(120,[<gregtech:meta_item_1:32601>*2,<gregtech:cable:5018>,<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:rubber>*864]).remove();
assembler.findRecipe(120,[<gregtech:cable:5018>*2,<gregtech:cable:1018>*4,<gregtech:meta_item_1:14001>*2,<gregtech:meta_item_1:14298>], null).remove();
recipes.addShaped(<gregtech:meta_item_1:32691>, [	[<ore:plateAluminium>, null, <ore:gemFlawedDiamond>], 	[<ore:plateAluminium>, <ore:stickElectrum>, null], 	[<ore:circuitGood>, <ore:plateAluminium>, <ore:plateAluminium>]]);
assembler.findRecipe(120,[<gtadditions:ga_meta_item:32207>,<gregtech:meta_item_1:14112>,<gregtech:meta_item_1:12001>,<minecraft:quartz>],null).remove();

assembler.recipeBuilder()
    .inputs(<ore:stickElectrum>,<ore:plateAluminium>*4,<ore:gemFlawedDiamond>,<ore:circuitGood>)
    .outputs(<gregtech:meta_item_1:32691>)
    .duration(80)
    .EUt(120) 
    .buildAndRegister();
recipes.addShaped(<gregtech:meta_item_1:32681>, [	[<ore:stickElectrum>, <ore:stickElectrum>, <ore:circuitGood>], 	[<ore:cableGtSingleCopper>, <ore:gemFlawedEmerald>, <ore:stickElectrum>], 	[<ore:circuitGood>, <ore:cableGtSingleCopper>, <ore:stickElectrum>]]);
assembler.findRecipe(120,[<gtadditions:ga_meta_item:32200>*2,<minecraft:quartz>,<gregtech:cable:5018>,<gregtech:meta_item_1:32766>.withTag({Configuration: 1}),<gregtech:meta_item_1:14112>*4], null).remove();
assembler.recipeBuilder()
    .inputs(<ore:stickElectrum>*4,<ore:circuitGood>*2,<ore:gemFlawedEmerald>,<gregtech:cable:5018>*2)
    .outputs(<gregtech:meta_item_1:32681>)
    .duration(80)
    .EUt(120)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .buildAndRegister();
#--------HV Components-------------------------#
recipes.addShaped(<gregtech:meta_item_1:32632>, [	[<ore:plateSiliconRubber>, <ore:plateSiliconRubber>, <ore:plateSiliconRubber>], 	[<gregtech:meta_item_1:32602>, <ore:cableGtDoubleElectrum>, <gregtech:meta_item_1:32602>], 	[<ore:plateSiliconRubber>, <ore:plateSiliconRubber>, <ore:plateSiliconRubber>]]);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:2112>*4,<gregtech:cable:5026>*2,<gregtech:meta_item_1:14183>*2,<gregtech:meta_item_1:14298>)
    .outputs(<gregtech:meta_item_1:32602>)
    .duration(100)
    .EUt(480)
    .buildAndRegister();

recipes.addShaped(<gregtech:meta_item_1:32602>, [	[<ore:cableGtSingleGold>, <ore:wireGtQuadrupleElectrum>, <ore:stickStainlessSteel>], 	[<ore:wireGtQuadrupleElectrum>, <ore:stickSteelMagnetic>, <ore:wireGtQuadrupleElectrum>], 	[<ore:stickStainlessSteel>, <ore:wireGtQuadrupleElectrum>, <ore:cableGtSingleGold>]]);
assembler.findRecipe(480,[<gregtech:cable:2018>*4,<gregtech:cable:5026>*2,<gregtech:meta_item_1:14183>*2,<gregtech:meta_item_1:14298>],null).remove();
#--------EV Components-------------------------#








assembler.recipeBuilder()
    .inputs(<gregtech:cable:3231>*4,<gregtech:meta_item_1:14072>*2,<gregtech:meta_item_1:14299>,<gregtech:cable:5001>*2)
    .outputs(<gregtech:meta_item_1:32603>)
    .duration(100)
    .EUt(1980)
    .buildAndRegister();

recipes.addShaped(<gregtech:meta_item_1:32603>, [	[<ore:cableGtSingleAluminium>, <gregtech:cable:3231>, <ore:stickTitanium>], 	[<gregtech:cable:3231>, <ore:stickNeodymiumMagnetic>,<gregtech:cable:3231>], 	[<ore:stickTitanium>, <gregtech:cable:3231>, <ore:cableGtSingleAluminium>]]);
assembler.findRecipe(1980,[<gregtech:meta_item_1:14072>*2,<gregtech:cable:3087>*4,<gregtech:meta_item_1:14299>,<gregtech:cable:5001>*2],null).remove();
#--------IV Components-------------------------#
recipes.addShaped(<gregtech:meta_item_1:32604>, [	[<ore:cableGtSingleTungsten>, <ore:wireGtOctalTgtalloy>, <ore:stickTungstenSteel>], 	[<ore:wireGtOctalTgtalloy>, <ore:stickNeodymiumMagnetic>, <ore:wireGtOctalTgtalloy>], 	[<ore:stickTungstenSteel>, <ore:wireGtOctalTgtalloy>, <ore:cableGtSingleTungsten>]]);
assembler.findRecipe(7680,[<gregtech:cable:4087>*4,<gregtech:cable:5074>*2,<gregtech:meta_item_1:14235>*2,<gregtech:meta_item_1:14299>], null).remove();
assembler.recipeBuilder()
    .inputs(<ore:wireGtOctalTgtalloy>*4,<gregtech:cable:5074>*2,<gregtech:meta_item_1:14235>*2,<gregtech:meta_item_1:14299>)
    .outputs(<gregtech:meta_item_1:32604>)
    .duration(80)
    .EUt(7680)
    .buildAndRegister();

#-------LUV Components-------------------------#



Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32606>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32615>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32635>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32645>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32655>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32665>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32685>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32695>], [], false);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32705>], [], false);



#-------ZPM Components-------------------------#
#--------UV Components-------------------------#
#-------UHV Components-------------------------#
#-------UEV Components-------------------------#
#-------UIV Components-------------------------#
#-------UMV Components-------------------------#
