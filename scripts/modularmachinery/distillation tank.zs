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








RecipeBuilder.newBuilder("distillation1", "distillation", 500) .addEnergyPerTickInput(20000) .addFluidInput(<liquid:neon>*1000) .addItemInput(<contenttweaker:monazitecluster>) .addItemOutput(<contenttweaker:distilledmonazitedust>) .build();
RecipeBuilder.newBuilder("distillation2", "distillation", 500) .addEnergyPerTickInput(40000) .addFluidInput(<liquid:argon>*2000) .addItemInput(<contenttweaker:monazitebasedpulp>) .addItemOutput(<contenttweaker:monazitedigesteddust>) .build();
RecipeBuilder.newBuilder("distillation3", "distillation", 500) .addEnergyPerTickInput(40000) .addFluidInput(<liquid:xenon>*2000) .addItemInput(<gtadditions:ga_meta_item:32316>) .addItemOutput(<gregtech:meta_item_1:1814>*2) .addItemOutput(<gregtech:meta_item_1:2>*2) .addItemOutput(<gregtech:meta_item_1:2555>) .build();
RecipeBuilder.newBuilder("distillation4", "distillation", 500) .addEnergyPerTickInput(2000) .addFluidInput(<liquid:dissolvingfluid>*1000) .addItemInput(<contenttweaker:purified2thorium>) .addItemOutput(<contenttweaker:purified3thorium>) .build();
RecipeBuilder.newBuilder("distillation5", "distillation", 500) .addEnergyPerTickInput(2000) .addFluidInput(<liquid:hydrocrackedthoriumsolution>*1000) .addFluidOutput(<liquid:thoriumleachsolution>*500) .addItemOutput(<gregtech:meta_item_1:2065>*3) .build();
RecipeBuilder.newBuilder("distillation6", "distillation", 500) .addEnergyPerTickInput(2000) .addFluidInput(<liquid:conditionedbastnasitemud>*5000) .addFluidOutput(<liquid:dilutedbastnasitemud>*5000) .build();
RecipeBuilder.newBuilder("distillation7", "distillation", 500) .addEnergyPerTickInput(2000) .addFluidInput(<liquid:muddy_monazite_solution>*1000)   .addFluidInput(<liquid:water>*1000) .addFluidOutput(<liquid:monazite_solution>*2000) .build();



