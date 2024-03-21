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

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:two_butanol>*1000)
    .notConsumable(<gregtech:meta_item_1:2848>)
    .fluidOutputs(<liquid:butanone>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:two_butanol>*1000)
    .notConsumable(<gregtech:meta_item_1:2848>)
    .fluidOutputs(<liquid:butanone>*1000)
    .duration(200)
    .EUt(100)
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

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32019>)
    .outputs(<gregtech:meta_item_1:2072>,<gtadditions:ga_dust:32202>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32202>)
    .fluidOutputs(<liquid:chlorine>*4000)
    .outputs(<gregtech:meta_item_1:2038>)
    .duration(10)
    .EUt(210)
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

recipes.addShaped(<gregtech:machine:2242>, [	[<ore:plateSteel>, <ore:circuitPrimitive>, <ore:plateSteel>], 	[<ore:rotorTin>, <gregtech:machine_casing:1>, <ore:rotorTin>], 	[<ore:pipeMediumBronze>, <ore:circuitPrimitive>, <ore:pipeMediumBronze>]]);

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

chemReactor.recipeBuilder()
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2017>*2)
    .fluidInputs(<liquid:hydrogen>*2000)
    .outputs(<gregtech:meta_item_1:2017>)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2017>*2)
    .fluidInputs(<liquid:hydrogen>*2000)
    .outputs(<gregtech:meta_item_1:2017>)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2016>*2)
    .fluidInputs(<liquid:hydrogen>*2000)
    .outputs(<gregtech:meta_item_1:2044>)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:cross_linked_polyethylene>*144,<liquid:paraffin_wax>*144)
    .inputs(<gtadditions:ga_meta_item:32028>)
    .outputs(<contenttweaker:superconducting_wire_insulation_base>)
    .duration(400)
    .EUt(22)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:paraffinwax>)
    .fluidOutputs(<liquid:paraffin_wax>*1000)
    .duration(120)
    .EUt(2)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:970>*3], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:976>*3,<gregtech:fluid_pipe:183>*2,<gregtech:meta_item_1:32611>*2)
    .fluidInputs(<liquid:nitrogen>*2000)
    .outputs(<gregtech:cable:970>*3)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:69>*3], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:975>*3,<gregtech:fluid_pipe:72>*2,<gregtech:meta_item_1:32612>,<contenttweaker:superconducting_wire_insulation_base>)
    .fluidInputs(<liquid:nitrogen>*2000)
    .outputs(<gregtech:cable:969>*3)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:968>*9], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:974>*9,<gregtech:fluid_pipe:235>*6,<gregtech:meta_item_1:32613>*2,<contenttweaker:superconducting_wire_insulation_base>)
    .fluidInputs(<liquid:liquid_nitrogen>*2000)
    .outputs(<gregtech:cable:968>*9)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:967>*6], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:973>*6,<gregtech:fluid_pipe:135>*4,<gregtech:meta_item_1:32614>,<contenttweaker:superconducting_wire_insulation_base>)
    .fluidInputs(<liquid:liquid_nitrogen>*6000)
    .outputs(<gregtech:cable:967>*6)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:966>*8], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:972>*8,<gregtech:fluid_pipe:963>*5,<gregtech:meta_item_1:32615>,<contenttweaker:superconducting_wire_insulation_base>)
    .fluidInputs(<liquid:liquid_nitrogen>*6000)
    .outputs(<gregtech:cable:966>*8)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:964>*16], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:971>*16,<gregtech:fluid_pipe:307>*6,<gregtech:meta_item_1:32616>,<contenttweaker:superconducting_wire_insulation_base>)
    .fluidInputs(<liquid:liquid_helium>*8000)
    .outputs(<gregtech:cable:964>*16)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:cable:744>*32], [], false);


assembler.recipeBuilder()
    .inputs(<gregtech:cable:745>*32,<gregtech:fluid_pipe:192>*7,<gregtech:meta_item_1:32617>)
    .fluidInputs(<liquid:liquid_helium>*8000)
    .outputs(<gregtech:cable:744>*32)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

recipes.addShapeless(<gregtech:meta_item_1:2619>*2,[<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2106>]);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2180>*2,<gregtech:meta_item_1:2521>*2)
    .outputs(<gtadditions:ga_dust:32046>*4)
    .duration(20)
    .EUt(220)
    .buildAndRegister();

furnace.addRecipe(<minecraft:glass>,<tconstruct:clear_glass>);
furnace.remove(<minecraft:glass>);

compressor.recipeBuilder()
    .inputs(<minecraft:coal>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:coal:1>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2106>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2101>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2211>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2225>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2357>*2)
    .outputs(<contenttweaker:coalball>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

rock_crusher.recipeBuilder()
    .inputs(<ore:stoneGranite>)
    .outputs(<gregtech:meta_item_1:1065>*2)
    .chancedOutput(<nuclearcraft:gem_dust:8>, 4000, 200)
    .chancedOutput(<nuclearcraft:gem_dust:1>, 6000, 400)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();
    
rock_crusher.recipeBuilder()
    .inputs(<ore:stoneDiorite>)
    .outputs(<nuclearcraft:gem_dust:9>)
    .chancedOutput(<gregicalityoreaddon:gaoe_oredict_item:2030>, 1500, 0)
    .chancedOutput(<gregtech:meta_item_1:2703>, 8800, 600)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();
    
rock_crusher.recipeBuilder()
    .inputs(<ore:stoneAndesite>)
    .outputs(<nuclearcraft:compound:11>)
    .chancedOutput(<gregicalityoreaddon:gaoe_oredict_item:2008>, 4800, 290)
    .chancedOutput(<gtadditions:ga_dust:277>, 6200, 490)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();

rotary_evaporator.recipeBuilder()
    .fluidInputs(<liquid:yeast_mixture>*1000)
    .fluidOutputs(<liquid:yeast_extract>*1000)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

microscope.recipeBuilder()
    .inputs(<wildnature:molddirt>)
    .outputs(<gtadditions:ga_dust:32081>)
    .chancedOutput(<gtadditions:ga_dust:32170>, 10, 1)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

microscope.recipeBuilder()
    .fluidInputs(<liquid:dirtywater>*100)
    .chancedOutput(<gtadditions:ga_dust:32167>, 10, 0)
    .fluidOutputs(<liquid:water>*100)
    .duration(120)
    .EUt(20)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1424>, [	[<gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:32602>], 	[<ore:plateSteel>, <gregtech:machine:503>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32642>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32642>]]);
recipes.addShaped(<gregtech:machine:1425>, [	[<gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32693>, <gregtech:meta_item_1:32603>], 	[<ore:plateSteel>, <gregtech:machine:504>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32643>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32643>]]);
recipes.addShaped(<gregtech:machine:1426>, [	[<gregtech:meta_item_1:32604>, <gregtech:meta_item_1:32694>, <gregtech:meta_item_1:32604>], 	[<ore:plateSteel>, <gregtech:machine:505>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32644>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32644>]]);


water_collector.recipeBuilder()
    .notConsumable(<forestry:crafting_material:3>)
    .fluidOutputs(<liquid:solardistilledwater>*12)
    .duration(6)
    .EUt(2)
    .buildAndRegister();

vacuum_ejection_chamber.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32049>)
    .outputs(<contenttweaker:monocrystalline_seed_crystal>)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:104>)
    .outputs(<contenttweaker:datadiskassemblyline>)
    .duration(8000)
    .EUt(6000)
    .buildAndRegister();

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:283>)
    .outputs(<contenttweaker:datadiskdigester>)
    .duration(4000)
    .EUt(6000)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidOutputs(<liquid:diketene>*1000,<liquid:methane>*2000)  
    .fluidInputs(<liquid:acetone>*2000,<liquid:carbon_sulfide>*500)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32085>)
    .outputs(<contenttweaker:crackingcatalyst>)
    .duration(50)
    .EUt(120)
    .buildAndRegister();

roasters.recipeBuilder()  
    .inputs(<ore:dustCalcite>,<ore:crushedBastnasite>)
    .outputs(<gtadditions:ga_dust:32083>)
    .EUt(2000)
    .duration(500)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:wetbastnasiterareearthconcentrate>*1000)
    .fluidOutputs(<liquid:oxygen>*500)
    .outputs(<gtadditions:ga_dust:32084>*2)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32077>*2,<gregtech:meta_item_1:2011>)
    .outputs(<gregtech:meta_item_1:2027>,<gtadditions:ga_dust:32077>,<gregtech:meta_item_1:2155>,<gtadditions:ga_dust:32077>)
    .EUt(2800)
    .duration(400)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:192>*2)
    .fluidOutputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dioxide>*1000)
    .EUt(22)
    .duration(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1431>, [	[<gregtech:meta_item_1:32600>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32600>], 	[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], 	[<gregtech:meta_item_1:32640>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32640>]]);
recipes.addShaped(<gregtech:machine:1432>, [	[<gregtech:meta_item_1:32601>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32601>], 	[<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32641>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32641>]]);
recipes.addShaped(<gregtech:machine:1433>, [	[<gregtech:meta_item_1:32602>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32602>], 	[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], 	[<gregtech:meta_item_1:32642>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32642>]]);

roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2865>*30,<gregtech:meta_item_1:2604>*9)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2012>*42,<gtadditions:ga_dust:356>*6)
    .duration(200)
    .EUt(1000)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:19>)
    .inputs(<gregtech:meta_item_1:12061>)
    .outputs(<appliedenergistics2:material:20>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:15>)
    .inputs(<gregtech:meta_item_1:12026>)
    .outputs(<appliedenergistics2:material:18>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:14>)
    .inputs(<gregtech:meta_item_1:12111>)
    .outputs(<appliedenergistics2:material:17>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<appliedenergistics2:material:10>)
    .outputs(<appliedenergistics2:material:16>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:16>)
    .outputs(<appliedenergistics2:material:23>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:17>)
    .outputs(<appliedenergistics2:material:24>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:18>)
    .outputs(<appliedenergistics2:material:22>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:14>)
    .inputs(<gregtech:meta_item_1:12061>)
    .outputs(<contenttweaker:osmiridiumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:12072>)
    .inputs(<gregtech:meta_item_1:12026>)
    .outputs(<contenttweaker:titaniumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:12311>)
    .inputs(<gregtech:meta_item_1:12111>)
    .outputs(<contenttweaker:tritaniumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<gregtech:meta_item_1:12074>)
    .outputs(<contenttweaker:tungstencircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<gregtech:meta_item_1:12302>)
    .outputs(<contenttweaker:hssgcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<contenttweaker:titaniumcircuit>)
    .outputs(<contenttweaker:manatitaniumprocesser>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1421>, [	[<ore:screwSteel>, <gregtech:meta_item_1:32681>, <ore:screwSteel>], 	[<gregtech:meta_item_1:32651>, <gregtech:machine:502>, <gregtech:meta_item_1:32651>], 	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]]);
recipes.addShaped(<gregtech:machine:1422>, [	[<ore:screwSteel>, <gregtech:meta_item_1:32682>, <ore:screwSteel>], 	[<gregtech:meta_item_1:32652>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>], 	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]]);
recipes.addShaped(<gregtech:machine:1423>, [	[<ore:screwSteel>, <gregtech:meta_item_1:32683>, <ore:screwSteel>], 	[<gregtech:meta_item_1:32653>, <gregtech:machine:504>, <gregtech:meta_item_1:32653>], 	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]]);

inscriber.recipeBuilder()
    .inputs(<threng:material:1>,<minecraft:iron_ingot>,<appliedenergistics2:material:45>)
    .outputs(<threng:material:2>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12061>,<threng:material:5>,<minecraft:redstone>)
    .outputs(<threng:material:6>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12061>,<threng:material:13>,<minecraft:redstone>)
    .outputs(<threng:material:14>)
    .duration(40)
    .EUt(480)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<ore:blockRedstone>,<ore:blockLapis>,<appliedenergistics2:material:25>)
    .outputs(<appliedenergistics2:material:60>)
    .duration(40)
    .EUt(480)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32627>*5)
    .notConsumable(<contenttweaker:woodeningotmold>)
    .outputs(<gregtech:meta_item_1:12152>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1343>, [	[<ore:gearStone>, <ore:craftingFurnace>, <ore:gearStone>], 	[<gregtech:cable:237>, <gregtech:machine_casing>, <gregtech:cable:237>], 	[<ore:plateIron>, <ore:itemSimpleMachineChassi>, <ore:plateIron>]]);
recipes.addShapeless(<gregtech:machine:1343>, [<thermalexpansion:machine:3>]);

induction_smelter.recipeBuilder()
    .inputs(<enderio:item_material>,<enderio:item_material:51>)
    .outputs(<enderio:item_material:1>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2095>)
    .outputs(<gregtech:meta_item_1:10095>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<enderio:item_material:1>,<enderio:item_material:67>)
    .outputs(<enderio:item_material:54>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32014>)
    .outputs(<contenttweaker:silversteel>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:2061>)
    .outputs(<enderio:item_alloy_ingot>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<minecraft:iron_ingot>, <minecraft:redstone> * 2)
    .outputs(<enderio:item_alloy_ingot:4>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2033>, <minecraft:redstone> * 2)
    .outputs(<enderio:item_alloy_ingot:4>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32016>,<gregtech:meta_item_1:2071>* 2)
    .outputs(<enderio:item_alloy_ingot>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<ore:sand>)
    .outputs(<gregtech:meta_item_1:2061>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

induction_smelter.recipeBuilder()
    .inputs(<minecraft:coal>, <minecraft:sand>*4)
    .outputs(<projectred-core:resource_item:250>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2304>*32,<gregtech:meta_item_1:12304>*8,<gregtech:meta_item_2:19304>*4,<gregtech:cable:5200>*4,<contenttweaker:wrapofnaquadahfinewire>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32606>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:cable:5307>*4,<gregtech:meta_item_1:18840>*16,<gregtech:meta_item_1:32606>,<gregtech:cable:5200>*4,<gregtech:fluid_pipe:1192>*4,<gregtech:meta_item_2:18304>,<gregtech:meta_item_2:21304>*2,<gregtech:meta_item_1:17304>*8,<gregtech:meta_item_1:12304>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32615>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32606>,<gregtech:cable:5307>*2,<gregtech:cable:5200>*2,<gregtech:meta_item_1:12304>*4,<gregtech:meta_item_1:10304>*2,<gregtech:meta_item_2:19304>*4,<gregtech:meta_item_2:26304>,<contenttweaker:wrapofruriditfinewire>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32645>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*1,<ore:circuitElite>*2,<ore:circuitExtreme>*4,<gregtech:meta_item_1:32645>,<gregtech:meta_item_1:32606>*2,<gregtech:meta_item_1:14304>*16,<gregtech:meta_item_1:12304>*4,<gregtech:meta_item_2:19304>*8,<gregtech:meta_item_1:17304>*16)
	.outputs(<gregtech:meta_item_1:32655>)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*1,<gregtech:meta_item_1:32615>*2,<contenttweaker:wrapofhsssfoil>*8)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_2:32705>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*2,<gregtech:cable:1200>*32,<gregtech:meta_item_2:25154>*16,<gtadditions:ga_dust:331>*32,<contenttweaker:wrapofelectrumfoil>*8,<gregtech:meta_item_1:12304>*16,<gregtech:frame_hsss>*4,<gregtech:meta_item_1:32606>*2)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32685>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32685>,<ore:circuitMaster>*2,<gregtech:meta_item_1:32695>,<contenttweaker:wrapofosmiumfinewire>*8,<gregtech:cable:8200>*16,<gregtech:meta_item_1:32725>*4,<gregtech:meta_item_1:12304>*8,<gregtech:frame_hsss>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32675>)
	.duration(400)
	.EUt(8000)	
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*2,<gregtech:cable:1200>*32,<contenttweaker:lasermodule>,<gregtech:meta_item_2:25154>*16,<gregtech:meta_item_1:2760>*32,<contenttweaker:wrapofelectrumfoil>*8,<gregtech:meta_item_1:12304>*16,<gregtech:frame_hsss>*4,<gregtech:meta_item_1:32606>*2)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32695>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32606>*2,<gregtech:meta_item_1:12391>*8,<gregtech:meta_item_2:26859>*4,<gregtech:meta_item_1:10859>*2,<gregtech:meta_item_1:12859>*2,<gregtech:meta_item_1:14859>*2)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32635>)
	.duration(200)
	.EUt(8000)
	.buildAndRegister();

beam_shrinking_device.recipeBuilder()
    .inputs(<contenttweaker:zeptopicw>)
    .outputs(<contenttweaker:yoctopicw>)
    .duration(200)
    .EUt(50000)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:flintstiffednet>)
    .chancedOutput(<minecraft:fish>, 2000, 500)
    .outputs(<minecraft:fish>,<minecraft:dye>,<minecraft:waterlily>*2,<minecraft:rotten_flesh>)
    .duration(20)
    .EUt(2048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:aluminiumreinforcednet>)
    .chancedOutput(<minecraft:fish>, 4000, 1000)
    .outputs(<minecraft:fish>*2,<minecraft:fish:2>,<minecraft:dye>*2,<minecraft:waterlily>*2,<minecraft:rotten_flesh>*2)
    .duration(20)
    .EUt(2048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:europiumdopednet>)
    .outputs(<minecraft:fish>*3,<minecraft:fish:2>*2,<minecraft:dye>*3,<minecraft:waterlily>*2,<minecraft:fish:3>*2)
    .duration(80)
    .EUt(4048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:sterilizedeuropiumnet>)
    .chancedOutput(<contenttweaker:zelius_fish>, 200, 50)
    .outputs(<minecraft:fish>*8,<minecraft:fish:2>*5,<minecraft:dye>*4,<minecraft:waterlily>*2,<minecraft:fish:3>)
    .duration(80)
    .EUt(20480)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1400>, [	[<gregtech:meta_item_1:32603>, <minecraft:fishing_rod>, <gregtech:meta_item_1:32603>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:504>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32643>, <ore:circuitExtreme>, <gregtech:meta_item_1:32643>]]);
recipes.addShaped(<gregtech:machine:1401>, [	[<gregtech:meta_item_1:32604>, <minecraft:fishing_rod>, <gregtech:meta_item_1:32604>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:505>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32644>, <ore:circuitElite>, <gregtech:meta_item_1:32644>]]);
recipes.addShaped(<gregtech:machine:1402>, [	[<gregtech:meta_item_1:32605>, <minecraft:fishing_rod>, <gregtech:meta_item_1:32605>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:506>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32645>, <ore:circuitMaster>, <gregtech:meta_item_1:32645>]]);
recipes.addShaped(<gregtech:machine:1403>, [	[<gregtech:meta_item_1:32606>, <minecraft:fishing_rod>, <gregtech:meta_item_1:32606>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:507>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32646>, <ore:circuitUltimate>, <gregtech:meta_item_1:32646>]]);

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:sulfur_carbon_mixture>*1000)
    .fluidOutputs(<liquid:carbon_dioxide>*1000)
    .outputs(<gregtech:meta_item_1:2065>*2)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:5621>)
    .fluidInputs(<liquid:sulfuric_acid>*250)
    .fluidOutputs(<liquid:gadolinite_leach_solution>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:5621>)
    .fluidInputs(<liquid:sulfuric_acid>*250)
    .fluidOutputs(<liquid:gadolinite_leach_solution>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:gadolinite_leach_solution>*1000)
    .fluidOutputs(<liquid:gadolinium_leach>*600,<liquid:ree_group_mud>*400)
    .duration(200)
    .EUt(900)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:gadolinium_leach>*1000)
    .outputs(<gregtech:meta_item_1:2024>*2,<gregtech:meta_item_1:2065>)
    .duration(200)
    .EUt(900)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ree_group_mud>*1000,<liquid:aqua_regia>*1000)
    .fluidOutputs(<liquid:lanthanum_leach_solution>*500,<liquid:rarer_earth_concentrate>*500,<liquid:aqua_regia_solution>*1000)
    .duration(299)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ree_group_mud>*1000,<liquid:aqua_regia>*1000)
    .fluidOutputs(<liquid:lanthanum_leach_solution>*500,<liquid:rarer_earth_concentrate>*500,<liquid:aqua_regia_solution>*2000)
    .duration(299)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:neodymium_oxide_solution>*1000)
    .fluidOutputs(<liquid:steam>*1000)
    .outputs(<gtadditions:ga_dust:10>*2)
    .EUt(120)
    .property("temperature", 1500)
    .duration(80)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:aqua_regia_solution>*2000)
    .fluidOutputs(<liquid:water>*1000,<liquid:aqua_regia>*1000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();


distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:molten_adamantium_dioxide>*1000)
    .fluidOutputs(<liquid:mithril_fluoride>*500,<liquid:adamantane_lubricant>*500)
    .outputs(<gtadditions:ga_dust:32141>)
    .EUt(20)
    .duration(100)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32196>)
    .outputs(<gtadditions:ga_dust:32197>)
    .chancedOutput(<gregtech:meta_item_1:35>, 5000, 0)
    .chancedOutput(<gregtech:meta_item_1:62>, 2000, 0)
    .chancedOutput(<gregtech:meta_item_1:51>, 1000, 0)
    .chancedOutput(<gregtech:meta_item_1:307>, 500, 0)
    .duration(140)
    .EUt(200)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32197>)
    .notConsumable(<ore:craftingLensBlue>)
    .outputs(<gtadditions:ga_dust:32199>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32197>)
    .notConsumable(<ore:craftingLensBlue>)
    .outputs(<gtadditions:ga_dust:32199>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32200>)
    .outputs(<gregtech:meta_item_1:2548>)
    .duration(400)
    .EUt(2200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2548>)
    .outputs(<gregtech:meta_item_1:10548>)
    .property("temperature", 6000)
    .EUt(1200)
    .duration(1200)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembly_line, [<gregtech:machine:4215>], [], false);

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:adamantane_lubricant>*1000,<liquid:soldering_alloy>*1296)
    .inputs(<gregtech:meta_item_1:13548>*2,<gregtech:meta_item_2:16742>*64,<gtadditions:ga_meta_item:32307>*64,<gtadditions:ga_meta_item:32307>*64,<ore:circuitSuperconductor>,<gregtech:meta_item_1:32657>,<gregtech:meta_item_1:32637>,<gregtech:meta_item_1:32617>,<gregtech:machine:4214>)
    .outputs(<gregtech:machine:4215>)
    .duration(1000)
    .EUt(491000)
    .buildAndRegister();

Utils.removeRecipeByOutput(mixer, [<gregtech:meta_item_1:2230>*5], [], false);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2008>,<gregtech:meta_item_1:2094>*4)
    .outputs(<gregtech:meta_item_1:2230>*5)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<minecraft:melon_seeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<minecraft:wheat_seeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<minecraft:pumpkin_seeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gregtechfoodoption:gtfo_oredict_item:1002>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<randomthings:grassseeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<randomthings:grassseeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();
    
fluidExtractor.recipeBuilder()
    .inputs(<randomthings:lotusseeds>)
    .fluidOutputs(<liquid:seed_oil>*100)
    .duration(20)
    .EUt(6)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:wastewater>*1000)
    .notConsumable(<gtadditions:ga_dust:32201>)
    .fluidOutputs(<liquid:treated_waste_water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:wastewater>*1000)
    .notConsumable(<gtadditions:ga_dust:32201>)
    .fluidOutputs(<liquid:treated_waste_water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:glowstone>*144)
    .inputs(<gregtech:meta_item_1:2071>*3,<gregtech:meta_item_1:2062>)
    .outputs(<thermalfoundation:material:102>*5)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:glowstone>*144)
    .inputs(<gregtech:meta_item_1:2071>*3,<gregtech:meta_item_1:2062>)
    .outputs(<thermalfoundation:material:102>*5)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*4000)
    .fluidOutputs(<liquid:silane>*1000)
    .inputs(<gregtech:meta_item_1:2061>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*4000)
    .fluidOutputs(<liquid:silane>*1000)
    .inputs(<gregtech:meta_item_1:2061>)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_tungsten_steel>,<gregtech:meta_item_1:12235>*4,<ore:circuitMaster>*4,<contenttweaker:ic2drill>)
    .outputs(<gregtech:machine:10037>)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32146>*2)
    .outputs(<gregtech:meta_item_1:2719>,<gregtech:meta_item_1:2065>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:astro_miner>, [	[<gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32692>, <ore:craftingLensWhite>], 	[<gregtech:meta_item_1:32652>, <ore:plateStainlessSteel>, <ore:ringStainlessSteel>], 	[<ore:ringRubber>, <gregtech:meta_item_1:32602>, <ore:ringRubber>]]);

Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_1:2382>*7], [<liquid:hydrochloric_acid>*1000], false);

roasters.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gregtech:meta_item_1:2155>*2)
    .outputs(<gregtech:meta_item_1:2382>*7)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12183>*4,<gregtech:meta_item_1:17183>*4,<gregtech:meta_item_1:12072>*4,<gregtech:meta_item_1:17072>*4)
    .outputs(<contenttweaker:vacuum_chamber>)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:697>)
    .outputs(<contenttweaker:barium_titanate_seed_crystal>)
    .duration(20)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:barium_titanate_seed_crystal>,<gregtech:meta_item_1:10697>*4)
    .fluidInputs(<liquid:xenon>*1000)
    .outputs(<contenttweaker:barium_titanate_boule>)
    .duration(1000)
    .EUt(720)
    .buildAndRegister();

electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2107>*3], null).remove();

roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2107>*2)
    .fluidInputs(<liquid:oxygen>*4000)
    .fluidOutputs(<liquid:sulfur_dioxide>*2000)
    .outputs(<gregtech:meta_item_1:2956>*4,<gregtech:meta_item_1:2005>)
    .duration(20)
    .EUt(10)
    .buildAndRegister();

distillery.recipeBuilder()
    .fluidInputs(<liquid:butene>*1000)
    .fluidOutputs(<liquid:two_butene>*200)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(12)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:water>*100,<liquid:two_butene>*100,<liquid:sulfuric_acid>*100)
    .fluidOutputs(<liquid:two_butanol_solution>*200)
    .duration(12)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:water>*100,<liquid:two_butene>*100,<liquid:sulfuric_acid>*100)
    .fluidOutputs(<liquid:two_butanol_solution>*200)
    .duration(12)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:butanone>*100,<liquid:hydrogen_peroxide>*100)
    .fluidOutputs(<liquid:hydrazine>*200)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:butanone>*100,<liquid:hydrogen_peroxide>*100)
    .fluidOutputs(<liquid:hydrazine>*200)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:14035>)
    .fluidInputs(<liquid:sulfuric_acid_solution>*1000)
    .fluidOutputs(<liquid:water>*50,<liquid:hydrogen>*50,<liquid:chlorine>*100,<liquid:sulfuric_acid>*500,<liquid:oxygen>*100,<liquid:hydrogen_peroxide>*200)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000,<liquid:sulfuric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:14209>)
    .fluidOutputs(<liquid:sulfuric_acid_solution>*2000)
    .duration(400)
    .EUt(100)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000,<liquid:sulfuric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:14209>)
    .fluidOutputs(<liquid:sulfuric_acid_solution>*2000)
    .duration(400)
    .EUt(100)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:two_butanol_solution>*2000)
    .fluidOutputs(<liquid:two_butanol>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(72)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:paraffin_wax>*1000)
    .fluidOutputs(<liquid:creosote>*1000)
    .EUt(129)
    .duration(20)
    .buildAndRegister();