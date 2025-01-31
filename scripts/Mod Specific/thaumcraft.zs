import mods.thaumcraft.Warp;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;



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
mods.thaumcraft.SalisMundus.addSingleConversion(<minecraft:bookshelf>, <thaumcraft:thaumonomicon>);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_beef>)
    .outputs(<thaumcraft:chunk>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_beef>)
    .outputs(<thaumcraft:chunk>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_beef>)
    .outputs(<thaumcraft:chunk>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_beef>, [<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>,<thaumcraft:chunk>]);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_chicken>)
    .outputs(<thaumcraft:chunk:1>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_chicken>)
    .outputs(<thaumcraft:chunk:1>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_chicken>)
    .outputs(<thaumcraft:chunk:1>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_chicken>, [<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>,<thaumcraft:chunk:1>]);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_porkchop>)
    .outputs(<thaumcraft:chunk:2>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_porkchop>)
    .outputs(<thaumcraft:chunk:2>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_porkchop>)
    .outputs(<thaumcraft:chunk:2>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_porkchop>, [<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>,<thaumcraft:chunk:2>]);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_fish>)
    .outputs(<thaumcraft:chunk:3>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_fish>)
    .outputs(<thaumcraft:chunk:3>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_fish>)
    .outputs(<thaumcraft:chunk:3>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_fish>, [<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>,<thaumcraft:chunk:3>]);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_rabbit>)
    .outputs(<thaumcraft:chunk:4>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_rabbit>)
    .outputs(<thaumcraft:chunk:4>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_rabbit>)
    .outputs(<thaumcraft:chunk:4>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_rabbit>, [<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>,<thaumcraft:chunk:4>]);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_mutton>)
    .outputs(<thaumcraft:chunk:5>*9)
    .duration(20)
    .EUt(12)
    .fluidInputs(<liquid:water>*20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_mutton>)
    .outputs(<thaumcraft:chunk:5>*9)
    .duration(10)
    .EUt(12)
    .fluidInputs(<liquid:lubricant>*10)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<minecraft:cooked_mutton>)
    .outputs(<thaumcraft:chunk:5>*9)
    .duration(16)
    .EUt(12)
    .fluidInputs(<liquid:distilled_water>*16)
    .buildAndRegister();

recipes.addShapeless(<minecraft:cooked_mutton>, [<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>,<thaumcraft:chunk:5>]);


mods.thaumcraft.Infusion.removeRecipe(<thaumadditions:crystal_bore>);

mods.thaumcraft.Infusion.registerRecipe("crystal_bore_recipes", "", <thaumadditions:crystal_bore>, 30, [<aspect:perditio> * 20, <aspect:exitium>*20, <aspect:terra>*10], <thaumcraft:morphic_resonator>, [<thaumcraft:mechanism_complex>, <thaumcraft:stone_arcane>,<gregtech:meta_item_1:12094>,<thaumcraft:stone_arcane>,<gregtech:meta_item_1:12094>,<thaumcraft:stone_arcane>]);
