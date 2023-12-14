import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.devtech.OverlayFace;
import mods.devtech.OverlayRenderer;


var induction_smelter = IRecipeMap.recipeMapBuilder("induction_smelter",0,3,0,2,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1343, "induction_smelter", induction_smelter, Overlays.get("alloy_smelter"),0);

induction_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32627>*5)
    .notConsumable(<contenttweaker:woodeningotmold>)
    .outputs(<gregtech:meta_item_1:12152>)
    .duration(10)
    .EUt(1)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1343>, [	[<ore:gearStone>, <ore:craftingFurnace>, <ore:gearStone>], 	[<ore:circuitPrimitive>, <gregtech:machine:500>, <ore:circuitPrimitive>], 	[<ore:plateSteel>, <ore:itemSimpleMachineChassi>, <ore:plateSteel>]]);
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