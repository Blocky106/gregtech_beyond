
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

var automatic_wire_bonder_overlay = OverlayRenderer.newOverlay("machines/automatic_wire_bonder_overlay", OverlayFace.FRONT, OverlayFace.SIDE,  OverlayFace.TOP, OverlayFace.BACK, OverlayFace.BOTTOM);

var automatic_wire_bonder = IRecipeMap.recipeMapBuilder("automatic_wire_bonder",0,3,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();


RegisterMachine.CreateSimpleMachine(1560, "automatic_wire_bonder.lv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 1);
RegisterMachine.CreateSimpleMachine(1561, "automatic_wire_bonder.mv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 2);
RegisterMachine.CreateSimpleMachine(1562, "automatic_wire_bonder.hv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 3);
RegisterMachine.CreateSimpleMachine(1563, "automatic_wire_bonder.ev",  automatic_wire_bonder, automatic_wire_bonder_overlay, 4);
RegisterMachine.CreateSimpleMachine(1564, "automatic_wire_bonder.iv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 5);
RegisterMachine.CreateSimpleMachine(1565, "automatic_wire_bonder.luv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 6);
RegisterMachine.CreateSimpleMachine(1566, "automatic_wire_bonder.zpm",  automatic_wire_bonder, automatic_wire_bonder_overlay, 7);
RegisterMachine.CreateSimpleMachine(1567, "automatic_wire_bonder.uv",  automatic_wire_bonder, automatic_wire_bonder_overlay, 8);

