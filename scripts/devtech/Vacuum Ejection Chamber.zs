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

var vacuum_ejection_chamber_overlay = OverlayRenderer.newOverlay("machines/vacuum_ejection_chamber_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var vacuum_ejection_chamber = IRecipeMap.recipeMapBuilder("vacuum_ejection_chamber",0,1,0,1,0,2,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();


RegisterMachine.CreateSimpleMachine(1416, "vacuum_ejection_chamber.lv",vacuum_ejection_chamber, vacuum_ejection_chamber_overlay, 1);
RegisterMachine.CreateSimpleMachine(1417, "vacuum_ejection_chamber.mv",vacuum_ejection_chamber, vacuum_ejection_chamber_overlay, 2);
RegisterMachine.CreateSimpleMachine(1418, "vacuum_ejection_chamber.hv",vacuum_ejection_chamber, vacuum_ejection_chamber_overlay, 3);


