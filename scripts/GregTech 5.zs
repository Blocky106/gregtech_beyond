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

cracker.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:ferrocenewaste>*1000)
    .fluidOutputs(<liquid:cyclopentadiene>*100,<liquid:cyclopentene>*100)
    .duration(200)
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