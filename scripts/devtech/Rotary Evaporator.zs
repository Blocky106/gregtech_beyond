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

var rotary_evaporator_overlay = OverlayRenderer.newOverlay("machines/rotary_evaporator_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var rotary_evaporator = IRecipeMap.recipeMapBuilder("rotary_evaporator",0,1,0,2,0,2,0,3)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1440, "rotary_evaporator.hv", rotary_evaporator, rotary_evaporator_overlay, 3);
RegisterMachine.CreateSimpleMachine(1441, "rotary_evaporator.ev", rotary_evaporator, rotary_evaporator_overlay, 4);
RegisterMachine.CreateSimpleMachine(1442, "rotary_evaporator.iv", rotary_evaporator, rotary_evaporator_overlay, 5);
