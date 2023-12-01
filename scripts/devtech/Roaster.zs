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


var roasters = IRecipeMap.recipeMapBuilder("roasters",0,2,0,4,0,2,0,2)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();
    
RegisterMachine.CreateSimpleMachine(1431, "roaster.lv", roasters, Overlays.get("forge_hammer"),1);
RegisterMachine.CreateSimpleMachine(1432, "roaster.mv", roasters, Overlays.get("forge_hammer"), 2);
RegisterMachine.CreateSimpleMachine(1433, "roaster.hv", roasters, Overlays.get("forge_hammer"), 3);



roasters.recipeBuilder()
    .fluidOutputs(<liquid:diketene>*1000,<liquid:methane>*2000)  
    .fluidInputs(<liquid:acetone>*2000,<liquid:carbon_sulfide>*500)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32085>)
    .outputs(<contenttweaker:crackingcatalyst>)
    .duration(50)
    .EUt(120)
    .buildAndRegister();

roasters.recipeBuilder()  
    .inputs(<ore:dustCalcite>,<ore:crushedBastnasite>)
    .outputs(<gtadditions:ga_dust:32083>)
    .EUt(2000)
    .duration(500)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:wetbastnasiterareearthconcentrate>*1000)
    .fluidOutputs(<liquid:oxygen>*500)
    .outputs(<gtadditions:ga_dust:32084>*2)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32077>*2,<gregtech:meta_item_1:2011>)
    .outputs(<gregtech:meta_item_1:2027>,<gtadditions:ga_dust:32077>,<gregtech:meta_item_1:2155>,<gtadditions:ga_dust:32077>)
    .EUt(2800)
    .duration(400)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:192>*2)
    .fluidOutputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dioxide>*1000)
    .EUt(22)
    .duration(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1431>, [	[<gregtech:meta_item_1:32600>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32600>], 	[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], 	[<gregtech:meta_item_1:32640>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32640>]]);
recipes.addShaped(<gregtech:machine:1432>, [	[<gregtech:meta_item_1:32601>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32601>], 	[<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32641>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32641>]]);
recipes.addShaped(<gregtech:machine:1433>, [	[<gregtech:meta_item_1:32602>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32602>], 	[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], 	[<gregtech:meta_item_1:32642>, <ore:cableGtSingleTin>, <gregtech:meta_item_1:32642>]]);




