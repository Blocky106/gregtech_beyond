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

RecipeBuilder.newBuilder("VacDistiller1", "VacDistiller", 220) .addEnergyPerTickInput(240) .addFluidOutput(<liquid:lubricant>*50) .addFluidInput(<liquid:sulfuricoilresidues>*1000) .addItemOutput(<contenttweaker:bitominousresidue>*3) .addFluidOutput(<liquid:sulfuricbyproducts>*200) .addItemOutput(<contenttweaker:stackwax>) .addFluidOutput(<liquid:heavyoilresidues>*200) .build();
RecipeBuilder.newBuilder("VacDistiller2", "VacDistiller", 400) .addEnergyPerTickInput(320) .addFluidOutput(<liquid:oilgas>*600) .addFluidOutput(<liquid:vacuumflashedtar>*400) .addFluidInput(<liquid:tar>*1000) .build();