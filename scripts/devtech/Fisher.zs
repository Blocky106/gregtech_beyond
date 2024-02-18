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

var fisher_overlay = OverlayRenderer.newOverlay("machines/fisher_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var fisher = IRecipeMap.recipeMapBuilder("fisher",0,2,0,8,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();
    
RegisterMachine.CreateSimpleMachine(1401, "fisher.iv",  fisher, fisher_overlay, 5);
RegisterMachine.CreateSimpleMachine(1402, "fisher.luv", fisher, fisher_overlay, 6);
RegisterMachine.CreateSimpleMachine(1400, "fisher.ev",  fisher, fisher_overlay, 4);
RegisterMachine.CreateSimpleMachine(1403, "fisher.zpm", fisher, fisher_overlay, 7);

