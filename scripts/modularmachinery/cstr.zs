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






RecipeBuilder.newBuilder("cstr1", "cstr", 500)  .addEnergyPerTickInput(4500)   .addFluidInput(<liquid:bastnasiteconcentrate>*1000) .addFluidInput(<liquid:sulfuric_acid>*250) .addFluidOutput(<liquid:acidicbastnasiteconcentrate>*1250) .build();
RecipeBuilder.newBuilder("cstr2", "cstr", 500)  .addEnergyPerTickInput(4500)   .addFluidInput(<liquid:acidicbastnasiteconcentrate>*1000) .addFluidInput(<liquid:fluorine>*1000) .addFluidOutput(<liquid:ceriumcontainingbastnasiteconcentrate>*1000) .addFluidOutput(<liquid:hydrofluoric_acid>*1000) .build();
RecipeBuilder.newBuilder("cstr3", "cstr", 500)  .addEnergyPerTickInput(4500)   .addFluidInput(<liquid:bastnasiterarerearthconcentrate>*1000) .addFluidInput(<liquid:water>*4000) .addFluidOutput(<liquid:wetbastnasiterareearthconcentrate>*5000) .build();
RecipeBuilder.newBuilder("cstr4", "cstr", 500)  .addEnergyPerTickInput(4500)   .addItemInput(<contenttweaker:roastedbastnasite>) .addFluidInput(<liquid:nitric_acid>*750) .addFluidOutput(<liquid:nitrogenatedbastnasiterarerearthoxides>*1000) .build();
RecipeBuilder.newBuilder("cstr5", "cstr", 500)  .addEnergyPerTickInput(4500)   .addFluidInput(<liquid:nitrogenatedbastnasiterarerearthoxides>*1000) .addFluidInput(<liquid:hydrochloric_acid>*500) .addFluidInput(<liquid:acetic_acid>*500) .addFluidOutput(<liquid:bastnasiterarerearthoxidesemulsion>*2000) .build();
