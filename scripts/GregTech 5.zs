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

blastalloy.recipeBuilder()
    .fluidOutputs(<liquid:decrepitated_neodymium>*1000)
    .inputs(<gregtech:meta_item_1:12042>)
    .fluidInputs(<liquid:hydrogen>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:sintered_neodymium_plate>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<contenttweaker:annealed_neodymium_plate>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:polytetrafluoroethylene>*1000)
    .inputs(<contenttweaker:annealed_neodymium_plate>)
    .outputs(<contenttweaker:coated_neodymium_plate>)
    .duration(400)
    .EUt(7000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:epoxid>*200)
    .inputs(<contenttweaker:annealed_neodymium_plate>)
    .outputs(<contenttweaker:coated_neodymium_plate>)
    .duration(400)
    .EUt(7000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:reinforced_epoxy_resin>*50)
    .inputs(<contenttweaker:annealed_neodymium_plate>)
    .outputs(<contenttweaker:coated_neodymium_plate>)
    .duration(400)
    .EUt(7000)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<contenttweaker:coated_neodymium_plate>)
    .outputs(<qmd:part:8>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

#Obsidian

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}))
    .outputs(<tconstruct:large_sword_blade>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}))
    .outputs(<tconstruct:sword_blade>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}))
    .outputs(<tconstruct:wide_guard>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}))
    .outputs(<tconstruct:broad_axe_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}))
    .outputs(<tconstruct:excavator_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}))
    .outputs(<tconstruct:large_plate>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}))
    .outputs(<tconstruct:tough_binding>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}))
    .outputs(<tconstruct:hammer_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}))
    .outputs(<tconstruct:tough_tool_rod>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}))
    .outputs(<tconstruct:axe_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*1000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}))
    .outputs(<tconstruct:binding>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}))
    .outputs(<tconstruct:shovel_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}))
    .outputs(<tconstruct:tool_rod>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}))
    .outputs(<tconstruct:pick_head>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}))
    .outputs(<tconstruct:sharpening_kit>.withTag({Material: "obsidian"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

#steel

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}))
    .outputs(<tconstruct:large_sword_blade>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}))
    .outputs(<tconstruct:sword_blade>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}))
    .outputs(<tconstruct:wide_guard>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}))
    .outputs(<tconstruct:broad_axe_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}))
    .outputs(<tconstruct:excavator_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}))
    .outputs(<tconstruct:large_plate>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}))
    .outputs(<tconstruct:tough_binding>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}))
    .outputs(<tconstruct:hammer_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}))
    .outputs(<tconstruct:tough_tool_rod>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}))
    .outputs(<tconstruct:axe_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*1000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}))
    .outputs(<tconstruct:binding>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}))
    .outputs(<tconstruct:shovel_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}))
    .outputs(<tconstruct:tool_rod>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}))
    .outputs(<tconstruct:pick_head>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}))
    .outputs(<tconstruct:sharpening_kit>.withTag({Material: "steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

#manyullyn

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}))
    .outputs(<tconstruct:large_sword_blade>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}))
    .outputs(<tconstruct:sword_blade>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}))
    .outputs(<tconstruct:wide_guard>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}))
    .outputs(<tconstruct:broad_axe_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}))
    .outputs(<tconstruct:excavator_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}))
    .outputs(<tconstruct:large_plate>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}))
    .outputs(<tconstruct:tough_binding>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}))
    .outputs(<tconstruct:hammer_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}))
    .outputs(<tconstruct:tough_tool_rod>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}))
    .outputs(<tconstruct:axe_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*1000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}))
    .outputs(<tconstruct:binding>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}))
    .outputs(<tconstruct:shovel_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}))
    .outputs(<tconstruct:tool_rod>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}))
    .outputs(<tconstruct:pick_head>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:manyullyn>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}))
    .outputs(<tconstruct:sharpening_kit>.withTag({Material: "manyullyn"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

#electrical steel

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}))
    .outputs(<tconstruct:large_sword_blade>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}))
    .outputs(<tconstruct:sword_blade>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"}))
    .outputs(<tconstruct:wide_guard>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}))
    .outputs(<tconstruct:broad_axe_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}))
    .outputs(<tconstruct:excavator_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}))
    .outputs(<tconstruct:large_plate>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}))
    .outputs(<tconstruct:tough_binding>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*8000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}))
    .outputs(<tconstruct:hammer_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*3000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}))
    .outputs(<tconstruct:tough_tool_rod>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}))
    .outputs(<tconstruct:axe_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*1000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}))
    .outputs(<tconstruct:binding>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"}))
    .outputs(<tconstruct:shovel_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}))
    .outputs(<tconstruct:tool_rod>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}))
    .outputs(<tconstruct:pick_head>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .fluidInputs(<liquid:electrical_steel>*2000,<liquid:lava>*100)
    .notConsumable(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}))
    .outputs(<tconstruct:sharpening_kit>.withTag({Material: "electrical_steel"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*12)
    .inputs(<gregtech:meta_item_1:12630>)
    .outputs(<contenttweaker:thin_nylon_sheet>*2)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*1000)
    .inputs(<ore:dustRuthenium>)
    .outputs(<gtadditions:ga_dust:32233>*2)
    .duration(200)
    .EUt(7000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*1000)
    .inputs(<ore:dustRuthenium>)
    .outputs(<gtadditions:ga_dust:32233>*2)
    .duration(200)
    .EUt(7000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32233>*2)
    .outputs(<gregtech:meta_item_1:2883>)
    .fluidOutputs(<liquid:chlorine>*1000)
    .duration(2000)
    .EUt(500)
    .buildAndRegister();

spincoater.recipeBuilder()
    .fluidInputs(<liquid:acetone>*1000)
    .inputs(<gregtech:meta_item_1:19205>,<gtadditions:ga_dust:32234>)
    .outputs(<contenttweaker:optical_capacitor_base>)
    .duration(2000)
    .EUt(4000)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:ruthenium_platinum_colloid>*1000)
    .outputs(<gtadditions:ga_dust:32234>)
    .fluidOutputs(<liquid:ethanol>*1000)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:ruthenium_platinum_colloid>*1000)
    .outputs(<gtadditions:ga_dust:32234>)
    .fluidOutputs(<liquid:ethanol>*1000)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1500>, [	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32640>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32600>, <gregtech:machine:501>, <gregtech:meta_item_1:32600>]]);
recipes.addShaped(<gregtech:machine:1501>, [	[<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32641>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32601>, <gregtech:machine:502>, <gregtech:meta_item_1:32601>]]);
recipes.addShaped(<gregtech:machine:1502>, [	[<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32642>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:meta_item_1:32602>]]);
recipes.addShaped(<gregtech:machine:1503>, [	[<gregtech:meta_item_1:32643>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32643>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>]]);
recipes.addShaped(<gregtech:machine:1504>, [	[<gregtech:meta_item_1:32644>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32644>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32604>, <gregtech:machine:505>, <gregtech:meta_item_1:32604>]]);
recipes.addShaped(<gregtech:machine:1505>, [	[<gregtech:meta_item_1:32645>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32645>], 	[<gtadditions:ga_transparent_casing>, <ore:rotorSteel>, <gtadditions:ga_transparent_casing>], 	[<gregtech:meta_item_1:32606>, <gregtech:machine:506>, <gregtech:meta_item_1:32606>]]);

pyro.recipeBuilder()
    .fluidInputs(<liquid:ferrocenewaste>*1000)
    .outputs(<gregtech:meta_item_1:2033>)
    .fluidOutputs(<liquid:cyclopentadiene>*100)
    .duration(1200)
    .EUt(800)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12632>,<gtadditions:ga_transparent_casing:4>)
    .outputs(<contenttweaker:highresistanceglass>)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:highresistanceglass>,<contenttweaker:biosafe_protective_plating>*4,<ore:circuitUev>)
    .outputs(<contenttweaker:ultrahighresistanceglass>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*2000,<liquid:sulfuric_acid>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:ammonium_persulfate>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(400)
    .buildAndRegister();    

lcr.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*2000,<liquid:sulfuric_acid>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:ammonium_persulfate>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(400)
    .buildAndRegister();  

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*6000)
    .inputs(<gregtech:meta_item_1:2043>)
    .fluidOutputs(<liquid:darmstadtium_hexafluoride>*1000)
    .duration(400)
    .EUt(6780)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*6000)
    .inputs(<gregtech:meta_item_1:2043>)
    .fluidOutputs(<liquid:darmstadtium_hexafluoride>*1000)
    .duration(400)
    .EUt(6780)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32236>*2)
    .property("explosives", 64)
    .outputs(<gtadditions:ga_dust:32237>,<gregtech:meta_item_1:2111>*32)
    .duration(400)
    .EUt(8000)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:ga_cable:737> * 32], [], false);

assembler.recipeBuilder()
    .inputs(<gregtech:ga_cable:738>*32,<gtadditions:ga_meta_item:32367>,<contenttweaker:uev_superconductor_assembly>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:microcrystallizinghydrogen>*14000)
    .outputs(<gregtech:ga_cable:737>*32)
    .duration(2000)
    .EUt(80000)
    .buildAndRegister();

electromagnetic_separator.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32540>)
    .outputs(<gtadditions:ga_dust:357>*3, <gregtech:meta_item_1:2033>)
    .duration(500)
    .EUt(80000)
    .buildAndRegister();

Utils.removeRecipeByOutput(electromagnetic_separator, [<gtadditions:ga_dust:357>*3, <gregtech:meta_item_1:2033>], [], false);

ebf.recipeBuilder()
    .inputs(<contenttweaker:usedcrackingcatalyst>)
    .outputs(<contenttweaker:crackingcatalyst>)
    .fluidInputs(<liquid:oxygen>*1000)
    .duration(400)
    .EUt(1200)
    .property("temperature", 400)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2034>,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2005>)
    .fluidInputs(<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:lafeaso1_mixture>*1000)
    .duration(2000)
    .EUt(400)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:lafeaso1_mixture>*1000)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<contenttweaker:lafeaso1_pellets>)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .outputs(<contenttweaker:lafeaso1_catalyst>)
    .fluidInputs(<liquid:fluorine>*1000)
    .inputs(<gtadditions:ga_dust:32239>,<contenttweaker:seperationfilter>)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .outputs(<contenttweaker:lafeaso1_catalyst>)
    .fluidInputs(<liquid:fluorine>*1000)
    .inputs(<gtadditions:ga_dust:32239>,<contenttweaker:seperationfilter>)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

recipes.remove(<gregtech:machine:4178>);
recipes.addShaped(<gregtech:machine:4178>, [	[<gregtech:metal_casing:4>, <ore:gearPotin>, <gregtech:metal_casing:4>], 	[<gregtech:metal_casing:4>, <minecraft:diamond_pickaxe>, <gregtech:metal_casing:4>], 	[<gregtech:metal_casing:4>, <ore:gearPotin>, <gregtech:metal_casing:4>]]);

recipes.remove(<gregtech:machine:2538>);
recipes.addShaped(<gregtech:machine:10116>, [	[<gregtech:wire_coil>, <gregtech:meta_item_1:32612>, <gregtech:wire_coil>], 	[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], [<gregtech:wire_coil>, <gregtech:meta_item_1:32612>, <gregtech:wire_coil>]]);
recipes.addShapeless(<gregtech:machine:10116>,[<gregtech:machine:2538>]);

Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_ethane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_ethylene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_propane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_propene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_light_fuel>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_heavy_fuel>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butadiene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_naphtha>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_gas>*1000], false);



Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_ethane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_ethylene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_propane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_propene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:cracked_light_fuel>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:cracked_heavy_fuel>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butadiene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butane>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butene>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_naphtha>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_gas>*1000], false);

Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_heavy_e_naquadah>*1600], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_light_e_naquadah>*1200], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_medium_e_naquadah>*1400], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_heavy_naquadah>*1600], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_light_naquadah>*1200], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_medium_naquadah>*1400], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium253>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium252>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium256>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium245>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium241>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium243>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium249>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium247>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium251>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium257>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium255>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium253>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium258>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium259>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium262>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium241>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium_radioactive240>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium235>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium237>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium239>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium246>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium250>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium247>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium261>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium259>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium263>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium_radioactive234>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium235>*1000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium>*1000], false);

Utils.removeRecipeByOutput(cracker, [], [<liquid:hot_ruthenium_tetroxide_solution>*2000], false);
Utils.removeRecipeByOutput(cracker, [], [<liquid:formaldehyde>*120,<liquid:dimethylamine>*160], false);

vacfreezer.recipeBuilder()
    .fluidInputs(<liquid:fuming_hydrogen>*1000)
    .fluidOutputs(<liquid:hydrogen>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<minecraft:iron_ingot>)
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast_custom>)
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<minecraft:emerald>)
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast_custom:2>)
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<minecraft:iron_nugget>)
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast_custom:1>)
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:sword_blade>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:large_sword_blade>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:large_plate>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:knife_blade>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:hand_guard>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:pick_head>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:tough_tool_rod>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:hammer_head>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:sharpening_kit>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:tool_rod>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:binding>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:binding"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:excavator_head>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:axe_head>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:broad_axe_head>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

steam_foundry.recipeBuilder()
    .inputs(<tconstruct:cross_guard>.withTag({Material: "wood"}))
    .fluidInputs(<liquid:gold>*288)
    .outputs(<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}))
    .duration(200)
    .EUt(1)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:microheater>*2,<gregtech:meta_item_1:12184>*4,<minecraft:iron_bars>*2)
    .outputs(<contenttweaker:heat_vent>)
    .duration(400)
    .EUt(7000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:used_lafeaso1_catalyst>)
    .outputs(<contenttweaker:lafeaso1_catalyst>)
    .duration(200)
    .EUt(500)
    .property("temperature", 1200)
    .buildAndRegister();

Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10052>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10069>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10053>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10075>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10076>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10779>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10778>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10777>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10782>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10783>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10784>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10798>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10799>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10800>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10787>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10789>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10790>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10805>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10804>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10803>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10812>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10815>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10816>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10817>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10820>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10810>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10809>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10808>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10795>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10794>], [<liquid:oxygen>*2000], false);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10793>], [<liquid:oxygen>*2000], false);


roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3052>*3)
    .outputs(<gregtech:meta_item_1:10052>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3069>*3)
    .outputs(<gregtech:meta_item_1:10069>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3053>*3)
    .outputs(<gregtech:meta_item_1:10053>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3075>*3)
    .outputs(<gregtech:meta_item_1:10075>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3076>*3)
    .outputs(<gregtech:meta_item_1:10076>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3779>*3)
    .outputs(<gregtech:meta_item_1:10779>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3778>*3)
    .outputs(<gregtech:meta_item_1:10778>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3777>*3)
    .outputs(<gregtech:meta_item_1:10777>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3782>*3)
    .outputs(<gregtech:meta_item_1:10782>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3784>*3)
    .outputs(<gregtech:meta_item_1:10784>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3783>*3)
    .outputs(<gregtech:meta_item_1:10783>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3798>*3)
    .outputs(<gregtech:meta_item_1:10798>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3799>*3)
    .outputs(<gregtech:meta_item_1:10799>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3800>*3)
    .outputs(<gregtech:meta_item_1:10800>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3787>*3)
    .outputs(<gregtech:meta_item_1:10787>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3789>*3)
    .outputs(<gregtech:meta_item_1:10789>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3790>*3)
    .outputs(<gregtech:meta_item_1:10790>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3805>*3)
    .outputs(<gtadditions:ga_meta_item:10805>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3804>*3)
    .outputs(<gregtech:meta_item_1:10804>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3803>*3)
    .outputs(<gregtech:meta_item_1:10803>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3812>*3)
    .outputs(<gregtech:meta_item_1:10812>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3817>*3)
    .outputs(<gregtech:meta_item_1:10817>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3816>*3)
    .outputs(<gregtech:meta_item_1:10816>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3815>*3)
    .outputs(<gregtech:meta_item_1:10815>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3820>*3)
    .outputs(<gregtech:meta_item_1:10820>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3810>*3)
    .outputs(<gregtech:meta_item_1:10810>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3809>*3)
    .outputs(<gregtech:meta_item_1:10809>)
    .duration(200)
    .EUt(200)
    .fluidOutputs(<liquid:steam>*2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3808>*3)
    .outputs(<gregtech:meta_item_1:10808>)
    .fluidOutputs(<liquid:steam>*2000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3795>*3)
    .outputs(<gregtech:meta_item_1:10795>)
    .fluidOutputs(<liquid:steam>*2000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3794>*3)
    .fluidOutputs(<liquid:steam>*2000)
    .outputs(<gregtech:meta_item_1:10794>)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:3793>*3)
    .fluidOutputs(<liquid:steam>*2000)
    .outputs(<gregtech:meta_item_1:10793>)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:water>*1000,<liquid:methanol>*1000], false);
Utils.removeRecipeByOutput(lcr, [], [<liquid:water>*1000,<liquid:methanol>*1000], false);

recipes.remove(<gregtech:machine:4176>);
recipes.addShaped(<gregtech:machine:4176>, [	[null, <ore:plateTin>, null], 	[<ore:platePotin>, <ore:chest>, <ore:platePotin>], 	[null, <ore:plateTin>, null]]);

recipes.remove(<gregtech:machine:4177>);
recipes.addShaped(<gregtech:machine:4177>, [	[null, <ore:platePotin>, null], 	[<ore:plateTin>, <ore:chest>, <ore:plateTin>], 	[null, <ore:platePotin>, null]]);

recipes.remove(<gregtech:metal_casing:8>);

recipes.addShaped(<gregtech:metal_casing:8>*2, [	[<gregtech:meta_item_2:32016>, <gregtech:meta_item_2:32016>], 	[<gregtech:meta_item_2:32016>, <gregtech:meta_item_2:32016>]]);

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:n-decanol>*1000)
    .notConsumable(<gtadditions:ga_dust:30>)
    .fluidOutputs(<liquid:decene>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:carbon_monoxide>*1000,<liquid:hydrogen>*1000,<liquid:decene>*1000)
    .notConsumable(<gregtech:meta_item_1:2869>)
    .fluidOutputs(<liquid:nonanoic_acid>*1000)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:carbon_monoxide>*1000,<liquid:hydrogen>*1000,<liquid:decene>*1000)
    .notConsumable(<gregtech:meta_item_1:2869>)
    .fluidOutputs(<liquid:nonanoic_acid>*1000)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

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

recipes.remove(<gregtech:machine:2553>);

recipes.addShapeless(<gregtech:machine:10119>,[<gregtech:machine:2553>]);
recipes.addShapeless(<gregtech:machine:10119>,[<gregtech:machine:510>]);

recipes.addShaped(<gregtech:machine:510>, [	[<gregtech:meta_item_1:12033>, null, <gregtech:meta_item_1:12033>], 	[<ore:stickIron>, <gregtech:metal_casing:1>, <ore:stickIron>], 	[<ore:screwIron>, <ore:stickIron>, <ore:screwIron>]]);
recipes.addShaped(<gregtech:machine:510>, [	[<gregtech:meta_item_1:12095>, null, <gregtech:meta_item_1:12095>], 	[<ore:stickBronze>, <gregtech:metal_casing:1>, <ore:stickBronze>], 	[<ore:screwBronze>, <ore:stickBronze>, <ore:screwBronze>]]);

chemReactor.recipeBuilder()
    .fluidOutputs(<liquid:potassium_carbonate_mixture>*1000)
    .fluidInputs(<liquid:potassium_carbonate_solution>*1000)
    .inputs(<gtadditions:ga_dust:32241>*3)
    .duration(500)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidOutputs(<liquid:potassium_carbonate_mixture>*1000)
    .fluidInputs(<liquid:potassium_carbonate_solution>*1000)
    .inputs(<gtadditions:ga_dust:32241>*3)
    .duration(500)
    .EUt(700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:potassium_carbonate_mixture>*1000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:potassium_ethyl_xanthate_solution>*2000)
    .duration(2000)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:potassium_carbonate_mixture>*1000,<liquid:ethanol>*1000)
    .fluidOutputs(<liquid:potassium_ethyl_xanthate_solution>*2000)
    .duration(2000)
    .EUt(700)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:potassium_ethyl_xanthate_solution>*2000)
    .outputs(<gregtech:meta_item_1:2624>*2)
    .fluidOutputs(<liquid:ethanol>*1000)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembly_line, [<gtadditions:ga_meta_item:32500>*6],[]).remove();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:osmium_solution>*1000)
    .notConsumable(<contenttweaker:fume_hood>)
    .notConsumable(<liquid:sulfur_dioxide>)
    .fluidOutputs(<liquid:oxygen>*4000,<liquid:oxygen_reduced_osmium_solution>*1000)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidInputs(<liquid:osmium_solution>*1000)
    .notConsumable(<contenttweaker:fume_hood>)
    .notConsumable(<liquid:sulfur_dioxide>)
    .fluidOutputs(<liquid:oxygen>*4000,<liquid:oxygen_reduced_osmium_solution>*1000)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:oxygen_reduced_osmium_solution>*1000)
    .outputs(<gregtech:meta_item_1:2047>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(400)
    .EUt(4000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2691>*3)
    .fluidOutputs(<liquid:oxygen>*2000)
    .outputs(<gregtech:meta_item_1:2883>)
    .duration(800)
    .EUt(800)
    .buildAndRegister();
