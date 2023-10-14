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








RecipeBuilder.newBuilder("fermentation_vat1", "fermentation_vat", 2000) .addEnergyPerTickInput(800)    .addFluidInputs(<liquid:grain_solution>*1000,<liquid:water>*16000)   .addFluidOutput(<liquid:impure_ethanol>*16000)   .addItemInput(<minecraft:sugar>*24) .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .build();
RecipeBuilder.newBuilder("fermentation_vat2", "fermentation_vat", 400) .addEnergyPerTickInput(2800)    .addFluidInputs(<liquid:impure_ethanol>*16000,<liquid:oxygen>*4000)  .addFluidOutput(<liquid:vinegar>*16000) .build();
RecipeBuilder.newBuilder("fermentation_vat3", "fermentation_vat", 500) .addEnergyPerTickInput(800)    .addFluidInput(<liquid:biomass>*16000)    .addFluidOutputs(<liquid:fermented_biomass>*16000) .build();















