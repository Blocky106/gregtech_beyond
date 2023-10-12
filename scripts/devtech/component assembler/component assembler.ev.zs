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


var componentassemblerev = IRecipeMap.recipeMapBuilder("componentassemblerev",0,9,0,1,0,3,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("circuit_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();


RegisterMachine.CreateSimpleMachine(1404, "componentassemblerev",componentassemblerev, Overlays.get("assembler"), 4);
recipes.addShaped(<gregtech:machine:1404>, [	[<gregtech:meta_item_1:32653>, <ore:circuitElite>, <gregtech:meta_item_1:32653>], 	[<ore:cableGtSingleAluminium>, <gregtech:machine:504>, <ore:cableGtSingleAluminium>], 	[<gregtech:meta_item_1:32643>, <ore:circuitElite>, <gregtech:meta_item_1:32643>]]);
