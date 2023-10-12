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



RecipeBuilder.newBuilder("coker1", "coker", 500) .addEnergyPerTickInput(2000) .addFluidInput(<liquid:vacuumflashedtar>*1000) .addFluidOutput(<liquid:tar>*600) .addItemOutput(<contenttweaker:petreulumcoke>*2) .build();
RecipeBuilder.newBuilder("coker2", "coker", 500) .addEnergyPerTickInput(2000) .addItemInput(<contenttweaker:bitominousresidue>*2) .addItemOutput(<gregtech:meta_item_1:2357>) .addFluidOutput(<liquid:desaltedoil>*144) .build();

