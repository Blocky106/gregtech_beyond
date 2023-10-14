import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
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









RecipeBuilder.newBuilder("rock1", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:stone>) .addItemOutput(<minecraft:stone>*4) .build();
RecipeBuilder.newBuilder("rock2", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:cobblestone>) .addItemOutput(<minecraft:cobblestone>*4) .build();
RecipeBuilder.newBuilder("rock3", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:obsidian>) .addItemOutput(<minecraft:obsidian>*4) .build();
RecipeBuilder.newBuilder("rock4", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:stone:3>) .addItemOutput(<minecraft:stone:3>*4) .build();
RecipeBuilder.newBuilder("rock5", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:stone:5>) .addItemOutput(<minecraft:stone:5>*4) .build();
RecipeBuilder.newBuilder("rock6", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:stone:1>) .addItemOutput(<minecraft:stone:1>*4) .build();
RecipeBuilder.newBuilder("rock7", "rock", 20) .addEnergyPerTickInput(512) .addItemInput(<appliedenergistics2:sky_stone_block>) .addItemOutput(<appliedenergistics2:sky_stone_block>*4) .build();
