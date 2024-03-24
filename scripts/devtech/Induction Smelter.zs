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

var induction_smelter_overlay = OverlayRenderer.newOverlay("machines/induction_smelter_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var induction_smelter = IRecipeMap.recipeMapBuilder("induction_smelter",0,3,0,2,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1343, "induction_smelter", induction_smelter, induction_smelter_overlay,1);

