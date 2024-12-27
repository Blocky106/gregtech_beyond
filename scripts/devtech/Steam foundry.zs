
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

var steam_foundry_overlay = OverlayRenderer.newOverlay("machines/steam_foundry_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var steam_foundry = IRecipeMap.recipeMapBuilder("steam_foundry",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1478, "steam_foundry",  steam_foundry, steam_foundry_overlay, 0);

