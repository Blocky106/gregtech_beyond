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

var fluid_compressor_overlay = OverlayRenderer.newOverlay("machines/fluid_compressor_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var fluid_compressor = IRecipeMap.recipeMapBuilder("fluid_compressor",0,1,0,1,0,1,0,1)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();
    
RegisterMachine.CreateSimpleMachine(1610, "fluid_compressor.lv",  fluid_compressor, fluid_compressor_overlay, 1);
RegisterMachine.CreateSimpleMachine(1611, "fluid_compressor.mv",  fluid_compressor, fluid_compressor_overlay, 2);
RegisterMachine.CreateSimpleMachine(1612, "fluid_compressor.hv", fluid_compressor, fluid_compressor_overlay, 3);
RegisterMachine.CreateSimpleMachine(1613, "fluid_compressor.ev", fluid_compressor, fluid_compressor_overlay, 4);
RegisterMachine.CreateSimpleMachine(1614, "fluid_compressor.iv", fluid_compressor, fluid_compressor_overlay, 5);
RegisterMachine.CreateSimpleMachine(1615, "fluid_compressor.luv", fluid_compressor, fluid_compressor_overlay, 6);
RegisterMachine.CreateSimpleMachine(1616, "fluid_compressor.zpm", fluid_compressor, fluid_compressor_overlay, 7);
RegisterMachine.CreateSimpleMachine(1617, "fluid_compressor.uv", fluid_compressor, fluid_compressor_overlay, 8);




