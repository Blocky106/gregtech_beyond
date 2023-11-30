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