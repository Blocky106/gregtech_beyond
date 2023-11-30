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

var rock_crusher = IRecipeMap.recipeMapBuilder("rock_crusher",0,1,0,3,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1409, "rock_crusher",rock_crusher, Overlays.get("forge_hammer"), 6);

rock_crusher.recipeBuilder()
    .inputs(<ore:stoneGranite>)
    .outputs(<gregtech:meta_item_1:1065>*2)
    .chancedOutput(<nuclearcraft:gem_dust:8>, 4000, 200)
    .chancedOutput(<nuclearcraft:gem_dust:1>, 6000, 400)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();
    
rock_crusher.recipeBuilder()
    .inputs(<ore:stoneDiorite>)
    .outputs(<nuclearcraft:gem_dust:9>)
    .chancedOutput(<gregicalityoreaddon:gaoe_oredict_item:2030>, 1500, 0)
    .chancedOutput(<gregtech:meta_item_1:2703>, 8800, 600)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();
    
rock_crusher.recipeBuilder()
    .inputs(<ore:stoneAndesite>)
    .outputs(<nuclearcraft:compound:11>)
    .chancedOutput(<gregicalityoreaddon:gaoe_oredict_item:2008>, 4800, 290)
    .chancedOutput(<gtadditions:ga_dust:277>, 6200, 490)
    .duration(3200)
    .EUt(20000)
    .buildAndRegister();


