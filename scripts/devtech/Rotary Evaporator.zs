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

var rotary_evaporator = IRecipeMap.recipeMapBuilder("rotary_evaporator",0,1,0,3,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("macerator_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1435, "rotary_evaporator.hv",rotary_evaporator, Overlays.get("forge_hammer"), 3);
RegisterMachine.CreateSimpleMachine(1436, "rotary_evaporator.ev",rotary_evaporator, Overlays.get("forge_hammer"), 4);

