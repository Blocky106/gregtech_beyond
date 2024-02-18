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

var beam_shrinking_device_overlay = OverlayRenderer.newOverlay("machines/beam_shrinking_device_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var beam_shrinking_device = IRecipeMap.recipeMapBuilder("beam_shrinking_device",0,2,0,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1434, "beam_shrinking_device", beam_shrinking_device, beam_shrinking_device_overlay,8);

