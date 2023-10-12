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











RecipeBuilder.newBuilder("digester1", "digester", 500)  .addEnergyPerTickInput(12000)    .addItemInput(<contenttweaker:calcinatedbastnasite>)    .addFluidInput(<liquid:nitric_acid> * 750)    .addFluidOutput(<liquid:muddybastnasitesolution>*750)    .addItemOutput(<gregtech:meta_item_1:2159>)    .build();
RecipeBuilder.newBuilder("digester2", "digester", 500)  .addEnergyPerTickInput(1200)    .addItemInput(<gregtech:meta_item_1:5281>)    .addFluidInput(<liquid:nitric_acid> * 750)    .addFluidOutput(<liquid:muddy_monazite_solution>*750)    .build();
