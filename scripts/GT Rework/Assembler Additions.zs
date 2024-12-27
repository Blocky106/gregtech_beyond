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

assembler.recipeBuilder()
    .inputs(<minecraft:obsidian>*4,<minecraft:diamond>*2,<minecraft:book>)
    .outputs(<minecraft:enchanting_table>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:stick>*7)
    .outputs(<minecraft:ladder>*3)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:cobblestone>*8)
    .outputs(<minecraft:furnace>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks>*4)
    .outputs(<minecraft:crafting_table>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:glass>*7,<minecraft:ender_eye>,<minecraft:ghast_tear>)
    .outputs(<minecraft:end_crystal>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks>*8,<minecraft:redstone>)
    .outputs(<minecraft:noteblock>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:piston>,<ore:slimeball>)
    .outputs(<minecraft:sticky_piston>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:piston>,<ore:slimeball>)
    .outputs(<minecraft:sticky_piston>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:logWood>*2,<ore:cobblestone>*4,<ore:ingotSteel>,<contenttweaker:woodgear>,<gregtech:meta_item_1:32640>)
    .outputs(<minecraft:piston>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:cobblestone>,<minecraft:stick>)
    .outputs(<minecraft:lever>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:cobblestone>*2)
    .outputs(<minecraft:stone_pressure_plate>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:planks>*2)
    .outputs(<minecraft:wooden_pressure_plate>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:stone>*2)
    .outputs(<minecraft:stone_pressure_plate>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:stick>,<minecraft:redstone>)
    .outputs(<minecraft:redstone_torch>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:cobblestone>,<minecraft:redstone>,<minecraft:bow>)
    .outputs(<minecraft:dispenser>)
    .duration(20)
    .EUt(2)
    .buildAndRegister();