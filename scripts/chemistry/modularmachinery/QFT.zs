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

RecipeBuilder.newBuilder("qft1", "qft", 100)   .addEnergyPerTickInput(8000)  .addItemInput(<contenttweaker:sgm_catalyst>).setChance(0)    .addFluidInputs(<liquid:ammonia>*4000,<liquid:nitric_acid>*2000,<liquid:oxygen>*2000) .addItemInputs(<minecraft:sugar>*4,<gregtech:meta_item_1:2996>*8)   .addItemOutput(<gtadditions:ga_meta_item:32018>*256)   .addFluidOutputs(<liquid:b27_supplement>*200000,<liquid:raw_growth_medium>*10000,<liquid:sterilized_growth_medium>*5000) .build();
RecipeBuilder.newBuilder("qft2", "qft", 100)   .addEnergyPerTickInput(8000)  .addItemInput(<contenttweaker:pgm_catalyst>).setChance(0)    .addItemInput(<gregtech:meta_item_1:2900>*32)   .addItemOutputs(<gregtech:meta_item_1:2051>*32,<gregtech:meta_item_1:2047>*32,<gregtech:meta_item_1:2883>*32,<gregtech:meta_item_1:2032>*32,<gregtech:meta_item_1:2049>*32,<gregtech:meta_item_1:2869>*32) .build();
RecipeBuilder.newBuilder("qft3", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:ngm_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2746>*32)   .addItemOutputs(<gregtech:meta_item_1:2307>*32,<gregtech:meta_item_1:2563>*32,<gregtech:meta_item_1:2309>*32,<gregtech:meta_item_1:2551>*32,<gregtech:meta_item_1:2310>*32) .build();
RecipeBuilder.newBuilder("qft4", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:ree_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2281>*32)   .addItemOutputs(<gregtech:meta_item_1:2078>*32,<gregtech:meta_item_1:2014>*32,<gregtech:meta_item_1:2042>*32,<gregtech:meta_item_1:2055>*32,<gregtech:meta_item_1:2034>*32) .build();
RecipeBuilder.newBuilder("qft5", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:ree_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2270>*32)   .addItemOutputs(<gregtech:meta_item_1:2027>*32,<gregtech:meta_item_1:2024>*32,<gregtech:meta_item_1:2059>*32,<gregtech:meta_item_1:2034>*32,<gregtech:meta_item_1:2068>*32,<gregtech:meta_item_1:2042>*32) .build();
RecipeBuilder.newBuilder("qft6", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:radox_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2993>*32) .addFluidInput(<liquid:xenoxene>*100000) .addFluidOutputs(<liquid:radoxpolymer>*10000,<liquid:purifiedradox>*25000,<liquid:crackedheavyradox>*15000,<liquid:crackedlightradox>*15000).build();
RecipeBuilder.newBuilder("qft7", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:kevlar_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2012>*32) .addFluidInputs(<liquid:nitrogen>*32000,<liquid:oxygen>*32000,<liquid:hydrogen>*32000) .addFluidOutputs(<liquid:reinforcedkevlar>*100,<liquid:kevlar>*500,<liquid:crystalkevlar>*2000,<liquid:unrefinedkevlar>*5000).build();
RecipeBuilder.newBuilder("qft8", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:plastic_catalyst>).setChance(0) .addItemInput(<gregtech:meta_item_1:2012>*64) .addFluidInputs(<liquid:chlorine>*64000,<liquid:nitrogen>*64000,<liquid:oxygen>*64000,<liquid:hydrogen>*64000) .addFluidOutputs(<liquid:styrene_butadiene_rubber>*16000,<liquid:silicon_rubber>*12800,<liquid:plastic>*50000,<liquid:polybenzimidazole>*2000,<liquid:polytetrafluoroethylene>*2000,<liquid:polyvinyl_chloride>*40000,<liquid:polycaprolactam>*12000).build();
RecipeBuilder.newBuilder("qft9", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:soldering_catalyst>).setChance(0) .addItemInputs(<gregtech:meta_item_1:2012>*32,<gregtech:meta_item_1:2008>*32) .addFluidInputs(<liquid:oxygen>*64000,<liquid:hydrogen>*64000) .addFluidOutputs(<liquid:indalloy140>*8000,<liquid:refinedglue>*20000,<liquid:soldering_alloy>*18000)  .build();
RecipeBuilder.newBuilder("qft10", "qft", 100)   .addEnergyPerTickInput(12000)  .addItemInput(<contenttweaker:metal_catalyst>).setChance(0) .addItemInputs(<gregtech:meta_item_1:2035>*32,<gregtech:meta_item_1:2123>*32,<gregtech:meta_item_1:2191>*32) .addItemOutputs(<gregtech:meta_item_1:2072>*16,<gregtech:meta_item_1:2074>*16,<gregtech:meta_item_1:2300>*16,<gregtech:meta_item_1:2031>*16)    .build();





















