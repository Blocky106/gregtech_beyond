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


var inscriber = IRecipeMap.recipeMapBuilder("inscriber",0,3,0,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

RegisterMachine.CreateSimpleMachine(1421, "inscriber.mv",inscriber, Overlays.get("polarizer"), 2);
RegisterMachine.CreateSimpleMachine(1422, "inscriber.hv",inscriber, Overlays.get("polarizer"), 3);
RegisterMachine.CreateSimpleMachine(1423, "inscriber.ev",inscriber, Overlays.get("polarizer"), 4);

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:19>)
    .inputs(<gregtech:meta_item_1:12061>)
    .outputs(<appliedenergistics2:material:20>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:15>)
    .inputs(<gregtech:meta_item_1:12026>)
    .outputs(<appliedenergistics2:material:18>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:14>)
    .inputs(<gregtech:meta_item_1:12111>)
    .outputs(<appliedenergistics2:material:17>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<appliedenergistics2:material:10>)
    .outputs(<appliedenergistics2:material:16>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:16>)
    .outputs(<appliedenergistics2:material:23>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:17>)
    .outputs(<appliedenergistics2:material:24>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<appliedenergistics2:material:18>)
    .outputs(<appliedenergistics2:material:22>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:14>)
    .inputs(<gregtech:meta_item_1:12061>)
    .outputs(<contenttweaker:osmiridiumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:12072>)
    .inputs(<gregtech:meta_item_1:12026>)
    .outputs(<contenttweaker:titaniumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:12311>)
    .inputs(<gregtech:meta_item_1:12111>)
    .outputs(<contenttweaker:tritaniumcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<gregtech:meta_item_1:12074>)
    .outputs(<contenttweaker:tungstencircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .notConsumable(<appliedenergistics2:material:13>)
    .inputs(<gregtech:meta_item_1:12302>)
    .outputs(<contenttweaker:hssgcircuit>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

inscriber.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>,<minecraft:redstone>,<contenttweaker:titaniumcircuit>)
    .outputs(<contenttweaker:manatitaniumprocesser>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1421>, [
	[<ore:screwSteel>, <gregtech:meta_item_1:32681>, <ore:screwSteel>], 
	[<gregtech:meta_item_1:32651>, <gregtech:machine:502>, <gregtech:meta_item_1:32651>], 
	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]
]);

recipes.addShaped(<gregtech:machine:1422>, [
	[<ore:screwSteel>, <gregtech:meta_item_1:32682>, <ore:screwSteel>], 
	[<gregtech:meta_item_1:32652>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>], 
	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]
]);

recipes.addShaped(<gregtech:machine:1423>, [
	[<ore:screwSteel>, <gregtech:meta_item_1:32683>, <ore:screwSteel>], 
	[<gregtech:meta_item_1:32653>, <gregtech:machine:504>, <gregtech:meta_item_1:32653>], 
	[<ore:plateSteel>, <appliedenergistics2:inscriber>, <ore:plateSteel>]
]);