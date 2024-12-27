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

var spincoater_overlay = OverlayRenderer.newOverlay("machines/spincoater_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var spincoater = IRecipeMap.recipeMapBuilder("spincoater",0,2,0,2,0,2,0,2)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();
    
RegisterMachine.CreateSimpleMachine(1500, "spincoater.lv",  spincoater, spincoater_overlay, 1);
RegisterMachine.CreateSimpleMachine(1501, "spincoater.mv", spincoater, spincoater_overlay, 2);
RegisterMachine.CreateSimpleMachine(1502, "spincoater.hv", spincoater, spincoater_overlay, 3);
RegisterMachine.CreateSimpleMachine(1503, "spincoater.ev", spincoater, spincoater_overlay, 4);
RegisterMachine.CreateSimpleMachine(1504, "spincoater.iv", spincoater, spincoater_overlay, 5);
RegisterMachine.CreateSimpleMachine(1505, "spincoater.luv", spincoater, spincoater_overlay, 6);
