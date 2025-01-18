
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

var dryer_overlay = OverlayRenderer.newOverlay("machines/dryer_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var dryer = IRecipeMap.recipeMapBuilder("dryer",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();


RegisterMachine.CreateSimpleMachine(1580, "dryer.lv",  dryer, dryer_overlay, 1);
RegisterMachine.CreateSimpleMachine(1581, "dryer.mv",  dryer, dryer_overlay, 2);
RegisterMachine.CreateSimpleMachine(1582, "dryer.hv",  dryer, dryer_overlay, 3);
RegisterMachine.CreateSimpleMachine(1583, "dryer.ev",  dryer, dryer_overlay, 4);
RegisterMachine.CreateSimpleMachine(1584, "dryer.iv",  dryer, dryer_overlay, 5);
RegisterMachine.CreateSimpleMachine(1585, "dryer.luv",  dryer, dryer_overlay, 6);
RegisterMachine.CreateSimpleMachine(1586, "dryer.zpm",  dryer, dryer_overlay, 7);
RegisterMachine.CreateSimpleMachine(1587, "dryer.uv",  dryer, dryer_overlay, 8);

