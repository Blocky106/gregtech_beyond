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

var scanner = IRecipeMap.recipeMapBuilder("scanner",0,2,0,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();
    
RegisterMachine.CreateSimpleMachine(1407, "scanner.iv",scanner, Overlays.get("assembler"), 5);
RegisterMachine.CreateSimpleMachine(1408, "scanner.luv",scanner, Overlays.get("assembler"), 6);

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