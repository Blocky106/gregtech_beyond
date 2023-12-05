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


var beam_shrinking_device = IRecipeMap.recipeMapBuilder("beam_shrinking_device",0,2,0,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1434, "beam_shrinking_device", beam_shrinking_device, Overlays.get("microwave"),8);

beam_shrinking_device.recipeBuilder()
    .inputs(<contenttweaker:zeptopicw>)
    .outputs(<contenttweaker:yoctopicw>)
    .duration(200)
    .EUt(50000)
    .buildAndRegister();