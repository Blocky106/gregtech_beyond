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

var cvd_unit_overlay = OverlayRenderer.newOverlay("machines/cvd_unit_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var cvd_unit_s = IRecipeMap.recipeMapBuilder("cvd_unit_s",0,3,0,1,0,2,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1470, "cvd_unit_s.lv", cvd_unit_s, cvd_unit_overlay,1);
RegisterMachine.CreateSimpleMachine(1471, "cvd_unit_s.mv", cvd_unit_s, cvd_unit_overlay,2);
RegisterMachine.CreateSimpleMachine(1472, "cvd_unit_s.hv", cvd_unit_s, cvd_unit_overlay,3);
RegisterMachine.CreateSimpleMachine(1473, "cvd_unit_s.ev", cvd_unit_s, cvd_unit_overlay,4);
RegisterMachine.CreateSimpleMachine(1474, "cvd_unit_s.iv", cvd_unit_s, cvd_unit_overlay,5);
RegisterMachine.CreateSimpleMachine(1475, "cvd_unit_s.luv", cvd_unit_s, cvd_unit_overlay,6);
RegisterMachine.CreateSimpleMachine(1476, "cvd_unit_s.zpm", cvd_unit_s, cvd_unit_overlay,7);
RegisterMachine.CreateSimpleMachine(1477, "cvd_unit_s.uv", cvd_unit_s, cvd_unit_overlay,8);

