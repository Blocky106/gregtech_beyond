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

var ion_exchange_unit_overlay = OverlayRenderer.newOverlay("machines/ion_exchange_unit_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var ion_exchange_unit = IRecipeMap.recipeMapBuilder("ion_exchange_unit",0,1,0,1,0,0,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1620, "ion_exchange_unit.lv",  ion_exchange_unit, ion_exchange_unit_overlay, 1);   
RegisterMachine.CreateSimpleMachine(1621, "ion_exchange_unit.mv",  ion_exchange_unit, ion_exchange_unit_overlay, 2);
RegisterMachine.CreateSimpleMachine(1622, "ion_exchange_unit.hv",  ion_exchange_unit, ion_exchange_unit_overlay, 3);
RegisterMachine.CreateSimpleMachine(1623, "ion_exchange_unit.ev",  ion_exchange_unit, ion_exchange_unit_overlay, 4);
RegisterMachine.CreateSimpleMachine(1624, "ion_exchange_unit.iv",  ion_exchange_unit, ion_exchange_unit_overlay, 5);
RegisterMachine.CreateSimpleMachine(1625, "ion_exchange_unit.luv",  ion_exchange_unit, ion_exchange_unit_overlay, 6);
RegisterMachine.CreateSimpleMachine(1626, "ion_exchange_unit.zpm",  ion_exchange_unit, ion_exchange_unit_overlay, 7);
RegisterMachine.CreateSimpleMachine(1627, "ion_exchange_unit.uv",  ion_exchange_unit, ion_exchange_unit_overlay, 8);