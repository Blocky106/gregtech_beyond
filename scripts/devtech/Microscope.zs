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

var microscope_overlay = OverlayRenderer.newOverlay("machines/microscope_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var microscope = IRecipeMap.recipeMapBuilder("microscope",0,1,0,9,0,1,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1424, "microscope.hv", microscope, microscope_overlay,3);
RegisterMachine.CreateSimpleMachine(1425, "microscope.ev", microscope, microscope_overlay, 4);
RegisterMachine.CreateSimpleMachine(1426, "microscope.iv", microscope, microscope_overlay, 5);







