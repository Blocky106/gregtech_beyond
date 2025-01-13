
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

var engraving_unit_s_overlay = OverlayRenderer.newOverlay("machines/engraving_unit_s_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var engraving_unit_s = IRecipeMap.recipeMapBuilder("engraving_unit_s",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();


RegisterMachine.CreateSimpleMachine(1540, "engraving_unit_s.lv",  engraving_unit_s, engraving_unit_s_overlay, 1);
RegisterMachine.CreateSimpleMachine(1541, "engraving_unit_s.mv",  engraving_unit_s, engraving_unit_s_overlay, 2);
RegisterMachine.CreateSimpleMachine(1542, "engraving_unit_s.hv",  engraving_unit_s, engraving_unit_s_overlay, 3);
RegisterMachine.CreateSimpleMachine(1543, "engraving_unit_s.ev",  engraving_unit_s, engraving_unit_s_overlay, 4);
RegisterMachine.CreateSimpleMachine(1544, "engraving_unit_s.iv",  engraving_unit_s, engraving_unit_s_overlay, 5);
RegisterMachine.CreateSimpleMachine(1545, "engraving_unit_s.luv",  engraving_unit_s, engraving_unit_s_overlay, 6);
RegisterMachine.CreateSimpleMachine(1546, "engraving_unit_s.zpm",  engraving_unit_s, engraving_unit_s_overlay, 7);
RegisterMachine.CreateSimpleMachine(1547, "engraving_unit_s.zpm",  engraving_unit_s, engraving_unit_s_overlay, 8);
RegisterMachine.CreateSimpleMachine(1548, "engraving_unit_s.zpm",  engraving_unit_s, engraving_unit_s_overlay, 9);

