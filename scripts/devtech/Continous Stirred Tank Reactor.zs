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


var cstr_s_overlay = OverlayRenderer.newOverlay("machines/cstr_s_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var cstr_s = IRecipeMap.recipeMapBuilder("cstr_s", 0,2,0,3,0,1,0,2)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("circuit_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();


RegisterMachine.CreateSimpleMachine(1590, "cstr_s.lv" , cstr_s, cstr_s_overlay, 1);
RegisterMachine.CreateSimpleMachine(1591, "cstr_s.mv", cstr_s, cstr_s_overlay, 2);
RegisterMachine.CreateSimpleMachine(1592, "cstr_s.hv", cstr_s, cstr_s_overlay, 3);
RegisterMachine.CreateSimpleMachine(1593, "cstr_s.ev" , cstr_s, cstr_s_overlay, 4);
RegisterMachine.CreateSimpleMachine(1594, "cstr_s.iv", cstr_s, cstr_s_overlay, 5);
RegisterMachine.CreateSimpleMachine(1595, "cstr_s.luv", cstr_s, cstr_s_overlay, 6);
RegisterMachine.CreateSimpleMachine(1596, "cstr_s.zpm", cstr_s, cstr_s_overlay, 7);
RegisterMachine.CreateSimpleMachine(1597, "cstr_s.zpm", cstr_s, cstr_s_overlay, 8);


