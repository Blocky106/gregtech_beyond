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


var induction_smelter = IRecipeMap.recipeMapBuilder("induction_smelter",0,2,0,2,0,0,0,0)
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

