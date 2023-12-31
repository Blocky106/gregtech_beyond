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


var microscope = IRecipeMap.recipeMapBuilder("microscope",0,1,0,9,0,1,0,1)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1424, "microscope.hv", microscope, Overlays.get("microwave"),3);
RegisterMachine.CreateSimpleMachine(1425, "microscope.ev", microscope, Overlays.get("microwave"), 4);
RegisterMachine.CreateSimpleMachine(1426, "microscope.iv", microscope, Overlays.get("microwave"), 5);

microscope.recipeBuilder()
    .inputs(<wildnature:molddirt>)
    .outputs(<gtadditions:ga_dust:32081>)
    .chancedOutput(<gtadditions:ga_dust:32170>, 10, 1)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

microscope.recipeBuilder()
    .fluidInputs(<liquid:dirtywater>*100)
    .chancedOutput(<gtadditions:ga_dust:32167>, 10, 0)
    .fluidOutputs(<liquid:water>*100)
    .duration(120)
    .EUt(20)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1424>, [	[<gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:32602>], 	[<ore:plateSteel>, <gregtech:machine:503>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32642>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32642>]]);
recipes.addShaped(<gregtech:machine:1425>, [	[<gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32693>, <gregtech:meta_item_1:32603>], 	[<ore:plateSteel>, <gregtech:machine:504>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32643>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32643>]]);
recipes.addShaped(<gregtech:machine:1426>, [	[<gregtech:meta_item_1:32604>, <gregtech:meta_item_1:32694>, <gregtech:meta_item_1:32604>], 	[<ore:plateSteel>, <gregtech:machine:505>, <ore:plateSteel>], 	[<gregtech:meta_item_1:32644>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32644>]]);








