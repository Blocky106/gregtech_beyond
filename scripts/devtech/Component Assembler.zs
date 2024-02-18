#loader gregtech
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


var componentassembler_overlay = OverlayRenderer.newOverlay("machines/componentassembler_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var componentassembler = IRecipeMap.recipeMapBuilder("componentassembler", 0,9,0,1,0,3,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("circuit_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();


RegisterMachine.CreateSimpleMachine(1404, "componentassembler.iv" , componentassembler, componentassembler_overlay, 5);
RegisterMachine.CreateSimpleMachine(1405, "componentassembler.luv", componentassembler, componentassembler_overlay, 6);
RegisterMachine.CreateSimpleMachine(1406, "componentassembler.zpm", componentassembler, componentassembler_overlay, 7);

