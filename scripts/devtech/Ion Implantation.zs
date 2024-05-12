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

var ion_implantation_overlay = OverlayRenderer.newOverlay("machines/ion_implantation_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);

var ion_implanter = IRecipeMap.recipeMapBuilder("ion_implanter",0,4,0,1,0,1,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1460, "ion_implanter.lv", ion_implanter, ion_implantation_overlay,1);
RegisterMachine.CreateSimpleMachine(1461, "ion_implanter.mv", ion_implanter, ion_implantation_overlay,2);
RegisterMachine.CreateSimpleMachine(1462, "ion_implanter.hv", ion_implanter, ion_implantation_overlay,3);
RegisterMachine.CreateSimpleMachine(1463, "ion_implanter.ev", ion_implanter, ion_implantation_overlay,4);
RegisterMachine.CreateSimpleMachine(1464, "ion_implanter.iv", ion_implanter, ion_implantation_overlay,5);
RegisterMachine.CreateSimpleMachine(1465, "ion_implanter.luv", ion_implanter, ion_implantation_overlay,6);

