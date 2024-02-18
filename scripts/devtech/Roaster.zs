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

var roaster_overlay = OverlayRenderer.newOverlay("machines/roaster_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var roasters = IRecipeMap.recipeMapBuilder("roasters",0,2,0,4,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1431, "roaster.lv",  roasters, roaster_overlay,1);
RegisterMachine.CreateSimpleMachine(1432, "roaster.mv",  roasters, roaster_overlay, 2);
RegisterMachine.CreateSimpleMachine(1433, "roaster.hv",  roasters, roaster_overlay, 3);
RegisterMachine.CreateSimpleMachine(1435, "roaster.ev",  roasters, roaster_overlay, 4);
RegisterMachine.CreateSimpleMachine(1436, "roaster.iv",  roasters, roaster_overlay, 5);
RegisterMachine.CreateSimpleMachine(1437, "roaster.luv", roasters, roaster_overlay, 6);
RegisterMachine.CreateSimpleMachine(1438, "roaster.zpm", roasters, roaster_overlay, 7);
RegisterMachine.CreateSimpleMachine(1439, "roaster.uv",  roasters, roaster_overlay, 8);


