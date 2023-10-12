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


var water_collector = IRecipeMap.recipeMapBuilder("water_collector",1,1,0,0,0,0,1,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1410, "water_collector",water_collector, Overlays.get("extractor"), 1);

water_collector.recipeBuilder()
    .notConsumable(<forestry:crafting_material:3>)
    .fluidOutputs(<liquid:solardistilledwater>*12)
    .duration(6)
    .EUt(2)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1410>, [ 	[<ore:cableGtSingleTin>, <minecraft:bucket>, <ore:cableGtSingleTin>],  	[<gregtech:meta_item_1:32600>, <gregtech:machine:501>, <gregtech:meta_item_1:32600>],  	[<ore:circuitBasic>, <gregtech:meta_item_1:32610>, <ore:circuitBasic>] ]);
