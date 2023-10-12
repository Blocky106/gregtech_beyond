import mods.forestry.Carpenter;

#modloaded gendustry
#modloaded forestry

mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.removeRecipe(<minecraft:ender_pearl>);

mods.forestry.Carpenter.addRecipe(<forestry:portable_alyzer>,[[<gregtech:meta_item_1:12189>,<forestry:crafting_material:1>,<gregtech:meta_item_1:12189>],[<gregtech:meta_item_1:12189>,<gtadditions:ga_transparent_casing:2>,<gregtech:meta_item_1:12189>], [<gregtech:meta_item_1:12111>,<forestry:crafting_material:1>,<gregtech:meta_item_1:12111>]], 300, <liquid:steel>* 500);
mods.forestry.Carpenter.addRecipe(<contenttweaker:diamondaluminiumcasing>, [[<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:14111>,<gregtech:meta_item_1:12111>],[<gregtech:meta_item_1:12111>,null,<gregtech:meta_item_1:12111>],[<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:14111>,<gregtech:meta_item_1:12111>]], 260, <liquid:aluminium> * 2000);
mods.forestry.Carpenter.addRecipe(<forestry:impregnated_casing>, [[<gregtech:meta_item_1:2042>,<gregtech:meta_item_1:2042>,<gregtech:meta_item_1:2042>],[<gregtech:meta_item_1:2042>,<forestry:sturdy_machine>,<gregtech:meta_item_1:2042>],[<gtadditions:ga_transparent_casing:2>,<gtadditions:ga_transparent_casing:2>,<gtadditions:ga_transparent_casing:2>]], 260, <liquid:seed_oil> * 600);
recipes.addShaped(<forestry:engine_clockwork>, [	[<ore:screwGold>, <ore:plateAluminium>, <ore:screwGold>], [<ore:plateCurvedBronze>, <contenttweaker:engine>, <ore:plateCurvedBronze>], 	[<ore:craftingPiston>, <ore:plateDoubleBronze>, <ore:craftingPiston>]]);

mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:1>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:2>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:3>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:4>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:6>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:7>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:8>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:9>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:10>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:11>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:12>);

recipes.addShaped(<forestry:worktable>, [	[<ore:ingotCopper>, <ore:itemSimpleMachineChassi>, <ore:ingotCopper>], 	[<ore:ingotCopper>, <ore:circuitBasic>, <ore:ingotCopper>], 	[<ore:ingotCopper>, <gregtech:machine_casing:10>, <ore:ingotCopper>]]);
recipes.addShaped(<forestry:carpenter>, [	[<ore:compressedBronze>, <gregtech:machine_casing:10>, <ore:compressedBronze>], 	[<ore:plateBronze>, <thermalfoundation:material:512>, <ore:plateBronze>], 	[<forestry:impregnated_casing>, <contenttweaker:engine>, <forestry:impregnated_casing>]]);
recipes.addShaped(<forestry:analyzer>, [	[<ore:plateBlueSteel>, <forestry:portable_alyzer>, <ore:plateBlueSteel>], 	[<ore:plateBlueSteel>, <gregtech:machine:502>, <ore:plateBlueSteel>], 	[<contenttweaker:bisphenolbingot>, <ore:circuitBasic>, <contenttweaker:bisphenolbingot>]]);
recipes.addShaped(<forestry:fabricator>, [[<ore:plateRoseGold>, <ore:itemMachineChassi>, <ore:plateRoseGold>], 	[<ore:plateRoseGold>, <gregtech:machine:502>, <ore:plateRoseGold>], 	[<contenttweaker:electricalsteelplate>, <contenttweaker:engine>, <contenttweaker:electricalsteelplate>]]);
recipes.addShaped(<forestry:wrench>, [	[<ore:screwCopper>, null, <ore:screwCopper>], 	[<ore:plateCopper>, <ore:stickCopper>, <ore:plateCopper>], 	[null, <ore:stickCopper>, null]]);
recipes.addShaped(<forestry:engine_biogas>, [	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 	[<ore:gearBronze>, <gregtech:meta_item_1:32762>, <ore:gearBronze>], 	[<gregtech:machine_casing:1>, <ore:craftingPiston>, <gregtech:machine_casing:1>]]);
recipes.addShaped(<forestry:mailbox>, [	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], 	[<ore:plateTin>, <forestry:sturdy_machine>, <ore:plateTin>], 	[<gregtech:machine:802>, <gregtech:machine:802>, <gregtech:machine:802>]]);
recipes.addShaped(<forestry:trade_station>, [	[<forestry:thermionic_tubes:2>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:2>], 	[<forestry:thermionic_tubes:2>, <gregtech:machine:802>, <forestry:thermionic_tubes:2>], 	[<ore:plateTin>, <forestry:mailbox>, <ore:plateTin>]]);
recipes.addShaped(<forestry:cart.beehouse:1>, [	[null, null, null], 	[<ore:craftingToolSaw>, <forestry:apiary>, <ore:craftingToolHardHammer>], 	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);
recipes.addShaped(<forestry:cart.beehouse>, [	[null, null, null], 	[<ore:craftingToolSaw>, <forestry:bee_house>, <ore:craftingToolHardHammer>], 	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);



recipes.remove(<forestry:apatite>);
recipes.remove(<forestry:thermionic_tubes:11>);
recipes.remove(<forestry:thermionic_tubes:7>);
recipes.remove(<forestry:thermionic_tubes:1>);
recipes.remove(<forestry:thermionic_tubes:4>);
recipes.remove(<forestry:trade_station>);
recipes.remove(<forestry:mailbox>);
recipes.remove(<forestry:charcoal>);
recipes.remove(<forestry:engine_biogas>);
recipes.remove(<forestry:engine_peat>);
recipes.remove(<forestry:analyzer>);
recipes.remove(<forestry:carpenter>);
recipes.remove(<forestry:engine_clockwork>);
recipes.remove(<forestry:centrifuge>);
recipes.remove(<forestry:fabricator>);
recipes.remove(<forestry:wrench>);


