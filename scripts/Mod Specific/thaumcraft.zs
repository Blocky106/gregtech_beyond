import mods.thaumcraft.Warp;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;




#warp
mods.thaumcraft.Warp.setWarp(<minecraft:ender_chest>, 1);
mods.thaumcraft.Warp.setWarp(<minecraft:brewing_stand>, 1);
mods.thaumcraft.Warp.setWarp(<enderstorage:ender_storage:1>, 1);
mods.thaumcraft.Warp.setWarp(<enderstorage:ender_storage>, 1);



mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("ender_chest", "", 20, [<aspect:perditio>*6, <aspect:aqua>*5], <minecraft:ender_chest>, [[<overloaded:compressed_obsidian>,<overloaded:compressed_obsidian>,<overloaded:compressed_obsidian>], [<overloaded:compressed_obsidian>,<minecraft:ender_eye>,<overloaded:compressed_obsidian>], [<overloaded:compressed_obsidian>,<overloaded:compressed_obsidian>,<overloaded:compressed_obsidian>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("advanced_ender_chest", "", 20, [<aspect:perditio>*20, <aspect:aqua>*20,<aspect:ignis>*20], <enderstorage:ender_storage>, [[<gregtech:meta_item_1:12545>,<overloaded:compressed_obsidian>,<gregtech:meta_item_1:12545>], [<overloaded:compressed_obsidian>,<randomthings:stableenderpearl>,<overloaded:compressed_obsidian>], [<gregtech:meta_item_1:12545>,<overloaded:compressed_obsidian>,<gregtech:meta_item_1:12545>]]);

mods.thaumcraft.Infusion.registerRecipe("", "", <torchmaster:mega_torch>, 20, [<aspect:sonus>*12, <aspect:aer>*8, <aspect:desiderium>*8], <randomthings:advancedredstonetorch_on>, [<thaumicbases:oldgold>, <thaumicbases:oldgold>, <thaumicbases:olddiamond>, <thaumicbases:olddiamond>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12963>, <gregtech:meta_item_1:12963>]);
mods.thaumcraft.Infusion.registerRecipe("", "", <randomthings:spectrekey>, 12, [<aspect:spiritus>*20],<contenttweaker:spectrekeyhandle>,[<gregtech:meta_item_1:12002>,<gregtech:meta_item_1:12002>,<gregtech:meta_item_1:12002>,<gregtech:meta_item_1:12002>,<randomthings:ingredient:3>,<randomthings:ingredient:3>,<randomthings:ingredient:3>,<randomthings:ingredient:3>]);





recipes.addShaped(<thaumcraft:stone_arcane>*8, [	[<hammercore:gold_bordered_cobblestone>, <hammercore:gold_bordered_cobblestone>, <hammercore:gold_bordered_cobblestone>], 	[<hammercore:gold_bordered_cobblestone>, <thaumcraft:crystal_essence>, <hammercore:gold_bordered_cobblestone>], 	[<hammercore:gold_bordered_cobblestone>, <hammercore:gold_bordered_cobblestone>, <hammercore:gold_bordered_cobblestone>]]);



furnace.addRecipe(<gregtech:meta_item_1:10035>*2,<thaumcraft:cluster:5>);
furnace.remove(<thaumcraft:nugget>);


mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
mods.thaumcraft.SalisMundus.addSingleConversion(<contenttweaker:steel_plated_workbench>, <thaumcraft:arcane_workbench>);
mods.thaumcraft.SalisMundus.addSingleConversion(<minecraft:cauldron>, <thaumcraft:crucible>);
