import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;
import crafttweaker.entity.IEntityDropFunction;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

recipes.addShaped(<wildnature:steel_ladder>*7, [	[<ore:stickSteel>, null, <ore:stickSteel>], 	[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], 	[<ore:stickSteel>, null, <ore:stickSteel>]]);


autoclave.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2282>)
    .outputs(<wildnature:malachite>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<ore:IngotMalachite>)
    .outputs(<gregtech:meta_item_1:2282>)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:malachite_axe>)
    .outputs(<wildnature:malachite_shard>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:malachite_sword>)
    .outputs(<wildnature:malachite_shard>*2)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:malachite_pickaxe>)
    .outputs(<wildnature:malachite_shard>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:malachite_shovel>)
    .outputs(<wildnature:malachite_shard>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<wildnature:malachite_hoe>)
    .outputs(<wildnature:malachite_shard>*2)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

recipes.addShapeless(<minecraft:stick>,[<wildnature:corn_bush>]);

//Get the male_cow loot table and store it for later use
val male_cow = LootTweaker.getTable("wildnature/duck_male_loot");

//Get main from the male_cow loot table and store it for later use
val main = male_cow.getPool("main");

//Remove the entry named "minecraft:mutton" from "main"
main.removeEntry("minecraft:chicken");
main.removeEntry("wildnature:duck_male_feather");

main.addItemEntry(<minecraft:leather>, 20, 1,[],[]);
main.addItemEntry(<minecraft:beef>, 20, 1,[],[]);
main.addItemEntry(<contenttweaker:pancreas>, 20, 1,[],[]);