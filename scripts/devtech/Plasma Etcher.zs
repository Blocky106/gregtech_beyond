
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

var plasma_etcher_overlay = OverlayRenderer.newOverlay("machines/plasma_etcher_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var plasma_etcher = IRecipeMap.recipeMapBuilder("plasma_etcher",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1524, "plasma_etcher.hv",  plasma_etcher, plasma_etcher_overlay, 3);
RegisterMachine.CreateSimpleMachine(1525, "plasma_etcher.ev",  plasma_etcher, plasma_etcher_overlay, 4);
RegisterMachine.CreateSimpleMachine(1526, "plasma_etcher.iv",  plasma_etcher, plasma_etcher_overlay, 5);
RegisterMachine.CreateSimpleMachine(1527, "plasma_etcher.luv",  plasma_etcher, plasma_etcher_overlay, 6);
RegisterMachine.CreateSimpleMachine(1528, "plasma_etcher.zpm",  plasma_etcher, plasma_etcher_overlay, 7);

