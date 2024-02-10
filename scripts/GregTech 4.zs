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

lcr.recipeBuilder()
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
    .outputs(<gregtech:meta_item_2:32498>*4)
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
    .outputs(<gregtech:metal_casing_bismuth_bronze>*3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
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
    .outputs(<gtadditions:ga_dust:32150>)
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

recipes.addShaped(<gregtech:machine:2994>, [	[<ore:cableGtSingleTin>, <ore:plateSteel>, <ore:cableGtSingleTin>], 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:714>, <contenttweaker:cupronickelcoil>], 	[<ore:cableGtSingleTin>, <ore:plateSteel>, <ore:cableGtSingleTin>]]);

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19207>*64,<gregtech:meta_item_1:19207>*64,<gtadditions:ga_dust:252>*16,<gregtech:ga_cable:5852>*8,<gtadditions:ga_meta_item:32459>*8,<ore:circuitUev>*4,<gregtech:frame_hdcs>,<gregicalityoreaddon:gaoe_meta_item>)
    .fluidInputs(<liquid:liquid_crystal_detector>*2000,<liquid:soldering_alloy>*576)
    .outputs(<gtadditions:ga_meta_item:32391>)
    .duration(400)
    .EUt(3932160)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19207>*64,<gregtech:meta_item_1:19207>*64,<gtadditions:ga_dust:332>*16,<gregtech:ga_cable:5852>*8,<gregtech:meta_item_2:25111>*2,<ore:circuitUev>*2,<gregtech:frame_enriched_naquadah_alloy>)
    .fluidInputs(<liquid:liquid_crystal_detector>*2000,<liquid:soldering_alloy>*576)
    .outputs(<gtadditions:ga_meta_item:32373>)
    .duration(400)
    .EUt(3932160)
    .buildAndRegister();

macerator.recipeBuilder()  
    .inputs(<thaumcraft:ore_amber>)
    .outputs(<thaumcraft:amber>*2)
    .duration(300)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:chlorobenzene>*1000,<liquid:ammonia>*1000,<liquid:sulfuric_acid>*1000,<liquid:nitro_benzene>*1000)
    .notConsumable(<gregtech:meta_item_1:2148>)
    .fluidOutputs(<liquid:quinoline>*2000,<liquid:hydrochloric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .EUt(200)
    .duration(100)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:quinoline>*2000,<liquid:sulfuric_acid>*1000,<liquid:nitro_benzene>*1000)
    .inputs(<gregtech:meta_item_1:2373>)
    .fluidOutputs(<liquid:cuproquin>*1000)
    .EUt(300)
    .duration(50)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2926>*13)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .outputs(<gtadditions:ga_dust:32168>*28)
    .fluidOutputs(<liquid:hydrogen>*2000)
    .duration(200)
    .EUt(820)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2926>*13)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .outputs(<gtadditions:ga_dust:32168>*28)
    .fluidOutputs(<liquid:hydrogen>*2000)
    .duration(200)
    .EUt(820)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitrochlorobenzene>*1000,<liquid:ammonia>*2000)
    .fluidOutputs(<liquid:nitroaniline>*1000,<liquid:ammonium_chloride>*6000)
    .duration(200)
    .EUt(92)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitrochlorobenzene>*1000,<liquid:ammonia>*2000)
    .fluidOutputs(<liquid:nitroaniline>*1000,<liquid:ammonium_chloride>*6000)
    .duration(200)
    .EUt(92)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitroaniline>*1000,<liquid:hydrogen>*6000)
    .outputs(<gtadditions:ga_dust:32093>*16)
    .fluidOutputs(<liquid:water>*2000)
    .duration(200)
    .EUt(900)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitroaniline>*1000,<liquid:hydrogen>*6000)
    .outputs(<gtadditions:ga_dust:32093>*16)
    .fluidOutputs(<liquid:water>*2000)
    .duration(200)
    .EUt(900)
    .buildAndRegister();


recipes.addShaped(<gregtech:machine:1404>, [	[<gregtech:meta_item_1:32654>, <ore:circuitElite>, <gregtech:meta_item_1:32654>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:505>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32644>, <ore:circuitElite>, <gregtech:meta_item_1:32644>]]);
recipes.addShaped(<gregtech:machine:1405>, [	[<gregtech:meta_item_1:32655>, <ore:circuitMaster>, <gregtech:meta_item_1:32655>], 	[<ore:cableGtSingleGraphene>, <gregtech:machine:506>, <ore:cableGtSingleGraphene>], 	[<gregtech:meta_item_1:32645>, <ore:circuitMaster>, <gregtech:meta_item_1:32645>]]);
recipes.addShaped(<gregtech:machine:1416>, [	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32680>, <gregtech:meta_item_1:32640>], 	[<ore:wireGtSingleLead>, <gregtech:machine:501>, <ore:wireGtSingleLead>], 	[<ore:circuitBasic>, <ore:cableGtSingleTin>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1417>, [	[<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32681>, <gregtech:meta_item_1:32641>], 	[<ore:wireGtSingleLead>, <gregtech:machine:502>, <ore:wireGtSingleLead>], 	[<ore:circuitGood>, <ore:cableGtSingleCopper>, <ore:circuitGood>]]);



Utils.removeRecipeByOutput(chemReactor, [], [<liquid:diborane>*500], false);

electrolyzer.findRecipe(60,[<gregtech:meta_item_1:2904>*32],null).remove();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2038>*2,<gregtech:meta_item_1:2006>,<gregtech:meta_item_1:2018>*3,<gregtech:meta_item_1:2016>*2)
    .outputs(<gtadditions:ga_dust:32171>)
    .duration(200)
    .EUt(920)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2038>*2,<gregtech:meta_item_1:2006>,<gregtech:meta_item_1:2018>*3,<gregtech:meta_item_1:2016>*2)
    .outputs(<gtadditions:ga_dust:32171>)
    .duration(200)
    .EUt(920)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<wildnature:palm_log>)
    .fluidOutputs(<liquid:palm_oil>*600)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<forestry:logs.4:2>)
    .fluidOutputs(<liquid:palm_oil>*600)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<forestry:planks.1:2>)
    .fluidOutputs(<liquid:palm_oil>*100)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<wildnature:palm_parquet>)
    .fluidOutputs(<liquid:palm_oil>*100)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<wildnature:palm_planks>)
    .fluidOutputs(<liquid:palm_oil>*100)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<wildnature:palm_leaves>)
    .fluidOutputs(<liquid:palm_oil>*25)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<wildnature:palm_sapling>)
    .fluidOutputs(<liquid:palm_oil>*250)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<forestry:leaves.decorative.2:1>)
    .fluidOutputs(<liquid:palm_oil>*25)
    .duration(30)
    .EUt(12)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:moltencelananocarbides>*1000)
    .notConsumable(<contenttweaker:graphite_cruicible>)
    .outputs(<contenttweaker:unpreperated_cela_boule>)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:gasoline>*1000)
    .fluidOutputs(<liquid:nheptane>*400,<liquid:toluene>*9,<liquid:noctane>*400,<liquid:ethylbenzene>*20,<liquid:mxylene>*40,<liquid:nhexadecane>*50)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:55>)
    .outputs(<nuclearcraft:alloy:13>)
    .property("temperature", 700)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2960>*2,<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2287>*2)
    .outputs(<gtadditions:ga_dust:32174>*6)
    .duration(40)
    .EUt(22)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2960>*2,<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2287>*2)
    .outputs(<gtadditions:ga_dust:32174>*6)
    .duration(40)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<liquid:nheptane>)
    .inputs(<gtadditions:ga_dust:32173>)
    .fluidOutputs(<liquid:soy_bean_oil>*100)
    .outputs(<gtadditions:ga_dust:32172>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2269>*2,<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2287>*2)
    .outputs(<gtadditions:ga_dust:32174>*6)
    .duration(40)
    .EUt(22)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2269>*2,<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2287>*2)
    .outputs(<gtadditions:ga_dust:32174>*6)
    .duration(40)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<liquid:nheptane>)
    .inputs(<gtadditions:ga_dust:32173>)
    .fluidOutputs(<liquid:soy_bean_oil>*100)
    .outputs(<gtadditions:ga_dust:32172>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:soy_bean>)
    .outputs(<gtadditions:ga_dust:32173>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32174>,<gtadditions:ga_dust:55>*2)
    .outputs(<nuclearcraft:alloy:14>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:soy_bean_oil>*1000)
    .fluidOutputs(<liquid:seed_oil>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:soy_bean_oil>*1000)
    .fluidOutputs(<liquid:seed_oil>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<nuclearcraft:dust:14>)
    .fluidOutputs(<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2039>)
    .duration(20)
    .EUt(129)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<nuclearcraft:dust:15>)
    .fluidOutputs(<liquid:oxygen>*2000)
    .outputs(<gregtech:meta_item_1:2039>)
    .duration(20)
    .EUt(129)
    .buildAndRegister();

Utils.removeRecipeByOutput(macerator, [<thermalfoundation:material:2053>*2], [], false);
Utils.removeRecipeByOutput(macerator, [<thermalfoundation:material:2051>*2], [], false);
Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_1:2313>], [], false);
Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_1:2313>], [], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:borax_solution>*1000], false);
Utils.removeRecipeByOutput(chemReactor, [], [<liquid:borax_solution>*1000], false);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:redstone>*1000)
    .inputs(<gregtech:meta_item_1:2421>*32,<gtadditions:ga_meta_item:32425>)
    .outputs(<contenttweaker:nanopicw>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:redstone>*1000)
    .inputs(<gregtech:meta_item_1:2421>*32,<gtadditions:ga_meta_item:32425>)
    .outputs(<contenttweaker:nanopicw>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:novolacs_photoresist>*144)
    .inputs(<gtadditions:ga_meta_item:32530>)
    .outputs(<contenttweaker:treated_photocoated_hassium_wafer>)
    .duration(200)
    .EUt(90000)
    .buildAndRegister();

distillation_tower.findRecipe(7680,null,[<liquid:fl_cracked_light_naquadah>*1200]).remove();
distillation_tower.findRecipe(7680,null,[<liquid:fl_cracked_medium_naquadah>*1400]).remove();
distillation_tower.findRecipe(7680,null,[<liquid:fl_cracked_heavy_naquadah>*1600]).remove();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fl_cracked_light_naquadah>*1200)
    .fluidOutputs(<liquid:naquadah_gas>*400,<liquid:unpreperated_light_naquadah_fuel>*400,<liquid:unpreperated_medium_naquadah_fuel>*150,<liquid:unpreperated_heavy_naquadah_fuel>*50,<liquid:fluorine>*200)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fl_cracked_medium_naquadah>*1400)
    .fluidOutputs(<liquid:naquadah_gas>*300,<liquid:unpreperated_light_naquadah_fuel>*200,<liquid:unpreperated_medium_naquadah_fuel>*400,<liquid:unpreperated_heavy_naquadah_fuel>*100,<liquid:fluorine>*400)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fl_cracked_heavy_naquadah>*1600)
    .fluidOutputs(<liquid:naquadah_gas>*300,<liquid:unpreperated_light_naquadah_fuel>*100,<liquid:unpreperated_medium_naquadah_fuel>*200,<liquid:unpreperated_heavy_naquadah_fuel>*400,<liquid:fluorine>*600)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();


distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:rn_cracked_light_e_naquadah>*1200)
    .fluidOutputs(<liquid:naquadah_gas>*400,<liquid:unpreperated_light_enriched_naquadah_fuel>*400,<liquid:unpreperated_medium_enriched_naquadah_fuel>*150,<liquid:unpreperated_heavy_enriched_naquadah_fuel>*50,<liquid:fluorine>*200)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:rn_cracked_medium_e_naquadah>*1400)
    .fluidOutputs(<liquid:naquadah_gas>*300,<liquid:unpreperated_light_enriched_naquadah_fuel>*200,<liquid:unpreperated_medium_enriched_naquadah_fuel>*400,<liquid:unpreperated_heavy_enriched_naquadah_fuel>*100,<liquid:fluorine>*400)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:rn_cracked_heavy_e_naquadah>*1600)
    .fluidOutputs(<liquid:naquadah_gas>*300,<liquid:unpreperated_light_enriched_naquadah_fuel>*100,<liquid:unpreperated_medium_enriched_naquadah_fuel>*200,<liquid:unpreperated_heavy_enriched_naquadah_fuel>*400,<liquid:fluorine>*600)
    .duration(2000)
    .EUt(7680)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<contenttweaker:femtopicw>,<contenttweaker:treated_photocoated_hassium_wafer>)
    .fluidInputs(<liquid:vibrantalloy>*14400)
    .outputs(<contenttweaker:attopicw>)
    .duration(2000)
    .EUt(12000000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<contenttweaker:femtopicw>,<contenttweaker:treated_photocoated_hassium_wafer>)
    .fluidInputs(<liquid:vibrantalloy>*14400)
    .outputs(<contenttweaker:attopicw>)
    .duration(2000)
    .EUt(12000000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:formaldehyde>*50,<liquid:phenol>*50)
    .fluidOutputs(<liquid:novolacs_photoresist>*100)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:formaldehyde>*50,<liquid:phenol>*50)
    .fluidOutputs(<liquid:novolacs_photoresist>*100)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:dried_sand>)
    .outputs(<gregtech:meta_item_1:2960>)
    .duration(12)
    .EUt(24)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32603>,<gregtech:meta_item_2:18184>*4,<gregtech:meta_item_2:26184>*2,<gregtech:meta_item_2:17184>*2)
    .outputs(<contenttweaker:gravity_separator_rotor_block>*2)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

ebf.findRecipe(1000,[<gregtech:meta_item_1:2865>*30,<gregtech:meta_item_1:2604>*9], null).remove();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32181>,<overloaded:compressed_dirt>)
    .outputs(<randomthings:fertilizeddirt>*10)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

metal_bender.recipeBuilder()
    .inputs(<randomthings:ingredient:3>)
    .outputs(<contenttweaker:spectreplate>)
    .duration(12)
    .EUt(129)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<minecraft:paper>,<gtadditions:ga_dust:32175>)
    .outputs(<enderio:item_material:77>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<minecraft:paper>,<gtadditions:ga_dust:32175>)
    .outputs(<enderio:item_material:77>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<randomthings:beans:1>)
    .fluidOutputs(<liquid:seed_oil>*720)
    .duration(9)
    .EUt(28)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<wildnature:dried_sand>)
    .fluidInputs(<liquid:water>*100)
    .outputs(<minecraft:sand>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:lightly_steam_cracked_methane>*1000)
    .fluidOutputs(<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:carbon_monoxide>*1000)
    .fluidOutputs(<liquid:hydrogen>*1500)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:moderately_steam_cracked_methane>*1000)
    .fluidOutputs(<liquid:distilled_water>*2000)
    .fluidOutputs(<liquid:carbon_monoxide>*1000)
    .fluidOutputs(<liquid:hydrogen>*3000)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:severely_steam_cracked_methane>*1000)
    .fluidOutputs(<liquid:distilled_water>*4000)
    .fluidOutputs(<liquid:carbon_monoxide>*1000)
    .fluidOutputs(<liquid:hydrogen>*4000)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

bio.recipeBuilder()
    .fluidInputs(<liquid:liquid_waste_nitrogen>*1000)
    .notConsumable(<gtadditions:ga_meta_item:32541>)
    .fluidOutputs(<liquid:nitrogen>*1000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:untreated_liquid_oxygen>*1000)
    .fluidOutputs(<liquid:oxygen>*576,<liquid:crude_argon_vapor>*144,<liquid:nitrogen>*280)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:2242>, [	[<ore:plateSteel>, <ore:circuitPrimitive>, <ore:plateSteel>], 	[<ore:rotorTin>, <gregtech:machine:501>, <ore:rotorTin>], 	[<ore:pipeMediumBronze>, <ore:circuitPrimitive>, <ore:pipeMediumBronze>]]);

fluidExtractor.recipeBuilder()
    .inputs(<minecraft:obsidian>)
    .fluidOutputs(<liquid:obsidian>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

electrolyzer.findRecipe(60,null,[<liquid:blue_vitriol_water_solution>*1000]);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:gray_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5149>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:pink_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5130>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:green_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5121>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:white_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5182>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:clay_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:2105>*4)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:cyan_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5115>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:red_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5107>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:gray_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5149>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:pink_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5130>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:green_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5121>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:white_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5182>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:clay_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:2105>*4)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:cyan_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5115>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:red_vitriol>*1000)
    .inputs(<gregtech:meta_item_1:5107>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();


furnace.remove(<gregtech:meta_item_1:10205>);
furnace.remove(<gregtech:meta_item_1:9205>);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:living_mutation_medium>*144)
    .inputs(<minecraft:diamond>)
    .outputs(<contenttweaker:draconiumfragment>)
    .duration(200)
    .EUt(800009)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:living_mutation_medium>*144)
    .inputs(<minecraft:diamond>)
    .outputs(<contenttweaker:draconiumfragment>)
    .duration(200)
    .EUt(800009)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:draconiumfragment>,<minecraft:stone>)
    .outputs(<contenttweaker:refabricateddraconiumore>)
    .duration(200)
    .EUt(120000)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<contenttweaker:refabricateddraconiumore>)
    .outputs(<gtadditions:ga_dust:32187>*2)
    .duration(20)
    .EUt(129000)
    .buildAndRegister();

fusion_reactor.recipeBuilder()
    .fluidInputs(<liquid:extrmelyunstablenaquadah>*128,<liquid:nobelium>*128)
    .fluidOutputs(<liquid:plasma.draconium>*12)
    .duration(200)
    .EUt(12000)
	.property("eu_to_start", 320000000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:indalloy140>*14400)
    .inputs(<contenttweaker:advancedradiationproofplate>*16,<ore:circuitInfinite>*4,<gregtech:meta_item_1:32616>*2,<gregtech:frame_osmiridium>*4,<gregtech:meta_item_1:32676>*4,<gregtech:meta_item_1:12520>*32,<gtadditions:ga_meta_item:32424>*16)
    .outputs(<gregtech:machine:10024>)
    .duration(40000)
    .EUt(110000)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:milk>*1000)
    .fluidOutputs(<liquid:dilutedmilkslurry>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(dehydrator, [], [<liquid:peptone_mixture>*1000], false);

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:dilutedmilkslurry>*1000)
    .fluidOutputs(<liquid:heatedmilkslurry>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:heatedmilkslurry>*1000)
    .notConsumable(<contenttweaker:cheese_cloth>)
    .fluidOutputs(<liquid:peptone_mixture>*800)
    .outputs(<gtadditions:ga_dust:32195>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32195>)
    .fluidOutputs(<liquid:milk_oil>*600,<liquid:alpha_linolenic_acid>*400)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

recipes.remove(<minecraft:snow>);
recipes.addShapeless(<minecraft:snow>,[<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>]);
Utils.removeRecipeByOutput(packer, [<minecraft:snow>], [], false);
Utils.removeRecipeByOutput(compressor, [<minecraft:snow>*4], [], false);

furnace.remove(<gregtech:meta_item_1:10592>);

metal_bender.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12001>)
    .outputs(<contenttweaker:aluminium_item_casing>*2)
    .duration(20)
    .EUt(80)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .buildAndRegister();

centrifuge.findRecipe(5, null,[<liquid:gas>*8000]).remove();

