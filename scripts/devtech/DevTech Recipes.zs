import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.FactoryRecipeMap;
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

var vacuum_ejection_chamber = IRecipeMap.recipeMapBuilder("vacuum_ejection_chamber",1,1,1,1,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

var componentassembler = IRecipeMap.recipeMapBuilder("componentassembler", 0,9,0,1,0,3,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("circuit_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

var fisher = IRecipeMap.recipeMapBuilder("fisher",0,2,0,8,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

var fluid_compressor = IRecipeMap.recipeMapBuilder("fluid_compressor",0,0,1,0,1,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

var microscope = IRecipeMap.recipeMapBuilder("microscope",1,1,0,9,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("crystal_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

var roaster = IRecipeMap.recipeMapBuilder("roaster",2,2,2,2,2,2,2,2)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("crystal_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();

var rock_crusher = IRecipeMap.recipeMapBuilder("rock_crusher",1,1,0,3,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

var scanner = IRecipeMap.recipeMapBuilder("scanner",2,2,1,1,0,0,0,0)
	.setOverlaySlots(OverlaySlot.newOverlaySlot(false, false, false, GUITextures.get("hammer_overlay")))
	.setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
	.build();





    
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

vacuum_ejection_chamber.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32049>)
    .outputs(<contenttweaker:monocrystalline_seed_crystal>)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:104>)
    .outputs(<contenttweaker:datadiskassemblyline>)
    .duration(8000)
    .EUt(6000)
    .buildAndRegister();

scanner.recipeBuilder()
    .inputs(<contenttweaker:datadisc>,<gregtech:machine:283>)
    .outputs(<contenttweaker:datadiskdigester>)
    .duration(4000)
    .EUt(6000)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:flintstiffednet>)
    .chancedOutput(<minecraft:fish>, 2000, 500)
    .outputs(<minecraft:fish>,<minecraft:dye>,<minecraft:waterlily>*2,<minecraft:rotten_flesh>)
    .duration(20)
    .EUt(2048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:aluminiumreinforcednet>)
    .chancedOutput(<minecraft:fish>, 4000, 1000)
    .outputs(<minecraft:fish>*2,<minecraft:fish:2>,<minecraft:dye>*2,<minecraft:waterlily>*2,<minecraft:rotten_flesh>*2)
    .duration(20)
    .EUt(2048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:europiumdopednet>)
    .outputs(<minecraft:fish>*3,<minecraft:fish:2>*2,<minecraft:dye>*3,<minecraft:waterlily>*2,<minecraft:fish:3>*2)
    .duration(80)
    .EUt(4048)
    .buildAndRegister();

fisher.recipeBuilder()
    .notConsumable(<contenttweaker:sterilizedeuropiumnet>)
    .chancedOutput(<contenttweaker:zelius_fish>, 200, 50)
    .outputs(<minecraft:fish>*8,<minecraft:fish:2>*5,<minecraft:dye>*4,<minecraft:waterlily>*2,<minecraft:fish:3>)
    .duration(80)
    .EUt(20480)
    .buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:2304>*32,<gregtech:meta_item_1:12304>*8,<gregtech:meta_item_2:19304>*4,<gregtech:cable:5200>*4,<contenttweaker:wrapofnaquadahfinewire>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32606>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:cable:5307>*4,<gregtech:meta_item_1:18840>*16,<gregtech:meta_item_1:32606>,<gregtech:cable:5200>*4,<gregtech:fluid_pipe:1192>*4,<gregtech:meta_item_2:18304>,<gregtech:meta_item_2:21304>*2,<gregtech:meta_item_1:17304>*8,<gregtech:meta_item_1:12304>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32615>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32606>,<gregtech:cable:5307>*2,<gregtech:cable:5200>*2,<gregtech:meta_item_1:12304>*4,<gregtech:meta_item_1:10304>*2,<gregtech:meta_item_2:19304>*4,<gregtech:meta_item_2:26304>,<contenttweaker:wrapofruriditfinewire>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32645>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*1,<ore:circuitElite>*2,<ore:circuitExtreme>*4,<gregtech:meta_item_1:32645>,<gregtech:meta_item_1:32606>*2,<gregtech:meta_item_1:14304>*16,<gregtech:meta_item_1:12304>*4,<gregtech:meta_item_2:19304>*8,<gregtech:meta_item_1:17304>*16)
	.outputs(<gregtech:meta_item_1:32655>)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*1,<gregtech:meta_item_1:32615>*2,<contenttweaker:wrapofhsssfoil>*8)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_2:32705>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*2,<gregtech:cable:1200>*32,<gregtech:meta_item_2:25154>*16,<gtadditions:ga_dust:331>*32,<contenttweaker:wrapofelectrumfoil>*8,<gregtech:meta_item_1:12304>*16,<gregtech:frame_hsss>*4,<gregtech:meta_item_1:32606>*2)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32685>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32685>,<ore:circuitMaster>*2,<gregtech:meta_item_1:32695>,<contenttweaker:wrapofosmiumfinewire>*8,<gregtech:cable:8200>*16,<gregtech:meta_item_1:32725>*4,<gregtech:meta_item_1:12304>*8,<gregtech:frame_hsss>*4)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32675>)
	.duration(400)
	.EUt(8000)	
	.buildAndRegister();

componentassembler.recipeBuilder()
	.inputs(<ore:circuitMaster>*2,<gregtech:cable:1200>*32,<contenttweaker:lasermodule>,<gregtech:meta_item_2:25154>*16,<gregtech:meta_item_1:2760>*32,<contenttweaker:wrapofelectrumfoil>*8,<gregtech:meta_item_1:12304>*16,<gregtech:frame_hsss>*4,<gregtech:meta_item_1:32606>*2)
	.fluidInputs(<liquid:lubricant>*1000,<liquid:soldering_alloy>*500,<liquid:indalloy140>*800)
	.outputs(<gregtech:meta_item_1:32695>)
	.duration(400)
	.EUt(8000)
	.buildAndRegister();