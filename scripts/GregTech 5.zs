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
 
 recipes.addShaped(<gregtech:machine:1478>, [[<ore:plateIron>, <ore:blockSeared>, <ore:plateIron>],  [<tconstruct:seared_tank>, <tconstruct:seared_furnace_controller>, <tconstruct:seared_tank>],  [<ore:plateIron>, <contenttweaker:seared_gear>, <ore:plateIron>]]);

assembly_line.recipeBuilder()
	.inputs([<gtadditions:ga_meta_item:32424>*12, <gregtech:cable:2744>*45, <gregtech:meta_item_1:17311>*64, <gtadditions:ga_meta_item>*10, <gregtech:meta_item_1:12631>*8, <gtadditions:ga_meta_item:32378>, <ore:ciruitUHV>*8, <gtadditions:ga_motor_casing:8>*2, <gtadditions:ga_robot_arm_casing:8>, <gregtech:machine:3254>, <gregtech:machine:3294>, <gregtech:machine:3424>, <gregtech:machine:3394>, <gregtech:machine:3429>])
	.fluidInputs([<liquid:uumatter> *200, <liquid:soldering_alloy>*458, <liquid:naquadria>*1450])
	.outputs(<gregtech:machine:10101>)
	.duration(1200)
	.EUt(800000)
	.buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:fuelCoke>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:110>*3)
    .duration(1400)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10197>, <ore:fuelCoke>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:110>*3)
    .duration(500)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:dustRegularCopper>*2, <ore:dustRegularTin>, <ore:dustIron>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<gregtech:meta_item_1:10095>*2)
    .duration(400)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:ingotSteel>, <ore:dustRegularTin>, <ore:dustSilicon>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<enderio:item_alloy_ingot>)
    .duration(20)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:ingotIron>, <ore:ingotBronze>, <ore:ingotTin>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<gregtech:meta_item_2:32432>)
    .duration(60)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:sand>)
    .fluidInputs(<liquid:lava>*100)
    .outputs(<tconstruct:clear_glass>)
    .duration(160)
    .EUt(1)
    .buildAndRegister();
    
steam_foundry.recipeBuilder()
    .inputs(<minecraft:obsidian>)
    .fluidInputs(<liquid:lava>*500)
    .outputs(<minecraft:obsidian>*2)
    .duration(600)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<ore:gearIron>)
    .fluidInputs(<liquid:lava>*150)
    .outputs(<contenttweaker:seared_gear>*2)
    .duration(40)
    .EUt(1)
    .buildAndRegister();