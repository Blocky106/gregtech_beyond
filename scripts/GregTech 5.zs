import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps;
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
    .notConsumable(<gtadditions:ga_dust:32213>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
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

Utils.removeRecipeByOutput(assembler, [<gregtech:ga_cable:737> * 32], [], true);

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

Utils.removeRecipeByOutput(electromagnetic_separator, [<gtadditions:ga_dust:357>*3, <gregtech:meta_item_1:2033>], [], true);

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


recipes.addShaped(<gregtech:machine:4178>, [	[<gregtech:metal_casing:4>, <ore:gearPotin>, <gregtech:metal_casing:4>], 	[<gregtech:metal_casing:4>, <minecraft:diamond_pickaxe>, <gregtech:metal_casing:4>], 	[<gregtech:metal_casing:4>, <ore:gearPotin>, <gregtech:metal_casing:4>]]);

recipes.addShaped(<gregtech:machine:10116>, [	[<gregtech:wire_coil>, <gregtech:meta_item_1:32612>, <gregtech:wire_coil>], 	[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], [<gregtech:wire_coil>, <gregtech:meta_item_1:32612>, <gregtech:wire_coil>]]);
recipes.addShapeless(<gregtech:machine:10116>,[<gregtech:machine:2538>]);

Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_ethane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_ethylene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_propane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_propene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_light_fuel>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_heavy_fuel>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butadiene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_butene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_naphtha>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hydrocracked_gas>*1000], true);



Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_ethane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_ethylene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_propane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_propene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:cracked_light_fuel>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:cracked_heavy_fuel>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butadiene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butane>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_butene>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_naphtha>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:steamcracked_gas>*1000], true);

Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_heavy_e_naquadah>*1600], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_light_e_naquadah>*1200], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:rn_cracked_medium_e_naquadah>*1400], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_heavy_naquadah>*1600], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_light_naquadah>*1200], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:fl_cracked_medium_naquadah>*1400], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium253>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium252>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.californium256>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium245>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium241>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.americium243>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium249>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium247>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.berkelium251>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium257>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium255>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.einsteinium253>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium258>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium259>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.fermium262>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium241>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.plutonium_radioactive240>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium235>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium237>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.neptunium239>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium246>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium250>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.curium247>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium261>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium259>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.mendelevium263>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium_radioactive234>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium235>*1000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:hexafluoride_steam_cracked.uranium>*1000], true);

Utils.removeRecipeByOutput(cracker, [], [<liquid:hot_ruthenium_tetroxide_solution>*2000], true);
Utils.removeRecipeByOutput(cracker, [], [<liquid:formaldehyde>*120,<liquid:dimethylamine>*160], true);

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

Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10052>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10069>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10053>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10075>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10076>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10779>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10778>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10777>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10782>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10783>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10784>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10798>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10799>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10800>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10787>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10789>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10790>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10805>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10804>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10803>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10812>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10815>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10816>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10817>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10820>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10810>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10809>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10808>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10795>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10794>], [<liquid:oxygen>*2000], true);
Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10793>], [<liquid:oxygen>*2000], true);


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

Utils.removeRecipeByOutput(chemReactor, [], [<liquid:water>*1000,<liquid:methanol>*1000], true);
Utils.removeRecipeByOutput(lcr, [], [<liquid:water>*1000,<liquid:methanol>*1000], true);


recipes.addShaped(<gregtech:machine:4176>, [	[null, <ore:plateTin>, null], 	[<ore:platePotin>, <ore:chest>, <ore:platePotin>], 	[null, <ore:plateTin>, null]]);

recipes.addShaped(<gregtech:machine:4177>, [	[null, <ore:platePotin>, null], 	[<ore:plateTin>, <ore:chest>, <ore:plateTin>], 	[null, <ore:platePotin>, null]]);

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

recipes.addShapeless(<gregtech:machine:10119>,[<gregtech:machine:2553>]);
recipes.addShapeless(<gregtech:machine:10119>,[<gregtech:machine:510>]);

recipes.addShaped(<gregtech:machine:10119>, [	[<gregtech:meta_item_1:12033>, null, <gregtech:meta_item_1:12033>], 	[<ore:stickIron>, <gregtech:metal_casing:1>, <ore:stickIron>], 	[<ore:screwIron>, <ore:stickIron>, <ore:screwIron>]]);
recipes.addShaped(<gregtech:machine:10119>, [	[<gregtech:meta_item_1:12095>, null, <gregtech:meta_item_1:12095>], 	[<ore:stickBronze>, <gregtech:metal_casing:1>, <ore:stickBronze>], 	[<ore:screwBronze>, <ore:stickBronze>, <ore:screwBronze>]]);

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

Utils.removeRecipeByOutput(assembly_line, [<gtadditions:ga_meta_item:32500>*6],[],true);

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

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:13572>*6,<gtadditions:ga_meta_item:32361>*2,<ore:circuitUev>*2)
    .fluidInputs(<liquid:metallic_hydrogen>*144)
    .outputs(<contenttweaker:stella_anvil_module>)
    .duration(400)
    .EUt(80000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:wire_coil:7>*4,<gtadditions:ga_meta_item:2311>*32,<gregtech:meta_item_1:17852>*4,<gregtech:meta_item_2:16852>*16,<gregtech:meta_item_2:26852>*2)
    .fluidInputs(<liquid:kevlar>*288)
    .outputs(<contenttweaker:electromagnetic_acceleration_pipe_box>*4)
    .duration(800)
    .EUt(7000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18852>*4,<gregtech:meta_item_1:17852>*16,<gregtech:meta_item_1:12852>*6,<gregtech:fluid_pipe:2850>*4)
    .fluidInputs(<liquid:kevlar>*144)
    .outputs(<contenttweaker:neutron_tube_casing>)
    .duration(200)
    .EUt(80000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_tara_c_o_alloy>,<gregtech:meta_item_1:12634>*6)
    .outputs(<contenttweaker:mervin_tara_carbonoxygen_casing>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .duration(500)
    .EUt(2000)
    .buildAndRegister();


Utils.removeRecipeByOutput(assembler, [<gregtech:frame_maraging_steel_a>*4],[], true);
recipes.addShaped(<contenttweaker:maraging_steel_frame_300>*4, [	[<ore:plateMaragingSteelA>, <ore:plateMaragingSteelA>, <ore:plateMaragingSteelA>], 	[<ore:stickMaragingSteelA>, <ore:stickMaragingSteelA>, <ore:stickMaragingSteelA>], 	[<ore:stickMaragingSteelA>, <gregtech:meta_tool:8>, <ore:stickMaragingSteelA>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12985>*4,<gregtech:meta_item_1:14985>*3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:maraging_steel_frame_300>*4)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

recipes.addShaped(<gtadditions:ga_metal_casing_1:5>*3, [[<ore:plateMaragingSteelA>, <ore:craftingToolHardHammer>, <ore:plateMaragingSteelA>], 	[<ore:plateMaragingSteelA>, <contenttweaker:maraging_steel_frame_300>, <ore:plateMaragingSteelA>], 	[<ore:plateMaragingSteelA>, <ore:craftingToolWrench>, <ore:plateMaragingSteelA>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12985>*6,<contenttweaker:maraging_steel_frame_300>)
    .outputs(<gtadditions:ga_metal_casing_1:5>*3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .duration(800)
    .EUt(80)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gtadditions:ga_metal_casing_1:5>)
    .outputs(<gregtech:meta_item_1:985>*12)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:maraging_steel_frame_300>)
    .fluidOutputs(<liquid:maraging_steel_a>*198)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

stellar.recipeBuilder()
    .outputs(<enderio:block_alloy_endergy:3>)
    .inputs(<gregtech:meta_item_1:12569>*64)
    .duration(2000)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:concrete>*144)
    .inputs(<contenttweaker:thin_kapton_k_sheet>*16,<gregtech:meta_item_1:12627>*4,<gregtech:meta_item_2:19977>*2,<gregtech:meta_item_2:16743>*16)
    .outputs(<contenttweaker:space_elevator_railway_block>)
    .duration(2000)
    .EUt(15000)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:concrete>*144)
    .inputs(<gregtech:meta_item_1:12985>*6,<gregtech:frame_naquadah_alloy>)
    .outputs(<contenttweaker:space_elevator_block>)
    .duration(2000)
    .EUt(15000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:kevlar>*32000,<liquid:soldering_alloy>*32000)
    .inputs(<gregtech:meta_item_2:16692>*64,<ore:circuitInfinite>*64,<ore:circuitUev>*32,<gtadditions:ga_cable:4>*32,<gregtech:meta_item_2:16692>*64,<gtadditions:ga_meta_item:32348>*16,<gtadditions:ga_meta_item:32360>*16,<gregtech:machine:3239>*4)
    .outputs(<gregtech:machine:10118>)
    .duration(8000)
    .EUt(30000)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:atomic_casing>, [[<ore:plateTrinaquadalloy>, <gregtech:meta_tool:6>, <ore:plateTrinaquadalloy>], [<ore:plateTrinaquadalloy>, <ore:frameGtTrinaquadalloy>, <ore:plateTrinaquadalloy>], 	[<ore:plateTrinaquadalloy>, <gregtech:meta_tool:8>, <ore:plateTrinaquadalloy>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateTrinaquadalloy>*6,<ore:frameGtTrinaquadalloy>)
    .outputs(<contenttweaker:atomic_casing>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .duration(800)
    .EUt(8000)
    .buildAndRegister();

blastalloy.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2719>*6,<gregtech:meta_item_1:2307>*2,<gregtech:meta_item_1:2012>)
    .fluidOutputs(<liquid:trinaquadalloy>*1296)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

Utils.removeRecipeByOutput(ebf, [<gregtech:meta_item_1:10556>],[],true);

roasters.recipeBuilder()
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2019>*2)
    .outputs(<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:2071>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:120>)
    .fluidInputs(<liquid:oxalic_acid>*1000)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2036>*2)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:120>)
    .fluidInputs(<liquid:oxalic_acid>*1000)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2036>*2)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32242>)
    .fluidInputs(<liquid:oxalic_acid>*1000)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2038>*2)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32242>)
    .fluidInputs(<liquid:oxalic_acid>*1000)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2038>*2)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*4000)
    .inputs(<gtadditions:ga_dust:32243>,<gregtech:meta_item_1:2012>)
    .outputs(<gtadditions:ga_dust:32242>)
    .fluidOutputs(<liquid:carbon_dioxide>*2000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*4000)
    .inputs(<gtadditions:ga_dust:32243>,<gregtech:meta_item_1:2012>)
    .outputs(<gtadditions:ga_dust:32242>)
    .fluidOutputs(<liquid:carbon_dioxide>*2000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*2000)
    .inputs(<gregtech:meta_item_1:2309>)
    .outputs(<gtadditions:ga_dust:32243>*3)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:y-butyrolactone>*1000,<liquid:methylamine>*1000)
    .fluidOutputs(<liquid:nmethyl2pyrrolidone>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:y-butyrolactone>*1000,<liquid:methylamine>*1000)
    .fluidOutputs(<liquid:nmethyl2pyrrolidone>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidOutputs(<liquid:2-hydroxypropionimidamide>*1000)
    .fluidInputs(<liquid:acetone>*1000,<liquid:ammonia>*1000)
    .duration(500)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidOutputs(<liquid:2-hydroxypropionimidamide>*1000)
    .fluidInputs(<liquid:acetone>*1000,<liquid:ammonia>*1000)
    .duration(500)
    .EUt(700)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .fluidInputs(<liquid:2-hydroxypropionimidamide>*1000)
    .notConsumable(<gregtech:meta_item_1:2373>)
    .fluidOutputs(<liquid:diethylketone>*1000)
    .duration(2000)
    .EUt(900)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .outputs(<contenttweaker:uhasoc_lithography_mask>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 11}))
    .duration(2000)
    .EUt(9000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10115>, [	[<gregtech:meta_item_1:32643>, <gtadditions:ga_transparent_casing:2>, <gregtech:meta_item_1:32613>], 	[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], 	[<gregtech:meta_item_1:32643>, <ore:plateAdvanced>, <gregtech:meta_item_1:32613>]]);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000,<liquid:acetaldehyde>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:peracetic_acid_mixture>*1000)
    .duration(700)
    .EUt(800)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000,<liquid:acetaldehyde>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:peracetic_acid_mixture>*1000)
    .duration(700)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:purified_oleic_acid>*1000,<liquid:glacial_acetic_acid>*1000)
    .fluidOutputs(<liquid:oleic_acid_mixture>*1000)
    .duration(700)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:purified_oleic_acid>*1000,<liquid:glacial_acetic_acid>*1000)
    .fluidOutputs(<liquid:oleic_acid_mixture>*1000)
    .duration(700)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000,<liquid:dihydroxystearic_acid>*1000)
    .notConsumable(<liquid:sulfuric_acid>)
    .fluidOutputs(<liquid:azaleic_acid>*1000,<liquid:decanedioic_acid>*1000)
    .duration(700)
    .EUt(120)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:decanedioic_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:heated_decanedioic_acid>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:heated_decanedioic_acid>*1000,<liquid:hexamethylenediamine>*1000)
    .fluidOutputs(<liquid:n-6-aminohexylsebacamide>*1000)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:heated_decanedioic_acid>*1000,<liquid:hexamethylenediamine>*1000)
    .fluidOutputs(<liquid:n-6-aminohexylsebacamide>*1000)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

spincoater.recipeBuilder()
    .fluidInputs(<liquid:nylon610>*144)
    .inputs(<gregtech:meta_item_1:14184>)
    .outputs(<contenttweaker:nylon610_spinneret>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:508>, [	[null, null, null], 	[<gregtech:meta_item_1:12636>, <ore:plateTritanium>, <gregtech:meta_item_1:12636>], 	[<ore:cableGtSingleNaquadahAlloy>, <gregtech:machine_casing:8>, <ore:cableGtSingleNaquadahAlloy>]]);

Utils.removeRecipeByOutput(assembler, [<gregtech:machine:508>],[], true);

assembler.recipeBuilder()
    .outputs(<gregtech:machine_casing:8>)
    .fluidInputs(<liquid:nylon610>*288)
    .inputs(<gregtech:machine:508>,<gregtech:cable:5308>*2)
    .duration(200)
    .EUt(200000)
    .buildAndRegister();

Utils.removeRecipeByOutput(electrolyzer, [<gregtech:meta_item_1:2131>,<gregtech:meta_item_1:2077>],[],true);

furnace.remove(<gregtech:meta_item_1:10705>);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:isopropyl_alcohol>*1000,<liquid:diethylether>*1000)
    .notConsumable(<nuclearcraft:dust:15>)
    .fluidOutputs(<liquid:carboxylic_acid_mixture>*2000)
    .duration(500)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:isopropyl_alcohol>*1000,<liquid:diethylether>*1000)
    .notConsumable(<nuclearcraft:dust:15>)
    .fluidOutputs(<liquid:carboxylic_acid_mixture>*2000)
    .duration(500)
    .EUt(800)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .fluidInputs(<liquid:carboxylic_acid_mixture>*2000)
    .fluidOutputs(<liquid:diethylether>*1000,<liquid:propanal_mixture>*1000)
    .duration(2000)
    .EUt(800)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:propanal_mixture>*1000)
    .fluidOutputs(<liquid:propanal>*500,<liquid:propionicacid>*500)
    .duration(2000)
    .EUt(800)
    .buildAndRegister();


chemReactor.recipeBuilder()
    .fluidInputs(<liquid:propanal>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:propylamine>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:propanal>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:propylamine>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:propylamine>*1000,<liquid:propionicacid>*1000)
    .fluidOutputs(<liquid:tripropylamine>*1000)
    .duration(200)
    .EUt(1800)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:propylamine>*1000,<liquid:propionicacid>*1000)
    .fluidOutputs(<liquid:tripropylamine>*1000)
    .duration(200)
    .EUt(1800)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:titaniumaluminide>*1000,<liquid:moltenfullerenesuperconductor>*1000,<liquid:polybenzimidazole>*1000)
    .inputs(<gregtech:meta_item_1:19581>*32,<gregtech:meta_item_1:19636>*32,<gregtech:meta_item_1:12760>*16,<gregtech:meta_item_1:12733>*16,<gregtech:machine:2548>*16)
    .outputs(<contenttweaker:space_mining_module>)
    .duration(2000)
    .EUt(8000)
    .buildAndRegister();

nuclear_reactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2795>)
    .outputs(<gregtech:meta_item_1:2794>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(4000)
    .EUt(12000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10117>, [	[<gregtech:meta_item_1:32603>, <contenttweaker:kanthalcoil>, <gregtech:meta_item_1:32603>], [<gregtech:meta_item_1:32613>, <gregtech:machine:504>, <gregtech:meta_item_1:32643>], 	[<ore:circuitExtreme>, <contenttweaker:kanthalcoil>, <ore:circuitExtreme>]]);

Utils.removeRecipeByOutput(electrolyzer, [<gregtech:meta_item_1:2912>],[<liquid:oxygen>*2000], true);

assembler.recipeBuilder()
    .inputs(<gregtech:machine:2504>,<gregtech:meta_item_1:32687>*2,<gregtech:meta_item_1:32697>*2,<gregtech:meta_item_1:32677>*4,<gregtech:meta_item_1:12741>*16,<ore:circuitInfinite>*2)
    .outputs(<contenttweaker:reactor_core_stabilizer>)
    .duration(200)
    .EUt(500)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<contenttweaker:fume_hood>)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<ore:dustDiamond>)
    .outputs(<gtadditions:ga_dust:32246>)
    .duration(70)
    .EUt(10)
    .buildAndRegister();

Utils.removeRecipeByOutput(cutting_saw, [<gregtech:meta_item_1:12111>*9],[], true);

assembler.recipeBuilder()
    .inputs(<ore:plateAluminium>*6,<ore:frameGtAluminium>)
    .outputs(<gregtech:metal_casing:3>*3)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 30}))
    .duration(280)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<nuclearcraft:dust:15>)
    .fluidInputs(<liquid:naphtalene>*1000)
    .fluidOutputs(<liquid:naphthalene_dicarboxaldehyde>*1000)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<nuclearcraft:dust:15>)
    .fluidInputs(<liquid:naphtalene>*1000)
    .fluidOutputs(<liquid:naphthalene_dicarboxaldehyde>*1000)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_2:32444>],[],true);
Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_2:32444>],[],true);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:polyethylene_naphthalate>*144)
    .inputs(<gregtech:meta_item_1:12142>)
    .outputs(<gregtech:meta_item_2:32444>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:polyethylene_naphthalate>*144)
    .inputs(<gregtech:meta_item_1:12142>)
    .outputs(<gregtech:meta_item_2:32444>)
    .duration(600)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<ore:dustCopper>)
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:copper_sulfate_solution>*1000)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<ore:dustCopper>)
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:copper_sulfate_solution>*1000)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32444>)
    .fluidInputs(<liquid:copper_sulfate_solution>*400)
    .outputs(<contenttweaker:electroplated_expoy_board>)
    .duration(1000)
    .EUt(12)
    .buildAndRegister();

uv_light.recipeBuilder()
    .inputs(<contenttweaker:electroplated_expoy_board>)
    .outputs(<contenttweaker:coated_epoxy_board>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .duration(400)
    .EUt(120)
    .notConsumable(<contenttweaker:circiut_board_lithography_mask>)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*100)
    .inputs(<contenttweaker:coated_epoxy_board>)
    .outputs(<contenttweaker:etched_circuit_board>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:etched_circuit_board>)
    .fluidInputs(<liquid:6040_tin_lead_solution>*200)
    .outputs(<gtadditions:ga_meta_item:32032>)
    .duration(800)
    .EUt(70)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<ore:dustTin>*3,<ore:dustLead>*2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .fluidOutputs(<liquid:6040_tin_lead_solution>*5000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<thaumcraft:nugget:3>*9)
    .outputs(<gregtech:meta_item_1:10062>)
    .duration(200)
    .EUt(2)
    .buildAndRegister();

packer.recipeBuilder()
    .inputs(<thaumcraft:nugget:3>*9)
    .notConsumable(<gtadditions:ga_meta_item:32133>)
    .outputs(<gregtech:meta_item_1:10062>)
    .duration(200)
    .EUt(2)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<gtadditions:ga_meta_item:32032>],[],true);
Utils.removeRecipeByOutput(lcr, [<gtadditions:ga_meta_item:32032>],[],true);

Utils.removeRecipeByOutput(chemReactor, [],[<liquid:thionyl_chloride>*1000,<liquid:sulfur_dioxide>*1000],true);
Utils.removeRecipeByOutput(lcr, [],[<liquid:thionyl_chloride>*1000,<liquid:sulfur_dioxide>*1000],true);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dichloride>*1000)
    .fluidOutputs(<liquid:thionyl_chloride>*1000,<liquid:sulfur_dioxide>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dichloride>*1000)
    .fluidOutputs(<liquid:thionyl_chloride>*1000,<liquid:sulfur_dioxide>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<gtadditions:ga_dust:337>*5],[],true);
Utils.removeRecipeByOutput(lcr, [<gtadditions:ga_dust:337>*5],[],true);

furnace.remove(<gregtech:meta_item_1:10007>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2007>)
    .outputs(<gregtech:meta_item_1:10007>)
    .duration(200)
    .EUt(200)
    .property("temperature", 1000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10007>, [	[<contenttweaker:bulatsteelplate>, <gregtech:meta_item_1:32641>, <contenttweaker:bulatsteelplate>], 	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 	[<contenttweaker:bulatsteelplate>, <ore:frameGtSteel>, <contenttweaker:bulatsteelplate>]]);

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 13}))
    .outputs(<contenttweaker:uhpic_lithography_mask>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 14}))
    .outputs(<contenttweaker:circiut_board_lithography_mask>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 15}))
    .outputs(<contenttweaker:qubit_cpu_lithography_mask>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:methanol>*2000,<liquid:oxygen>*2000)
    .notConsumable(<gregtech:meta_item_1:2062>)
    .fluidOutputs(<liquid:formaldehyde>*2000,<liquid:water>*2000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:methanol>*2000,<liquid:oxygen>*2000)
    .notConsumable(<gregtech:meta_item_1:2062>)
    .fluidOutputs(<liquid:formaldehyde>*2000,<liquid:water>*2000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:soldering_alloy>*144)
    .inputs(<gregtech:meta_item_1:12026>,<gregtech:meta_item_1:12044>,<gregtech:meta_item_1:12760>)
    .outputs(<contenttweaker:au_ge_ni_alloy_stack>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10036>, [	[<gregtech:meta_item_1:32613>, <ore:plateHssg>, <gregtech:meta_item_1:32613>], 	[<ore:circuitMaster>, <gregtech:machine:505>, <ore:circuitMaster>], 	[<ore:wireGtDoubleYttriumBariumCuprate>, <ore:plateHssg>, <ore:wireGtDoubleYttriumBariumCuprate>]]);

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:perfectlysealedvacuumcasing>*4,<gtadditions:ga_meta_item:32379>*8,<gtadditions:ga_meta_item:32355>*16,<gtadditions:ga_meta_item:32361>*16,<gregtech:ga_cable:2737>*6,<gtadditions:ga_multiblock_casing:13>*16,<gregtech:machine:3304>*4,<gtadditions:ga_meta_item:17805>*16)
    .fluidInputs(<liquid:naquadah>*50000,<liquid:soldering_alloy>*1296)
    .outputs(<gregtech:machine:10005>)
    .duration(2000)
    .EUt(800000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:4224>*4,<gregtech:machine:10049>*4,<gtadditions:ga_meta_item:32367>*64,<gtadditions:ga_meta_item:32355>*32,<gtadditions:ga_meta_item:32361>*32,<gregtech:meta_item_1:12632>*16,<gregtech:meta_item_1:12575>*32,<gregtech:meta_item_1:16840>*64,<gregtech:meta_item_2:19965>*4,<gregtech:meta_item_2:19411>*4,<gregtech:meta_item_2:18141>*2)
    .fluidInputs(<liquid:nylon610>*20000,<liquid:americium>*2000)
    .outputs(<gregtech:machine:10027>)
    .EUt(80000)
    .duration(1200)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:2559>*16,<gregtech:frame_zirconium_carbide>*64,<gregtech:machine:2559>*16,<gregtech:machine:2559>*16,<gregtech:machine:2559>*16,<gregtech:meta_item_1:32657>*4,<gregtech:meta_item_2:32707>*8,<gregtech:meta_item_1:32617>*8,<gregtech:machine:508>,<gregtech:meta_item_1:12635>*32,<gregtech:fluid_pipe:3695>*32,<gregtech:meta_item_1:12695>*12)
    .outputs(<gregtech:machine:10035>)
    .duration(4000)
    .EUt(88000)
    .buildAndRegister();

assembler.recipeBuilder()
    .outputs(<gregtech:machine:10042>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .inputs(<gregtech:meta_item_1:32405>*4,<gregtech:meta_item_1:18183>*8,<gregtech:machine:505>,<gregtech:fluid_pipe:1183>*4,<gregtech:meta_item_1:32613>*4,<ore:circuitExtreme>*4)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:machine:2535>,<gregtech:frame_tungsten_steel>*2,<gtadditions:ga_meta_item:2235>*16,<ore:circuitMaster>*4,<gregtech:machine:2064>,<gregtech:meta_item_1:32612>*4,<gregtech:meta_item_1:32642>*4,<gregtech:machine:504>)
    .outputs(<gregtech:machine:10066>)
    .duration(900)
    .EUt(2000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10067>, [	[<ore:circuitElite>, <ore:plateDoubleMolybdenum>, <ore:circuitElite>], 	[<ore:pipeLargeTitanium>, <gregtech:machine:504>, <ore:pipeLargeTitanium>], 	[<ore:plateTitanium>, <ore:circuitElite>, <ore:plateTitanium>]]);
recipes.addShaped(<gregtech:machine:10058>, [	[<gtadditions:ga_transparent_casing>, <gregtech:meta_item_1:32653>, <gtadditions:ga_transparent_casing>], [<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>], [<ore:circuitElite>, <ore:plateDoubleRoseGold>, <ore:circuitElite>]]);

Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_2:17735>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_2:26735>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_2:18735>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:12735>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:10735>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_block_compressed_45:15>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:9735>*9],[],true);

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:kevlar>*20000,<liquid:nylon610>*10000,<liquid:adamantium>*20000)
    .EUt(80000)
    .duration(4000)
    .inputs(<gregtech:meta_item_2:32436>*16,<gregtech:machine:2506>*8,<gregtech:machine:3309>*16,<ore:circuitUev>*16,<gregtech:frame_hastelloy_x78>*4,<gregtech:meta_item_1:12732>*16,<gregtech:meta_item_2:19732>*8,<gregtech:meta_item_1:17732>*32,<gregtech:frame_hastelloy_x78>*4)
    .outputs(<gregtech:machine:10114>)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:soldering_alloy>*1152,<liquid:niobium_titanium>*1152)
    .inputs(<gregtech:meta_item_1:32674>*4,<gtadditions:ga_multiblock_casing:14>*16,<ore:circuitUltimate>*4,<gregtech:cable:966>*64,<gregtech:cable:966>*64,<gregtech:machine:506>*16)
    .outputs(<gregtech:machine:10113>)
    .duration(2000)
    .EUt(4000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10112>, [	[<ore:pipeLargeNaquadah>, <gregtech:meta_item_1:32677>, <ore:pipeLargeNaquadah>], [<gregtech:meta_item_1:32617>, <gregtech:machine:508>, <gregtech:meta_item_1:32617>], 	[<ore:circuitSuperconductor>, <gregtech:meta_item_1:32617>, <ore:circuitSuperconductor>]]);

assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:3255>*32,<ore:circuitUiv>*4,<ore:circuitUiv>*4,<gregtech:machine:3430>*16,<gregtech:machine:3295>*16,<gregtech:machine:3395>*16,<gregtech:machine:3370>*16,<gtadditions:ga_meta_item:32385>*32,<gtadditions:ga_meta_item:32367>*32,<gtadditions:ga_meta_item:32349>*32,<gregtech:fluid_pipe:3695>*16)
    .fluidInputs(<liquid:soldering_alloy>*1296,<liquid:naquadah>*20000,<liquid:seaborgium>*2000)
    .outputs(<gregtech:machine:10101>)
    .EUt(2000000)
    .duration(7000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10070>, [	[<gregtech:meta_item_1:32613>, <randomthings:quartzlamp>, <gregtech:meta_item_1:32613>], 	[<ore:circuitElite>, <gregtech:machine:504>, <ore:circuitElite>], 	[<ore:plateMaragingSteelA>, <ore:frameGtMaragingSteelA>, <ore:plateMaragingSteelA>]]);
recipes.addShaped(<randomthings:quartzlamp>, [	[null, <contenttweaker:fused_quartz>, null], 	[<contenttweaker:fused_quartz>, <minecraft:redstone_lamp>, <contenttweaker:fused_quartz>], 	[null, <contenttweaker:fused_quartz>, null]]);
recipes.remove(<randomthings:quartzlamp>);
recipes.addShaped(<gregtech:machine:10120>, [	[<ore:circuitExtreme>, <gregtech:boiler_casing:1>, <ore:circuitExtreme>], 	[<ore:plateLead>, <gregtech:machine:504>, <ore:plateLead>], 	[<ore:screwLead>, <ore:pipeLargeTitanium>, <ore:screwLead>]]);

recipes.addShaped(<gregtech:machine:10121>, [[<gregtech:meta_item_1:32653>, <gregtech:machine:433>, <gregtech:meta_item_1:32653>], 	[<gregtech:machine:433>, <gregtech:machine:504>, <gregtech:machine:433>], 	[<gregtech:meta_item_1:32643>, <ore:frameGtTitanium>, <gregtech:meta_item_1:32643>]]);

assembler.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>*6,<gregtech:frame_stainless_steel>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 30}))
    .outputs(<gregtech:metal_casing:5>*6)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler,[<gregtech:metal_casing:5>*3],[],true);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000,<liquid:methane>*1000,<liquid:oxygen>*500)
    .fluidOutputs(<liquid:water>*1000,<liquid:dimethylether>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000,<liquid:methane>*1000,<liquid:oxygen>*500)
    .fluidOutputs(<liquid:water>*1000,<liquid:dimethylether>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .duration(200)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:butene>*1000)
    .fluidOutputs(<liquid:1_butene>*1000)
    .notConsumable(<contenttweaker:amberlyst_15_ion_exchange_beads>)
    .duration(200)
    .EUt(40)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:butene>*1000)
    .fluidOutputs(<liquid:1_butene>*1000)
    .notConsumable(<contenttweaker:amberlyst_15_ion_exchange_beads>)
    .duration(200)
    .EUt(40)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:dimethylamine_solution>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:dimethylamine>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:dimethylamine_solution>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

spincoater.recipeBuilder()
    .notConsumable(<liquid:dimethylamine_solution>)
    .notConsumable(<gtadditions:ga_dust:32259>)
    .fluidInputs(<liquid:poly_styrene_co_chloromethylstyrene_copolymeris>*1000)
    .outputs(<gtadditions:ga_dust:32258>*3)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

extruder.recipeBuilder()
    .outputs(<contenttweaker:amberlyst_15_ion_exchange_beads>)
    .inputs(<gtadditions:ga_dust:32258>)
    .notConsumable(<gregtech:meta_item_1:32352>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .fluidInputs(<liquid:liquid_oxygen>*1000)
    .fluidOutputs(<liquid:supercooled_oxygen>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:9636>*9],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:12636>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_item_1:10636>],[],true);
Utils.removeRecipeByOutput(fluid_solidifier, [<gregtech:meta_block_compressed_39:12>],[],true);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:ammonium_sulfate>*1000)
    .outputs(<gtadditions:ga_dust:912>*3)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:ammonium_sulfate>*1000)
    .outputs(<gtadditions:ga_dust:912>*3)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydrogen_carbonate>*1000,<liquid:carbon_dioxide>*1000)
    .outputs(<gtadditions:ga_dust:106>*5)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydrogen_carbonate>*1000,<liquid:carbon_dioxide>*1000)
    .outputs(<gtadditions:ga_dust:106>*5)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydroxide>*1000,<liquid:carbon_dioxide>*1000)
    .fluidOutputs(<liquid:potassium_hydrogen_carbonate>*1000)
    .EUt(200)
    .duration(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydroxide>*1000,<liquid:carbon_dioxide>*1000)
    .fluidOutputs(<liquid:potassium_hydrogen_carbonate>*1000)
    .EUt(200)
    .duration(800)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:bromine>*1000,<liquid:1_butene>*1000)
    .fluidOutputs(<liquid:n_butyl_bromide>*1000)
    .duration(100)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:bromine>*1000,<liquid:1_butene>*1000)
    .fluidOutputs(<liquid:n_butyl_bromide>*1000)
    .duration(100)
    .EUt(700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:n_butyl_bromide>*1000)
    .inputs(<gtadditions:ga_dust:112>*2)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000,<liquid:butylithium>*1000)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:n_butyl_bromide>*1000)
    .inputs(<gtadditions:ga_dust:112>*2)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000,<liquid:butylithium>*1000)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .EUt(200)
    .fluidOutputs(<liquid:sulfur_dioxide>*2000)
    .duration(400)
    .inputs(<gtadditions:ga_dust:115>,<gtadditions:ga_dust:270>)
    .outputs(<gtadditions:ga_dust:246>)
    .buildAndRegister();

lcr.recipeBuilder()
    .EUt(200)
    .fluidOutputs(<liquid:sulfur_dioxide>*2000,<liquid:potassium_hydroxide>*1000)
    .duration(400)
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:115>,<gtadditions:ga_dust:270>)
    .outputs(<gtadditions:ga_dust:246>)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:divinylbenzenemixture>*1000)
    .fluidOutputs(<liquid:divinylbenzene>*500,<liquid:1_3_divinylbenzene>*500)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:glacial_acetic_acid>*1000,<liquid:styrene>*1000)
    .circuit(1)
    .fluidOutputs(<liquid:p_methylstyrene>*1000)
    .duration(700)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:glacial_acetic_acid>*1000,<liquid:styrene>*1000)
    .circuit(1)
    .fluidOutputs(<liquid:p_methylstyrene>*1000)
    .duration(700)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:p_methylstyrene>*1000)
    .notConsumable(<gregtech:meta_item_1:2832>)
    .notConsumable(<liquid:bromine>)
    .fluidOutputs(<liquid:isp_bromobenzylbromide>*1000)
    .duration(200)
    .EUt(890)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:isp_bromobenzylbromide>*1000,<liquid:salt_water>*1000,<liquid:styrene>*1000)
    .notConsumable(<gregtech:meta_item_1:2834>)
    .fluidOutputs(<liquid:chloromethylstyrene_mixture>*3000)
    .duration(200)
    .EUt(800)
    .buildAndRegister(); 

lcr.recipeBuilder()
    .fluidInputs(<liquid:p_methylstyrene>*1000)
    .notConsumable(<gregtech:meta_item_1:2832>)
    .notConsumable(<liquid:bromine>)
    .fluidOutputs(<liquid:isp_bromobenzylbromide>*1000)
    .duration(200)
    .EUt(890)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:chloromethylstyrene_mixture>*3000)
    .fluidOutputs(<liquid:salt_water>*1000,<liquid:chloromethylstyrene>*2000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:uranium_diuranate>*1000)
    .outputs(<gtadditions:ga_dust:98>*2)
    .fluidOutputs(<liquid:ammonia_solution>*1000)
    .duration(800)
    .EUt(20)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:ammonia_solution>*2000)
    .fluidOutputs(<liquid:water>*1000,<liquid:ammonia>*1000)
    .duration(800)
    .EUt(20)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<minecraft:gunpowder>,<ore:coal>,<ore:dustBlaze>)
    .outputs(<minecraft:fire_charge>*3)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

uv_light.recipeBuilder()
    .fluidInputs(<liquid:butylithium>*1000)
    .inputs(<gregtech:meta_item_1:12133>)
    .outputs(<contenttweaker:chromium_shadow_mask>)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10127>, [	[<ore:wireGtSingleLead>, <gregtech:machine:1432>, <ore:wireGtSingleLead>], 	[<gregtech:meta_item_1:32641>, <gregtech:machine:51>, <gregtech:meta_item_1:32641>], 	[<ore:circuitGood>, <ore:frameGtInvar>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:10123>, [	[<ore:circuitElite>, <contenttweaker:thermalcasing>, <ore:circuitElite>], 	[<gregtech:meta_item_1:32613>, <ore:frameGtEglinSteel>, <gregtech:meta_item_1:32613>], 	[<ore:circuitElite>, <contenttweaker:thermalcasing>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:10122>, [	[<gregtech:meta_item_1:32611>, <ore:rotorSteel>, <gregtech:meta_item_1:32611>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:502>, <gregtech:meta_item_1:32405>], 	[<ore:circuitAdvanced>, <ore:pipeMediumSteel>, <ore:circuitAdvanced>]]);

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2525>*2)
    .outputs(<gregtech:meta_item_1:2328>)
    .fluidOutputs(<liquid:aluminium_salt_solution>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:formic_acid>*1000,<liquid:hydrogen_fluoride>*1000)
    .fluidOutputs(<liquid:formyl_fluoride>*1000,<liquid:water>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:formic_acid>*1000,<liquid:hydrogen_fluoride>*1000)
    .fluidOutputs(<liquid:formyl_fluoride>*1000,<liquid:water>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:formyl_fluoride>*1000,<liquid:methanol>*1000)
    .fluidOutputs(<liquid:fluorine>*1000,<liquid:methyl_formate>*1000,<liquid:water>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_fluoride>*4000,<liquid:boric_acid>*3000)
    .outputs(<gtadditions:ga_dust:930>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_fluoride>*4000,<liquid:boric_acid>*3000)
    .outputs(<gtadditions:ga_dust:930>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:acetaldehyde>*1000,<liquid:ammonia>*2000)
    .fluidOutputs(<liquid:ethylenediamine>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:acetaldehyde>*1000,<liquid:ammonia>*2000)
    .fluidOutputs(<liquid:ethylenediamine>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:borane_mixture>*4000)
    .fluidOutputs(<liquid:triborane>*1000,<liquid:heptaborane>*1000,<liquid:diborane>*1000)
    .duration(200)
    .outputs(<gtadditions:ga_dust:931>*7)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [],[<liquid:trimetylamine>*1000,<liquid:water>*1000],true);
Utils.removeRecipeByOutput(lcr, [],[<liquid:trimetylamine>*1000,<liquid:water>*1000],true);

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:trimethylgallium_mixture>*1000)
    .fluidOutputs(<liquid:trimethylgallium>*1000)
    .outputs(<gregtech:meta_item_1:2125>*3)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:nuggetRedstoneAlloy>*4,<ore:plateDamascusSteel>*3)
    .outputs(<contenttweaker:servo>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2858>)
    .outputs(<gregtech:meta_item_1:11858>)
    .EUt(1200)
    .duration(200)
    .property("temperature", 5600)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:liquid_cryolite>*1000)
    .inputs(<gregtech:meta_item_1:2524>*2)
    .fluidOutputs(<liquid:cryolite_solution>*1000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

arc_furnace.recipeBuilder()
    .fluidInputs(<liquid:graphitic_anode_mixture>*100)
    .inputs(<gregtech:meta_item_1:14184>)
    .outputs(<contenttweaker:carbon_electrode>)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<contenttweaker:petreulumcoke>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<gregtech:meta_item_1:2357>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<gregtech:meta_item_1:2106>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:cryolite_solution>*1000)
    .notConsumable(<contenttweaker:carbon_electrode>)
    .outputs(<gtadditions:ga_dust:32262>*4)
    .duration(600)
    .EUt(90)
    .buildAndRegister();

lcr.findRecipe(30, [<gregtech:meta_item_1:32766>.withTag({Configuration: 9})], [<liquid:ammonium_chloride>*800,<liquid:platinum_concentrate>*8000]).remove();

cstr_s.recipeBuilder()
    .fluidOutputs(<liquid:platinum_concentrate>*2000)
    .inputs(<gregtech:meta_item_1:2900>*3)
    .outputs(<gregtech:meta_item_1:2898>)
    .fluidInputs(<liquid:aqua_regia>*2000)
    .EUt(200)
    .duration(200)
    .buildAndRegister();

recipes.remove(<gregtech:machine:2535>);
recipes.addShaped(<gregtech:machine:10128>, [	[<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>], 	[<ore:circuitExtreme>, <gregtech:metal_casing:3>, <ore:circuitExtreme>], 	[<ore:circuitExtreme>, <gregtech:machine:503>, <ore:circuitExtreme>]]);

Utils.removeRecipeByOutput(electrolyzer, [<gregtech:meta_item_1:2016>],[<liquid:oxygen>*4000],true);

roasters.recipeBuilder()
    .fluidOutputs(<liquid:oxygen>*4000)
    .outputs(<gregtech:meta_item_1:2016>)
    .inputs(<gregtech:meta_item_1:2848>*4)
    .EUt(400)
    .duration(200)
    .buildAndRegister();

Utils.removeRecipeByOutput(orewasher,[<gregtech:meta_item_1:6154>,<gregtech:meta_item_1:2016>,<gregtech:meta_item_1:2328>],[],true);

orewasher.recipeBuilder()   
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:6154>,<gregtech:meta_item_1:2328>)
    .chancedOutput(<gregtech:meta_item_1:2848>, 3333, 0)
    .duration(200)
    .EUt(300)
    .buildAndRegister();

thermal.findRecipe(60,[<gregtech:meta_item_1:6194>],null).remove();
thermal.findRecipe(60,[<gregtech:meta_item_1:5154>],null).remove();

Utils.removeRecipeByOutput(ebf,[<gregtech:meta_item_1:2016>*2,<gregtech:meta_item_1:2524>*5],[],true);

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:359>*5,<gregtech:meta_item_1:2001>*2)
    .outputs(<gregtech:meta_item_1:2016>*2,<gregtech:meta_item_1:2524>*5)
    .duration(400)
    .EUt(40)
    .buildAndRegister();

Utils.removeRecipeByOutput(fluid_solidifier,[<minecraft:obsidian>],[],true);

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:lava>*1000)
    .notConsumable(<gregtech:meta_item_1:32308>)
    .outputs(<gregtech:meta_item_1:2138>)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2138>)
    .outputs(<minecraft:obsidian>)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_1:898>*5],[<liquid:platinum_concentrate>*1000],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_1:898>*5],[<liquid:platinum_concentrate>*1000],true);

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_1:2898>*5],[<liquid:platinum_concentrate>*9000],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_1:2898>*5],[<liquid:platinum_concentrate>*9000],true);

furnace.remove(<gregtech:meta_item_1:10311>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2311>)
    .outputs(<gregtech:meta_item_1:10311>)
    .duration(2000)
    .EUt(880)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1590>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32610>], 	[<ore:circuitBasic>, <gregtech:meta_item_1:32600>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1591>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 	[<ore:circuitAdvanced>, <gregtech:meta_item_1:32601>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1592>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32612>, <gregtech:machine:503>, <gregtech:meta_item_1:32612>], 	[<ore:circuitGood>, <gregtech:meta_item_1:32602>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1593>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32613>, <gregtech:machine:504>, <gregtech:meta_item_1:32613>], 	[<ore:circuitExtreme>, <gregtech:meta_item_1:32603>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1594>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32614>, <gregtech:machine:505>, <gregtech:meta_item_1:32614>], 	[<ore:circuitElite>, <gregtech:meta_item_1:32604>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1595>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32615>, <gregtech:machine:506>, <gregtech:meta_item_1:32615>], 	[<ore:circuitMaster>, <gregtech:meta_item_1:32606>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1596>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32616>, <gregtech:machine:507>, <gregtech:meta_item_1:32616>], 	[<ore:circuitUltimate>, <gregtech:meta_item_1:32607>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1597>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32617>, <gregtech:machine:508>, <gregtech:meta_item_1:32617>], 	[<ore:circuitSuperconductor>, <gregtech:meta_item_1:32608>, <ore:circuitSuperconductor>]]);

recipes.addShaped(<gregtech:machine:1600>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32610>, <ore:pipeLargeSteel>], 	[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], 	[<gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32600>]]);
recipes.addShaped(<gregtech:machine:1601>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32611>, <ore:pipeLargeSteel>], 	[<ore:circuitAdvanced>, <gregtech:machine:502>, <ore:circuitAdvanced>], 	[<gregtech:meta_item_1:32601>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32601>]]);
recipes.addShaped(<gregtech:machine:1602>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32612>, <ore:pipeLargeSteel>], 	[<ore:circuitGood>, <gregtech:machine:503>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32602>]]);
recipes.addShaped(<gregtech:machine:1603>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32613>, <ore:pipeLargeSteel>], 	[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], 	[<gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32603>]]);
recipes.addShaped(<gregtech:machine:1604>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32614>, <ore:pipeLargeSteel>], 	[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], 	[<gregtech:meta_item_1:32604>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32604>]]);
recipes.addShaped(<gregtech:machine:1605>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32615>, <ore:pipeLargeSteel>], 	[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], 	[<gregtech:meta_item_1:32606>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32606>]]);
recipes.addShaped(<gregtech:machine:1606>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32616>, <ore:pipeLargeSteel>], 	[<ore:circuitUltimate>, <gregtech:machine:507>, <ore:circuitUltimate>], 	[<gregtech:meta_item_1:32607>, <gregtech:meta_item_1:32616>, <gregtech:meta_item_1:32607>]]);
recipes.addShaped(<gregtech:machine:1607>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32617>, <ore:pipeLargeSteel>], 	[<ore:circuitSuperconductor>, <gregtech:machine:508>, <ore:circuitSuperconductor>], 	[<gregtech:meta_item_1:32608>, <gregtech:meta_item_1:32617>, <gregtech:meta_item_1:32608>]]);

recipes.remove(<gtadditions:ga_meta_item:32030>);

Utils.removeRecipeByOutput(chemReactor,[<gtadditions:ga_meta_item:32030>],[],true);
Utils.removeRecipeByOutput(lcr,[<gtadditions:ga_meta_item:32030>],[],true);
Utils.removeRecipeByOutput(chemReactor,[<gtadditions:ga_meta_item:32031>],[],true);

Utils.removeRecipeByOutput(electrolyzer,[<gregtech:meta_item_1:2033>*2],[<liquid:oxygen>*3000],true);

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polyvinyl_acetate_solution>*1000)
    .fluidOutputs(<liquid:polyvinyl_acetate>*144,<liquid:hydrogen_peroxide>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polyvinyl_chloride_solution>*1000)
    .fluidOutputs(<liquid:polyvinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

mixer.recipeBuilder()   
    .fluidInputs(<liquid:salt_water>*1000)
    .inputs(<gregtech:meta_item_1:10013>)
    .fluidOutputs(<liquid:cadmium_rich_solution>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gtadditions:ga_dust:32264>)
    .fluidOutputs(<liquid:high_purity_cadmium_solution>*1000)
    .duration(400)
    .EUt(48)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:styrene>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:styrene_suspension>*2000)
    .duration(400)
    .EUt(48)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:rock_salt_solution>*1000)
    .fluidOutputs(<liquid:hydrogen_chloride>*1000,<liquid:potassium_persulfate_solution>*1000)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2151>)
    .fluidOutputs(<liquid:rock_salt_solution>*1000)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:potassium_persulfate_solution>*1000)
    .outputs(<gtadditions:ga_dust:32265>*7)
    .fluidOutputs(<liquid:water>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:polystyrene_suspension>*1000)
    .outputs(<gregtech:meta_item_1:2395>*3)
    .fluidOutputs(<liquid:water>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:polypropelene_suspension>*1000)
    .outputs(<gregtech:meta_item_1:2582>*5)
    .fluidOutputs(<liquid:chromium_trioxide_solution>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:chromium_trioxide_solution>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:2848>)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polycyclopentene_solution>*1000)
    .fluidOutputs(<liquid:titanium_tetrachloride>*1000)
    .outputs(<gregtech:meta_item_1:2632>*3)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:polyethylene_naphthalate_solution>*1000)
    .fluidOutputs(<liquid:water>*1000,<liquid:polyethylene_naphthalate>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:triton_x100>*1000,<liquid:dimethylacetamide>*1000)
    .fluidOutputs(<liquid:pbi_polymerization_mix>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*1000,<liquid:n_propyl_alcohol>*1000)
    .fluidOutputs(<liquid:n_propyl_chloride>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*1000,<liquid:n_propyl_alcohol>*1000)
    .fluidOutputs(<liquid:n_propyl_chloride>*1000,<liquid:water>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:npropanol>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .fluidOutputs(<liquid:npropanol_base>*1000)
    .duration(340)
    .EUt(80)
    .buildAndRegister();
    
cstr_s.recipeBuilder()
    .fluidInputs(<liquid:n_propyl_chloride>*1000,<liquid:npropanol_base>*1000)
    .notConsumable(<liquid:sulfuric_acid>)
    .fluidOutputs(<liquid:di_n_propyl_ether>*1000,<liquid:propyl_base_liqour>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:propyl_base_liqour>*1000)
    .notConsumable(<gtadditions:ga_dust:32201>)
    .fluidOutputs(<liquid:propene_emulsion>*1000)
    .outputs(<gregtech:meta_item_1:2373>*3)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:propene_emulsion>*1000)
    .fluidOutputs(<liquid:propene>*800,<liquid:ethanol>*100,<liquid:methanol>*100)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10637>);

recipes.addShaped(<gregtech:machine:1403>, [	[<gregtech:meta_item_1:32653>, <ore:circuitExtreme>, <gregtech:meta_item_1:32653>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:504>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32643>, <ore:circuitExtreme>, <gregtech:meta_item_1:32643>]]);
recipes.addShaped(<gregtech:machine:10129>, [	[<ore:circuitGood>, <gregtech:meta_item_1:32611>, <ore:circuitGood>], 	[<gregtech:metal_casing:4>, <gregtech:machine:502>, <gregtech:metal_casing:4>], 	[<ore:circuitGood>, <gregtech:meta_item_1:32641>, <ore:circuitGood>]]);

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:192>*2)
    .fluidOutputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dioxide>*1000)
    .outputs(<gregtech:meta_item_1:2090>)
    .EUt(22)
    .duration(80)
    .buildAndRegister();

