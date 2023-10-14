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

RecipeBuilder.newBuilder("press1", "press", 400)    .addEnergyPerTickInput(400)   .addItemInputs(<gregtech:meta_item_1:2397>*9,<gregtech:meta_item_1:2065>)    .addFluidOutput(<liquid:styrene_butadiene_rubber>*1296) .build();
RecipeBuilder.newBuilder("press2", "press", 200)    .addEnergyPerTickInput(100)   .addItemInputs(<gregtech:meta_item_1:2392>*9,<gregtech:meta_item_1:2065>)    .addFluidOutput(<liquid:silicon_rubber>*1296) .build();
RecipeBuilder.newBuilder("press3", "press", 100)    .addEnergyPerTickInput(100)   .addItemInputs(<gregtech:meta_item_1:2153>*9,<gregtech:meta_item_1:2065>)    .addFluidOutput(<liquid:rubber>*1296) .build();