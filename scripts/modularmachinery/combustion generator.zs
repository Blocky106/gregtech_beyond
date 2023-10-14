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



RecipeBuilder.newBuilder("combustion1", "combustion", 10) .addEnergyPerTickOutput(1000000) .addFluidInput(<liquid:high_octane>*1000) .build();
RecipeBuilder.newBuilder("combustion2", "combustion", 10) .addEnergyPerTickOutput(270000) .addFluidInput(<liquid:gasoline>*1000) .build();
RecipeBuilder.newBuilder("combustion3", "combustion", 10) .addEnergyPerTickOutput(80000) .addFluidInput(<liquid:butanol>*1000) .build();
RecipeBuilder.newBuilder("combustion4", "combustion", 10) .addEnergyPerTickOutput(64000) .addFluidInput(<liquid:bio_diesel>*1000) .build();
RecipeBuilder.newBuilder("combustion5", "combustion", 10) .addEnergyPerTickOutput(61000) .addFluidInput(<liquid:light_fuel>*1000) .build();
RecipeBuilder.newBuilder("combustion6", "combustion", 10) .addEnergyPerTickOutput(59000) .addFluidInput(<liquid:ethanol>*1000) .build();
RecipeBuilder.newBuilder("combustion7", "combustion", 10) .addEnergyPerTickOutput(20000) .addFluidInput(<liquid:methanol>*1000) .build();
RecipeBuilder.newBuilder("combustion8", "combustion", 10) .addEnergyPerTickOutput(16000) .addFluidInput(<liquid:octane>*1000) .build();
RecipeBuilder.newBuilder("combustion9", "combustion", 10) .addEnergyPerTickOutput(8000) .addFluidInput(<liquid:sulfuric_light_fuel>*1000) .build();
RecipeBuilder.newBuilder("combustion10", "combustion", 10) .addEnergyPerTickOutput(4000) .addFluidInput(<liquid:oil>*1000) .build();
RecipeBuilder.newBuilder("combustion11", "combustion", 10) .addEnergyPerTickOutput(1600) .addFluidInput(<liquid:biomass>*1000) .build();
RecipeBuilder.newBuilder("combustion12", "combustion", 10) .addEnergyPerTickOutput(1600) .addFluidInput(<liquid:creosote>*1000) .build();
RecipeBuilder.newBuilder("combustion13", "combustion", 10) .addEnergyPerTickOutput(400) .addFluidInput(<liquid:fish_oil>*1000) .build();
RecipeBuilder.newBuilder("combustion14", "combustion", 10) .addEnergyPerTickOutput(900000) .addFluidInput(<liquid:jetfuel>*1000) .build();
RecipeBuilder.newBuilder("combustion15", "combustion", 10) .addEnergyPerTickOutput(400000) .addFluidInput(<liquid:ethanolgasoline>*1000) .build();







