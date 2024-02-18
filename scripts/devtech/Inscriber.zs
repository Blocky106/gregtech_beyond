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

var inscriber_overlay = OverlayRenderer.newOverlay("machines/inscriber_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var inscriber = IRecipeMap.recipeMapBuilder("inscriber",0,3,0,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

RegisterMachine.CreateSimpleMachine(1421, "inscriber.mv", inscriber, inscriber_overlay, 2);
RegisterMachine.CreateSimpleMachine(1422, "inscriber.hv", inscriber, inscriber_overlay, 3);
RegisterMachine.CreateSimpleMachine(1423, "inscriber.ev", inscriber, inscriber_overlay, 4);

