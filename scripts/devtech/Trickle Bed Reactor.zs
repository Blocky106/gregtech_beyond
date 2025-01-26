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


var tbr_overlay = OverlayRenderer.newOverlay("machines/tbr_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var tbr = IRecipeMap.recipeMapBuilder("tbr", 0,2,0,3,0,1,0,2)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("circuit_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();


RegisterMachine.CreateSimpleMachine(1600, "tbr.lv" , tbr, tbr_overlay, 1);
RegisterMachine.CreateSimpleMachine(1601, "tbr.mv", tbr, tbr_overlay, 2);
RegisterMachine.CreateSimpleMachine(1602, "tbr.hv", tbr, tbr_overlay, 3);
RegisterMachine.CreateSimpleMachine(1603, "tbr.ev" , tbr, tbr_overlay, 4);
RegisterMachine.CreateSimpleMachine(1604, "tbr.iv", tbr, tbr_overlay, 5);
RegisterMachine.CreateSimpleMachine(1605, "tbr.luv", tbr, tbr_overlay, 6);
RegisterMachine.CreateSimpleMachine(1606, "tbr.zpm", tbr, tbr_overlay, 7);
RegisterMachine.CreateSimpleMachine(1607, "tbr.zpm", tbr, tbr_overlay, 8);


