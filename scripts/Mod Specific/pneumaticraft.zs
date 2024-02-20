import mods.pneumaticcraft.assembly;
import mods.pneumaticcraft.heatframecooling;
import mods.pneumaticcraft.refinery;
import mods.pneumaticcraft.thermopneumaticprocessingplant;
import mods.pneumaticcraft.explosioncrafting;
import mods.pneumaticcraft.liquidfuel;



mods.pneumaticcraft.heatframecooling.removeAllRecipes();
mods.pneumaticcraft.refinery.removeAllRecipes();
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();
mods.pneumaticcraft.explosioncrafting.removeAllRecipes();
mods.pneumaticcraft.liquidfuel.removeAllFuels();




recipes.addShaped(<pneumaticcraft:uv_light_box>, [	[<ore:circuitUmv>, <gregtech:meta_item_1:32697>, <ore:circuitUmv>], 	[<pneumaticcraft:capacitor>, <gregtech:meta_item_1:32677>, <pneumaticcraft:capacitor>], 	[<ore:blockIronCompressed>, <gregtech:meta_item_1:32687>, <ore:blockIronCompressed>]]);
recipes.addShaped(<pneumaticcraft:turbine_rotor>, [	[null, <pneumaticcraft:turbine_blade>, null], 	[null, null, null], 	[<pneumaticcraft:turbine_blade>, null, <pneumaticcraft:turbine_blade>]]);
recipes.addShaped(<pneumaticcraft:pressure_chamber_glass>, [	[<gtadditions:ga_transparent_casing:6>, <gtadditions:ga_transparent_casing:6>, <gtadditions:ga_transparent_casing:6>], 	[<gtadditions:ga_transparent_casing:6>, <pneumaticcraft:pressure_chamber_wall>, <gtadditions:ga_transparent_casing:6>], 	[<gtadditions:ga_transparent_casing:6>, <gtadditions:ga_transparent_casing:6>, <gtadditions:ga_transparent_casing:6>]]);
recipes.addShaped(<pneumaticcraft:advanced_pressure_tube>, [	[<ore:boltMendelevium>, <ore:plateSeaborgium>, <ore:boltMendelevium>], 	[<ore:plateUhvSuperconductorBase>, <pneumaticcraft:pressure_tube>, <ore:plateUhvSuperconductorBase>], 	[<ore:boltMendelevium>, <ore:plateSeaborgium>, <ore:boltMendelevium>]]);
recipes.addShaped(<pneumaticcraft:pressure_chamber_valve>, [	[null, <ore:wireFineCarbonNanotubes>, null], 	[<pneumaticcraft:pressure_chamber_wall>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_chamber_wall>], 	[null, <ore:wireFineCarbonNanotubes>, null]]);
recipes.addShaped(<pneumaticcraft:minigun>, [	[<ore:plasticBlack>, <pneumaticcraft:cannon_barrel>, <pneumaticcraft:cannon_barrel>], 	[<pneumaticcraft:transistor>, <gtadditions:ga_meta_item:32356>, null], 	[<gtadditions:ga_meta_item:32362>, null, null]]);
recipes.addShaped(<pneumaticcraft:advanced_air_compressor>, [	[<pneumaticcraft:advanced_pressure_tube>, <pneumaticcraft:advanced_pressure_tube>, <pneumaticcraft:advanced_pressure_tube>], 	[<gtadditions:ga_meta_item:32363>, <pneumaticcraft:air_compressor>, <gtadditions:ga_meta_item:32363>], 	[<ore:blockIronCompressed>, <ore:plasticBlack>, <ore:blockIronCompressed>]]);
recipes.addShaped(<pneumaticcraft:electrostatic_compressor>, [ [<enderio:block_dark_iron_bars>, <pneumaticcraft:turbine_rotor>, <enderio:block_dark_iron_bars>], 	[<gtadditions:ga_meta_item:32373>, <pneumaticcraft:advanced_air_compressor>, <gtadditions:ga_meta_item:32373>], 	[<ore:blockIronCompressed>, <pneumaticcraft:advanced_pressure_tube>, <ore:blockIronCompressed>]]);
recipes.addShaped(<pneumaticcraft:network_component:5>, [[<pneumaticcraft:transistor>,<pneumaticcraft:transistor>,<pneumaticcraft:transistor>],[<pneumaticcraft:transistor>,<pneumaticcraft:transistor>,<pneumaticcraft:transistor>],[<pneumaticcraft:transistor>,<pneumaticcraft:transistor>,<pneumaticcraft:transistor>]]);
mods.jei.JEI.removeAndHide(<pneumaticcraft:flux_compressor>);
recipes.addShaped(<pneumaticcraft:ingot_iron_compressed>, [	[<contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>], [<contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>], 	[<contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>, <contenttweaker:compressedironnugget>]]);


mods.pneumaticcraft.assembly.removeLaserRecipe(<pneumaticcraft:unassembled_pcb>);
mods.pneumaticcraft.assembly.removeDrillRecipe(<pneumaticcraft:pressure_chamber_valve>*20);
mods.pneumaticcraft.assembly.removeDrillLaserRecipe(<pneumaticcraft:advanced_pressure_tube>*8);
mods.pneumaticcraft.assembly.removeDrillRecipe(<minecraft:dye:1>*5);
mods.pneumaticcraft.assembly.removeLaserRecipe(<pneumaticcraft:advanced_pressure_tube>*8);
mods.pneumaticcraft.assembly.removeLaserRecipe(<pneumaticcraft:aphorism_tile>*4);

mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:turbine_blade>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<minecraft:diamond>]);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);

mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32601>*8,<pneumaticcraft:ingot_iron_compressed>*4] , 2.0, [<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32534>*4,<pneumaticcraft:ingot_iron_compressed>*4] , 3.0, [<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32545>*2,<pneumaticcraft:ingot_iron_compressed>*4] , 4.0 , [<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32494>*16,<pneumaticcraft:ingot_iron_compressed>*4] , 1.5 , [<pneumaticcraft:capacitor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32405>*64,<pneumaticcraft:ingot_iron_compressed>*4] , 1.0 , [<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32604>*8,<pneumaticcraft:ingot_iron_compressed>*4] , 2.0, [<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32537>*4,<pneumaticcraft:ingot_iron_compressed>*4] , 3.0, [<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32542>*2,<pneumaticcraft:ingot_iron_compressed>*4] , 4.0 , [<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32497>*16,<pneumaticcraft:ingot_iron_compressed>*4] , 1.5 , [<pneumaticcraft:transistor>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<gtadditions:ga_meta_item:32406>*64,<pneumaticcraft:ingot_iron_compressed>*4] , 1.0 , [<pneumaticcraft:capacitor>]);

 
recipes.addShaped(<pneumaticcraft:liquid_hopper>, [ 	[<ore:plateSteel>, <minecraft:bucket>, <ore:plateSteel>],  	[<ore:plateSteel>, <ore:blockHopper>, <ore:plateSteel>],  	[null, <ore:plateSteel>, null] ]);

