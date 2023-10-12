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


var scanner = IRecipeMap.recipeMapBuilder("scanner",2,2,1,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

var scannerluv = IRecipeMap.recipeMapBuilder("scannerluv",2,2,1,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

var scannerev = IRecipeMap.recipeMapBuilder("scannerev",2,2,1,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1407, "scanner",scanner, Overlays.get("assembler"), 5);
RegisterMachine.CreateSimpleMachine(1408, "scannerluv",scannerluv, Overlays.get("assembler"), 6);
RegisterMachine.CreateSimpleMachine(1411, "scannerev",scannerev, Overlays.get("assembler"), 4);

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:104>)
    .outputs(<contenttweaker:datadiskassemblyline>)
    .duration(8000)
    .EUt(6000)
    .buildAndRegister();

scannerev.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:283>)
    .outputs(<contenttweaker:datadiskdigester>)
    .duration(8000)
    .EUt(2000)
    .buildAndRegister();

scannerluv.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:104>)
    .outputs(<contenttweaker:datadiskassemblyline>)
    .duration(4000)
    .EUt(30000)
    .buildAndRegister();

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:283>)
    .outputs(<contenttweaker:datadiskdigester>)
    .duration(4000)
    .EUt(6000)
    .buildAndRegister();

scannerluv.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:283>)
    .outputs(<contenttweaker:datadiskdigester>)
    .duration(2000)
    .EUt(30000)
    .buildAndRegister();







    