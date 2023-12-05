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

val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");

compressor.recipeBuilder()
    .inputs(<minecraft:cobblestone>*9)
    .outputs(<overloaded:compressed_cobblestone>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone>*9)
    .outputs(<overloaded:compressed_cobblestone:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:1>*9)
    .outputs(<overloaded:compressed_cobblestone:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:2>*9)
    .outputs(<overloaded:compressed_cobblestone:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:3>*9)
    .outputs(<overloaded:compressed_cobblestone:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:4>*9)
    .outputs(<overloaded:compressed_cobblestone:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:5>*9)
    .outputs(<overloaded:compressed_cobblestone:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:6>*9)
    .outputs(<overloaded:compressed_cobblestone:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:7>*9)
    .outputs(<overloaded:compressed_cobblestone:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:8>*9)
    .outputs(<overloaded:compressed_cobblestone:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:9>*9)
    .outputs(<overloaded:compressed_cobblestone:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:10>*9)
    .outputs(<overloaded:compressed_cobblestone:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:11>*9)
    .outputs(<overloaded:compressed_cobblestone:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:12>*9)
    .outputs(<overloaded:compressed_cobblestone:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:13>*9)
    .outputs(<overloaded:compressed_cobblestone:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_cobblestone:14>*9)
    .outputs(<overloaded:compressed_cobblestone:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:sand>*9)
    .outputs(<overloaded:compressed_sand>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand>*9)
    .outputs(<overloaded:compressed_sand:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:1>*9)
    .outputs(<overloaded:compressed_sand:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:2>*9)
    .outputs(<overloaded:compressed_sand:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:3>*9)
    .outputs(<overloaded:compressed_sand:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:4>*9)
    .outputs(<overloaded:compressed_sand:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:5>*9)
    .outputs(<overloaded:compressed_sand:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:6>*9)
    .outputs(<overloaded:compressed_sand:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:7>*9)
    .outputs(<overloaded:compressed_sand:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:8>*9)
    .outputs(<overloaded:compressed_sand:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:9>*9)
    .outputs(<overloaded:compressed_sand:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:10>*9)
    .outputs(<overloaded:compressed_sand:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:11>*9)
    .outputs(<overloaded:compressed_sand:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:12>*9)
    .outputs(<overloaded:compressed_sand:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:13>*9)
    .outputs(<overloaded:compressed_sand:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_sand:14>*9)
    .outputs(<overloaded:compressed_sand:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:stone>*9)
    .outputs(<overloaded:compressed_stone>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone>*9)
    .outputs(<overloaded:compressed_stone:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:1>*9)
    .outputs(<overloaded:compressed_stone:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:2>*9)
    .outputs(<overloaded:compressed_stone:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:3>*9)
    .outputs(<overloaded:compressed_stone:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:4>*9)
    .outputs(<overloaded:compressed_stone:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:5>*9)
    .outputs(<overloaded:compressed_stone:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:6>*9)
    .outputs(<overloaded:compressed_stone:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:7>*9)
    .outputs(<overloaded:compressed_stone:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:8>*9)
    .outputs(<overloaded:compressed_stone:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:9>*9)
    .outputs(<overloaded:compressed_stone:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:10>*9)
    .outputs(<overloaded:compressed_stone:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:11>*9)
    .outputs(<overloaded:compressed_stone:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:12>*9)
    .outputs(<overloaded:compressed_stone:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:13>*9)
    .outputs(<overloaded:compressed_stone:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_stone:14>*9)
    .outputs(<overloaded:compressed_stone:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:obsidian>*9)
    .outputs(<overloaded:compressed_obsidian>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian>*9)
    .outputs(<overloaded:compressed_obsidian:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:1>*9)
    .outputs(<overloaded:compressed_obsidian:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:2>*9)
    .outputs(<overloaded:compressed_obsidian:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:3>*9)
    .outputs(<overloaded:compressed_obsidian:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:4>*9)
    .outputs(<overloaded:compressed_obsidian:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:5>*9)
    .outputs(<overloaded:compressed_obsidian:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:6>*9)
    .outputs(<overloaded:compressed_obsidian:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:7>*9)
    .outputs(<overloaded:compressed_obsidian:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:8>*9)
    .outputs(<overloaded:compressed_obsidian:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:9>*9)
    .outputs(<overloaded:compressed_obsidian:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:10>*9)
    .outputs(<overloaded:compressed_obsidian:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:11>*9)
    .outputs(<overloaded:compressed_obsidian:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:12>*9)
    .outputs(<overloaded:compressed_obsidian:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:13>*9)
    .outputs(<overloaded:compressed_obsidian:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_obsidian:14>*9)
    .outputs(<overloaded:compressed_obsidian:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:netherrack>*9)
    .outputs(<overloaded:compressed_netherrack>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack>*9)
    .outputs(<overloaded:compressed_netherrack:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:1>*9)
    .outputs(<overloaded:compressed_netherrack:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:2>*9)
    .outputs(<overloaded:compressed_netherrack:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:3>*9)
    .outputs(<overloaded:compressed_netherrack:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:4>*9)
    .outputs(<overloaded:compressed_netherrack:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:5>*9)
    .outputs(<overloaded:compressed_netherrack:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:6>*9)
    .outputs(<overloaded:compressed_netherrack:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:7>*9)
    .outputs(<overloaded:compressed_netherrack:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:8>*9)
    .outputs(<overloaded:compressed_netherrack:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:9>*9)
    .outputs(<overloaded:compressed_netherrack:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:10>*9)
    .outputs(<overloaded:compressed_netherrack:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:11>*9)
    .outputs(<overloaded:compressed_netherrack:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:12>*9)
    .outputs(<overloaded:compressed_netherrack:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:13>*9)
    .outputs(<overloaded:compressed_netherrack:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_netherrack:14>*9)
    .outputs(<overloaded:compressed_netherrack:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:dirt>*9)
    .outputs(<overloaded:compressed_dirt>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt>*9)
    .outputs(<overloaded:compressed_dirt:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:1>*9)
    .outputs(<overloaded:compressed_dirt:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:2>*9)
    .outputs(<overloaded:compressed_dirt:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:3>*9)
    .outputs(<overloaded:compressed_dirt:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:4>*9)
    .outputs(<overloaded:compressed_dirt:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:5>*9)
    .outputs(<overloaded:compressed_dirt:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:6>*9)
    .outputs(<overloaded:compressed_dirt:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:7>*9)
    .outputs(<overloaded:compressed_dirt:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:8>*9)
    .outputs(<overloaded:compressed_dirt:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:9>*9)
    .outputs(<overloaded:compressed_dirt:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:10>*9)
    .outputs(<overloaded:compressed_dirt:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:11>*9)
    .outputs(<overloaded:compressed_dirt:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:12>*9)
    .outputs(<overloaded:compressed_dirt:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:13>*9)
    .outputs(<overloaded:compressed_dirt:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_dirt:14>*9)
    .outputs(<overloaded:compressed_dirt:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<minecraft:gravel>*9)
    .outputs(<overloaded:compressed_gravel>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel>*9)
    .outputs(<overloaded:compressed_gravel:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:1>*9)
    .outputs(<overloaded:compressed_gravel:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:2>*9)
    .outputs(<overloaded:compressed_gravel:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:3>*9)
    .outputs(<overloaded:compressed_gravel:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:4>*9)
    .outputs(<overloaded:compressed_gravel:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:5>*9)
    .outputs(<overloaded:compressed_gravel:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:6>*9)
    .outputs(<overloaded:compressed_gravel:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:7>*9)
    .outputs(<overloaded:compressed_gravel:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:8>*9)
    .outputs(<overloaded:compressed_gravel:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:9>*9)
    .outputs(<overloaded:compressed_gravel:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:10>*9)
    .outputs(<overloaded:compressed_gravel:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:11>*9)
    .outputs(<overloaded:compressed_gravel:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:12>*9)
    .outputs(<overloaded:compressed_gravel:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:13>*9)
    .outputs(<overloaded:compressed_gravel:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_gravel:14>*9)
    .outputs(<overloaded:compressed_gravel:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();


recipes.remove(<overloaded:nether_star_block>);
recipes.remove(<overloaded:compressed_cobblestone:1>);
recipes.remove(<overloaded:compressed_cobblestone>);
recipes.remove(<overloaded:compressed_cobblestone:2>);
recipes.remove(<overloaded:compressed_cobblestone:3>);
recipes.remove(<overloaded:compressed_cobblestone:4>);
recipes.remove(<overloaded:compressed_cobblestone:5>);
recipes.remove(<overloaded:compressed_cobblestone:6>);
recipes.remove(<overloaded:compressed_cobblestone:7>);
recipes.remove(<overloaded:compressed_cobblestone:8>);
recipes.remove(<overloaded:compressed_cobblestone:9>);
recipes.remove(<overloaded:compressed_cobblestone:10>);
recipes.remove(<overloaded:compressed_cobblestone:11>);
recipes.remove(<overloaded:compressed_cobblestone:12>);
recipes.remove(<overloaded:compressed_cobblestone:13>);
recipes.remove(<overloaded:compressed_cobblestone:14>);
recipes.remove(<overloaded:compressed_cobblestone:15>);
recipes.remove(<overloaded:compressed_gravel:1>);
recipes.remove(<overloaded:compressed_gravel>);
recipes.remove(<overloaded:compressed_gravel:2>);
recipes.remove(<overloaded:compressed_gravel:3>);
recipes.remove(<overloaded:compressed_gravel:4>);
recipes.remove(<overloaded:compressed_gravel:5>);
recipes.remove(<overloaded:compressed_gravel:6>);
recipes.remove(<overloaded:compressed_gravel:7>);
recipes.remove(<overloaded:compressed_gravel:8>);
recipes.remove(<overloaded:compressed_gravel:9>);
recipes.remove(<overloaded:compressed_gravel:10>);
recipes.remove(<overloaded:compressed_gravel:11>);
recipes.remove(<overloaded:compressed_gravel:12>);
recipes.remove(<overloaded:compressed_gravel:13>);
recipes.remove(<overloaded:compressed_gravel:14>);
recipes.remove(<overloaded:compressed_gravel:15>);
recipes.remove(<overloaded:compressed_dirt:1>);
recipes.remove(<overloaded:compressed_dirt>);
recipes.remove(<overloaded:compressed_dirt:2>);
recipes.remove(<overloaded:compressed_dirt:3>);
recipes.remove(<overloaded:compressed_dirt:4>);
recipes.remove(<overloaded:compressed_dirt:5>);
recipes.remove(<overloaded:compressed_dirt:6>);
recipes.remove(<overloaded:compressed_dirt:7>);
recipes.remove(<overloaded:compressed_dirt:8>);
recipes.remove(<overloaded:compressed_dirt:9>);
recipes.remove(<overloaded:compressed_dirt:10>);
recipes.remove(<overloaded:compressed_dirt:11>);
recipes.remove(<overloaded:compressed_dirt:12>);
recipes.remove(<overloaded:compressed_dirt:13>);
recipes.remove(<overloaded:compressed_dirt:14>);
recipes.remove(<overloaded:compressed_dirt:15>);
recipes.remove(<overloaded:compressed_netherrack:1>);
recipes.remove(<overloaded:compressed_netherrack>);
recipes.remove(<overloaded:compressed_netherrack:2>);
recipes.remove(<overloaded:compressed_netherrack:3>);
recipes.remove(<overloaded:compressed_netherrack:4>);
recipes.remove(<overloaded:compressed_netherrack:5>);
recipes.remove(<overloaded:compressed_netherrack:6>);
recipes.remove(<overloaded:compressed_netherrack:7>);
recipes.remove(<overloaded:compressed_netherrack:8>);
recipes.remove(<overloaded:compressed_netherrack:9>);
recipes.remove(<overloaded:compressed_netherrack:10>);
recipes.remove(<overloaded:compressed_netherrack:11>);
recipes.remove(<overloaded:compressed_netherrack:12>);
recipes.remove(<overloaded:compressed_netherrack:13>);
recipes.remove(<overloaded:compressed_netherrack:14>);
recipes.remove(<overloaded:compressed_netherrack:15>);
recipes.remove(<overloaded:compressed_obsidian:1>);
recipes.remove(<overloaded:compressed_obsidian>);
recipes.remove(<overloaded:compressed_obsidian:2>);
recipes.remove(<overloaded:compressed_obsidian:3>);
recipes.remove(<overloaded:compressed_obsidian:4>);
recipes.remove(<overloaded:compressed_obsidian:5>);
recipes.remove(<overloaded:compressed_obsidian:6>);
recipes.remove(<overloaded:compressed_obsidian:7>);
recipes.remove(<overloaded:compressed_obsidian:8>);
recipes.remove(<overloaded:compressed_obsidian:9>);
recipes.remove(<overloaded:compressed_obsidian:10>);
recipes.remove(<overloaded:compressed_obsidian:11>);
recipes.remove(<overloaded:compressed_obsidian:12>);
recipes.remove(<overloaded:compressed_obsidian:13>);
recipes.remove(<overloaded:compressed_obsidian:14>);
recipes.remove(<overloaded:compressed_obsidian:15>);
recipes.remove(<overloaded:compressed_stone:1>);
recipes.remove(<overloaded:compressed_stone>);
recipes.remove(<overloaded:compressed_stone:2>);
recipes.remove(<overloaded:compressed_stone:3>);
recipes.remove(<overloaded:compressed_stone:4>);
recipes.remove(<overloaded:compressed_stone:5>);
recipes.remove(<overloaded:compressed_stone:6>);
recipes.remove(<overloaded:compressed_stone:7>);
recipes.remove(<overloaded:compressed_stone:8>);
recipes.remove(<overloaded:compressed_stone:9>);
recipes.remove(<overloaded:compressed_stone:10>);
recipes.remove(<overloaded:compressed_stone:11>);
recipes.remove(<overloaded:compressed_stone:12>);
recipes.remove(<overloaded:compressed_stone:13>);
recipes.remove(<overloaded:compressed_stone:14>);
recipes.remove(<overloaded:compressed_stone:15>);
recipes.remove(<overloaded:compressed_sand:1>);
recipes.remove(<overloaded:compressed_sand>);
recipes.remove(<overloaded:compressed_sand:2>);
recipes.remove(<overloaded:compressed_sand:3>);
recipes.remove(<overloaded:compressed_sand:4>);
recipes.remove(<overloaded:compressed_sand:5>);
recipes.remove(<overloaded:compressed_sand:6>);
recipes.remove(<overloaded:compressed_sand:7>);
recipes.remove(<overloaded:compressed_sand:8>);
recipes.remove(<overloaded:compressed_sand:9>);
recipes.remove(<overloaded:compressed_sand:10>);
recipes.remove(<overloaded:compressed_sand:11>);
recipes.remove(<overloaded:compressed_sand:12>);
recipes.remove(<overloaded:compressed_sand:13>);
recipes.remove(<overloaded:compressed_sand:14>);
recipes.remove(<overloaded:compressed_sand:15>);
recipes.remove(<overloaded:infinite_water_source>);

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block>*9)
    .outputs(<overloaded:compressed_silicon_block:1>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:1>*9)
    .outputs(<overloaded:compressed_silicon_block:2>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:2>*9)
    .outputs(<overloaded:compressed_silicon_block:3>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:3>*9)
    .outputs(<overloaded:compressed_silicon_block:4>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:4>*9)
    .outputs(<overloaded:compressed_silicon_block:5>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:5>*9)
    .outputs(<overloaded:compressed_silicon_block:6>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:6>*9)
    .outputs(<overloaded:compressed_silicon_block:7>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:7>*9)
    .outputs(<overloaded:compressed_silicon_block:8>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:8>*9)
    .outputs(<overloaded:compressed_silicon_block:9>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:9>*9)
    .outputs(<overloaded:compressed_silicon_block:10>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:10>*9)
    .outputs(<overloaded:compressed_silicon_block:11>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:11>*9)
    .outputs(<overloaded:compressed_silicon_block:12>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:12>*9)
    .outputs(<overloaded:compressed_silicon_block:13>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:13>*9)
    .outputs(<overloaded:compressed_silicon_block:14>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<overloaded:compressed_silicon_block:14>*9)
    .outputs(<overloaded:compressed_silicon_block:15>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_3:13>*9)
    .outputs(<overloaded:compressed_silicon_block>)
    .EUt(12)
    .duration(20)
    .buildAndRegister();

recipes.remove(<overloaded:energy_core>);
recipes.remove(<overloaded:item_core>);
recipes.remove(<overloaded:fluid_core>);







