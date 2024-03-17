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

var electron_beam_overlay = OverlayRenderer.newOverlay("machines/electron_beam_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var electron_beam = IRecipeMap.recipeMapBuilder("electron_beam",0,3,0,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

RegisterMachine.CreateSimpleMachine(1450, "electron_beam.lv", electron_beam, electron_beam_overlay, 1);
RegisterMachine.CreateSimpleMachine(1451, "electron_beam.mv", electron_beam, electron_beam_overlay, 2);
RegisterMachine.CreateSimpleMachine(1452, "electron_beam.hv", electron_beam, electron_beam_overlay, 3);
RegisterMachine.CreateSimpleMachine(1453, "electron_beam.ev", electron_beam, electron_beam_overlay, 4);
RegisterMachine.CreateSimpleMachine(1454, "electron_beam.iv", electron_beam, electron_beam_overlay, 5);