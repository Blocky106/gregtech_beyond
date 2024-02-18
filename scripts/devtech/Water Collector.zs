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

var water_collector_overlay = OverlayRenderer.newOverlay("machines/water_collector_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var water_collector = IRecipeMap.recipeMapBuilder("water_collector",1,1,0,0,0,0,1,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1410, "water_collector", water_collector, water_collector_overlay, 1);

