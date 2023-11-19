import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.SolidMaterial;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.GemMaterial;
import mods.gregtech.material.RoughSolidMaterial;
import mods.devtech.OverlayFace;
import mods.devtech.OverlayRenderer;
import mods.gtadditions.recipe.GARecipeMaps;



var fluid_compressor = IRecipeMap.recipeMapBuilder("fluid_compressor",0,0,1,0,1,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

RegisterMachine.CreateSimpleMachine(1418, "fluid_compressor.lv",fluid_compressor, Overlays.get("extractor"), 1);
RegisterMachine.CreateSimpleMachine(1419, "fluid_compressor.mv",fluid_compressor, Overlays.get("extractor"), 2);
RegisterMachine.CreateSimpleMachine(1420, "fluid_compressor.hv",fluid_compressor, Overlays.get("extractor"), 3);