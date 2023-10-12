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








RecipeBuilder.newBuilder("neutron1", "neutron", 200)    .addEnergyPerTickInput(20000)    .addFluidInput(<liquid:uraniumbasedliquidfuel>*1000)    .addFluidOutput(<liquid:uraniumbasedliquidfuele>*1000)   .build();
RecipeBuilder.newBuilder("neutron2", "neutron", 200)    .addEnergyPerTickInput(20000)    .addFluidInput(<liquid:plutoniumbasedliquidfuel>*1000)    .addFluidOutput(<liquid:plutoniumbasedliquidfuele>*1000)    .build();
RecipeBuilder.newBuilder("neutron3", "neutron", 800)    .addEnergyPerTickInput(12000)    .addFluidInput(<liquid:naquadahactivationliquid>*1000)    .addFluidOutput(<liquid:naquadah_sulfate>*400)    .addFluidOutput(<liquid:chlorine>*540)    .build();
RecipeBuilder.newBuilder("neutron4", "neutron", 800)    .addEnergyPerTickInput(24000)    .addFluidInput(<liquid:enderium_molten>*1000)    .addFluidOutput(<liquid:moltenenhancedenderium>*500)    .addItemInput(<gtadditions:ga_dust:158>) .build();
RecipeBuilder.newBuilder("neutron5", "neutron", 1200)    .addEnergyPerTickInput(24000)    .addFluidInput(<liquid:moltenceriumlanthanum>*1000)    .addFluidOutput(<liquid:moltenceriumdopedlanthanum>*1000) .build();
RecipeBuilder.newBuilder("neutron6", "neutron", 400)    .addEnergyPerTickInput(500)    .addItemInput(<contenttweaker:purified4thorium>)   .addFluidOutput(<liquid:low_thorium_solution>*288) .addItemOutput(<contenttweaker:thorium_crude_metal>) .build();
