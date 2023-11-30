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


var roasters = IRecipeMap.recipeMapBuilder("roasters",0,2,0,2,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1431, "roaster.lv", roasters, Overlays.get("forge_hammer"),1);
RegisterMachine.CreateSimpleMachine(1432, "roaster.mv", roasters, Overlays.get("forge_hammer"), 2);
RegisterMachine.CreateSimpleMachine(1433, "roaster.hv", roasters, Overlays.get("forge_hammer"), 3);

