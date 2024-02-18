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

var scanner_overlay = OverlayRenderer.newOverlay("machines/scanner_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var scanner = IRecipeMap.recipeMapBuilder("scanner",0,2,0,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();
    
RegisterMachine.CreateSimpleMachine(1407, "scanner.iv",  scanner, scanner_overlay, 5);
RegisterMachine.CreateSimpleMachine(1408, "scanner.luv", scanner, scanner_overlay, 6);
