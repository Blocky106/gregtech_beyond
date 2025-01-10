
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

var uv_light_overlay = OverlayRenderer.newOverlay("machines/uv_light_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var uv_light = IRecipeMap.recipeMapBuilder("uv_light",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1512, "uv_light.mv",  uv_light, uv_light_overlay, 2);
RegisterMachine.CreateSimpleMachine(1513, "uv_light.hv",  uv_light, uv_light_overlay, 3);
RegisterMachine.CreateSimpleMachine(1514, "uv_light.ev",  uv_light, uv_light_overlay, 4);
RegisterMachine.CreateSimpleMachine(1515, "uv_light.iv",  uv_light, uv_light_overlay, 5);
RegisterMachine.CreateSimpleMachine(1516, "uv_light.luv",  uv_light, uv_light_overlay, 6);

