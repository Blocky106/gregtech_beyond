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

recipes.addShapeless(<contenttweaker:researchpapermoon>,[<minecraft:paper>,<minecraft:dye>]);
recipes.addShapeless(<contenttweaker:researchpapermars>,[<contenttweaker:researchpapermoon>,<gregtech:meta_item_1:14072>.transformDamage(0)]);
recipes.addShapeless(<contenttweaker:researchpapermercury>,[<contenttweaker:researchpapermoon>,<gregtech:meta_item_1:14788>.transformDamage(0)]);






RecipeBuilder.newBuilder("planar1", "planar", 500) .addEnergyPerTickOutput(500) .addItemInput(<contenttweaker:researchpapermoon>) .addItemOutput(<contenttweaker:moon>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar2", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpapermars>) .addItemOutput(<contenttweaker:mars>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar3", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpaperasteroids>) .addItemOutput(<contenttweaker:asteroids>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar4", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpaperceres>) .addItemOutput(<contenttweaker:ceres>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar5", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpaperhaumea>) .addItemOutput(<contenttweaker:haumea>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar6", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpapermercury>) .addItemOutput(<contenttweaker:mercury>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar7", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpaperjupiter>) .addItemOutput(<contenttweaker:jupiter>).setChance(0.01) .build();
RecipeBuilder.newBuilder("planar8", "planar", 800) .addEnergyPerTickOutput(800) .addItemInput(<contenttweaker:researchpapereris>) .addItemOutput(<contenttweaker:eris>).setChance(0.01) .build();






