recipes.addShaped(<minecraft:paper> * 3, [	[<gregtech:meta_item_1:2325>, <gregtech:meta_item_1:2325>, <gregtech:meta_item_1:2325>], 	[<ore:dustSmallWood>, <minecraft:water_bucket>, <ore:dustSmallWood>], 	[<gregtech:meta_item_1:2325>, <gregtech:meta_item_1:2325>, <gregtech:meta_item_1:2325>]]);
recipes.addShaped(<minecraft:bed>, [	[null, null, null], [<contenttweaker:stretchedwool>, <contenttweaker:stretchedwool>, <contenttweaker:stretchedwool>], 	[<ore:fenceWood>, <ore:logWood>, <ore:fenceWood>]]);
recipes.addShaped(<minecraft:piston>, [	[<ore:logWood>, <contenttweaker:woodgear>, <ore:logWood>], 	[<ore:dustStone>, <ore:ingotSteel>, <ore:dustStone>], 	[<ore:dustStone>, <gregtech:meta_item_1:32640>, <ore:dustStone>]]);
recipes.addShaped(<minecraft:flint_and_steel>, [	[<ore:ingotIron>, null], 	[null, <ore:itemFlint>]]);
recipes.addShaped(<minecraft:wooden_pressure_plate>, [	[null, null, null], 	[<ore:boltWood>, <ore:plankWood>, <ore:boltWood>], 	[<ore:voodooPoppetProtectionLightning>, <contenttweaker:woodgear>, <ore:voodooPoppetProtectionLightning>]]);
recipes.addShaped(<minecraft:cobblestone_wall>*6, [	[null, <gregtech:meta_tool:6>, null], 	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>], 	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>]]);
recipes.addShaped(<minecraft:cobblestone_wall>*4, [	[null, null, null], 	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>], 	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>]]);
recipes.addShaped(<minecraft:chest>,[[<ore:logWood>,<ore:plankWood>,<ore:logWood>],[<ore:plankWood>, null, <ore:plankWood>],[<ore:logWood>,<ore:plankWood>,<ore:logWood>]]);
recipes.addShapeless(<minecraft:flint>,[<minecraft:gravel>,<minecraft:gravel>,<minecraft:gravel>]);
recipes.addShaped(<minecraft:leather_helmet>, [	[<ore:screwIron>, <ore:itemLeather>, <ore:screwIron>], 	[<contenttweaker:stretchedwool>, null, <contenttweaker:stretchedwool>], 	[null, null, null]]);
recipes.addShaped(<minecraft:leather_chestplate>, [[<ore:itemLeather>, null, <ore:itemLeather>], [<contenttweaker:stretchedwool>, <ore:itemLeather>, <contenttweaker:stretchedwool>], 	[<ore:screwIron>, <contenttweaker:stretchedwool>, <ore:screwIron>]]);
recipes.addShaped(<minecraft:leather_leggings>, [	[<contenttweaker:stretchedwool>, <ore:itemLeather>, <contenttweaker:stretchedwool>], 	[<ore:itemLeather>, null, <ore:itemLeather>], 	[<ore:screwIron>, null, <ore:screwIron>]]);
recipes.addShaped(<minecraft:leather_boots>, [	[<contenttweaker:stretchedwool>, null, <contenttweaker:stretchedwool>], 	[<ore:itemLeather>, null, <ore:itemLeather>], 	[<ore:screwIron>, null, <ore:screwIron>]]);
recipes.addShaped(<minecraft:diamond_helmet>, [	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 	[<ore:plateDiamond>, <gregtech:meta_tool:6>, <ore:plateDiamond>], 	[null, null, null]]);
recipes.addShaped(<minecraft:diamond_chestplate>, [	[<ore:plateDiamond>, <gregtech:meta_tool:6>, <ore:plateDiamond>], 	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]]);
recipes.addShaped(<minecraft:diamond_leggings>, [	[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], 	[<ore:plateDiamond>, <gregtech:meta_tool:6>, <ore:plateDiamond>], 	[<ore:plateDiamond>, null, <ore:plateDiamond>]]);
recipes.addShaped(<minecraft:diamond_boots>, [[null, null, null], 	[<ore:plateDiamond>, <gregtech:meta_tool:6>, <ore:plateDiamond>], 	[<ore:plateDiamond>, null, <ore:plateDiamond>]]);
recipes.addShaped(<minecraft:minecart>, [	[<ore:screwIron>, null, <ore:screwIron>], 	[<ore:plateIron>, <ore:screwIron>, <ore:plateIron>], 	[<ore:gearIron>, <ore:plateIron>, <ore:gearIron>]]);
recipes.addShaped(<minecraft:anvil>, [	[<ore:plateDenseIron>, <ore:plateDenseIron>, <ore:plateDenseIron>], 	[null, <ore:plateDoubleIron>, null], 	[<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>]]);
recipes.addShaped(<minecraft:clay>, [	[<ore:dustClay>, <ore:dustClay>, null], 	[<ore:dustClay>, <ore:dustClay>, null], 	[null, null, null]]);
recipes.addShapeless(<minecraft:iron_ingot>,[<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>,<minecraft:iron_nugget>]);
recipes.addShaped(<minecraft:fence>, [	[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>],	[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>],	[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>]]);
recipes.addShaped(<minecraft:furnace>, [	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>], 	[<ore:gearStone>, <ore:itemFlint>, <ore:gearStone>], 	[<ore:stoneCobble>, <ore:stoneCobble>, <ore:stoneCobble>]]);

furnace.addRecipe(<minecraft:iron_ingot>,<gregtech:meta_item_1:2033>);
recipes.remove(<minecraft:iron_ingot>);
recipes.remove(<minecraft:ender_chest>);
recipes.remove(<minecraft:anvil>);
recipes.remove(<minecraft:minecart>);
recipes.remove(<minecraft:clay>);
recipes.remove(<minecraft:wooden_pressure_plate>);
recipes.remove(<minecraft:ender_eye>);
recipes.remove(<minecraft:cobblestone_wall>);
recipes.remove(<minecraft:obsidian>);
recipes.remove(<minecraft:chest>);
furnace.remove(<minecraft:coal:1>);
recipes.remove(<minecraft:wooden_sword>);
recipes.remove(<minecraft:wooden_shovel>);
recipes.remove(<minecraft:wooden_pickaxe>);
recipes.remove(<minecraft:wooden_axe>);
recipes.remove(<minecraft:wooden_hoe>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:stone_hoe>);
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
recipes.remove(<minecraft:cake>);
recipes.remove(<minecraft:fence>);

vanilla.seeds.addSeed(<contenttweaker:soy_bean>);






