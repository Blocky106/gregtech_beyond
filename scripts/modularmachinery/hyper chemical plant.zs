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






RecipeBuilder.newBuilder("chem1", "chem", 1000) .addEnergyPerTickInput(200000) .addItemInput(<contenttweaker:highdensityplutonium>*4 ).addItemInput(<contenttweaker:highdensityuranium>*4) .addItemInput(<contenttweaker:highdensitythoria>*4) .addItemInput(<contenttweaker:rawneutroniumingot>*4) .addFluidInputs(<liquid:primalquarkdegeneratematterplasma>*1000) .addFluidInputs(<liquid:heavy_quark_degenerate_matter>*1000) .addFluidInputs(<liquid:quark_gluon_plasma>*1000) .addFluidInputs(<liquid:degenerate_rhenium_plasma>*1000) .addFluidOutput(<liquid:hyperreactiveliquid>*1000) .build();
