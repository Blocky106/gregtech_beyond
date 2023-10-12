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
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;


RecipeBuilder.newBuilder("cbf1", "cbf", 1200) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:16072>) .addItemInput(<gregtech:meta_item_1:12196>) .addItemOutput(<gregtech:meta_item_2:32443>*128) .build();
RecipeBuilder.newBuilder("cbft21", "cbf2", 1200) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_1:12470>) .addItemInput(<gregtech:meta_item_2:16072>) .addItemOutput(<gregtech:meta_item_2:32443>*256) .build();
RecipeBuilder.newBuilder("cbf3", "cbf", 800) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_1:12196>) .addFluidInput(<liquid:bisphenolb>*288) .addItemOutput(<gregtech:meta_item_2:32447>*32) .build();
RecipeBuilder.newBuilder("cbf5", "cbf", 1200) .addEnergyPerTickInput(40000) .addItemInput(<gregtech:meta_item_1:19183>*4) .addItemInput(<gregtech:meta_item_1:12470>) .addItemOutput(<gregtech:meta_item_2:32448>*8) .build();
RecipeBuilder.newBuilder("cbft24", "cbf2", 500) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_1:19072>*4) .addItemInput(<gregtech:meta_item_2:32445>) .addItemOutput(<gregtech:meta_item_2:32448>*32) .build();
RecipeBuilder.newBuilder("cbf6", "cbf", 900) .addEnergyPerTickInput(32000) .addItemInput(<gregtech:meta_item_2:32448>*4) .addFluidInput(<liquid:iron_chloride>*2000) .addFluidInput(<liquid:annealed_copper>*512) .addItemOutput(<gtadditions:ga_meta_item:32031>*4) .build();
RecipeBuilder.newBuilder("cbf7", "cbf", 900) .addEnergyPerTickInput(32000) .addItemInput(<gregtech:meta_item_2:32448>*4) .addFluidInput(<liquid:sodium_persulfate>*4000) .addFluidInput(<liquid:annealed_copper>*512) .addItemInput(<gregtech:meta_item_1:19072>*4) .addItemOutput(<gtadditions:ga_meta_item:32031>*8) .build();
RecipeBuilder.newBuilder("cbft25", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:meta_item_1:19072>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>*2) .build();
RecipeBuilder.newBuilder("cbf8", "cbf", 800) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:meta_item_1:19001>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>) .build();
RecipeBuilder.newBuilder("cbft26", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:meta_item_1:19072>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>*2) .build();
RecipeBuilder.newBuilder("cbf9", "cbf", 800) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:meta_item_1:19001>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>) .build();
RecipeBuilder.newBuilder("cbf9", "cbf", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32443>) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:cable:18>) .addItemOutput(<gtadditions:ga_meta_item:32029>) .build();
RecipeBuilder.newBuilder("cbft27", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32443>) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:cable:184>) .addItemOutput(<gtadditions:ga_meta_item:32029>*2) .build();
RecipeBuilder.newBuilder("cbf10", "cbf", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32443>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:cable:18>) .addItemOutput(<gtadditions:ga_meta_item:32029>) .build();
RecipeBuilder.newBuilder("cbft28", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32443>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:cable:184>) .addItemOutput(<gtadditions:ga_meta_item:32029>*2) .build();
RecipeBuilder.newBuilder("cbft23", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>).addFluidInput(<liquid:iron_chloride>*250)  .addItemInput(<gregtech:meta_item_1:19072>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>*2) .build();
RecipeBuilder.newBuilder("cbf4", "cbf", 800) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:meta_item_1:19001>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>) .build();
RecipeBuilder.newBuilder("cbft29", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:meta_item_1:19072>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>*2) .build();
RecipeBuilder.newBuilder("cbf11", "cbf", 800) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_2:32447>) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:meta_item_1:19001>*2) .addItemOutput(<gtadditions:ga_meta_item:32030>) .build();
RecipeBuilder.newBuilder("cbf12", "cbf", 1800) .addEnergyPerTickInput(45000) .addItemInput(<gregtech:meta_item_2:32445>) .addItemInput(<gregtech:meta_item_1:19018>) .addFluidInput(<liquid:silicon_rubber>*3000) .addFluidInput(<liquid:sulfuric_acid>*1500) .addItemInput(<gregtech:meta_item_1:12142>) .addItemOutput(<gregtech:meta_item_2:32444>*4) .build();
RecipeBuilder.newBuilder("cbf13", "cbf1", 600) .addEnergyPerTickInput(50000) .addItemInput(<gregtech:meta_item_2:32444>) .addItemInput(<gregtech:meta_item_1:19074>*4) .addFluidInput(<liquid:sodium_persulfate>*2000) .addItemOutput(<gtadditions:ga_meta_item:32032>*4) .build();
RecipeBuilder.newBuilder("cbf14", "cbf1", 400) .addEnergyPerTickInput(50000) .addItemInput(<gregtech:meta_item_2:32444>) .addItemInput(<gregtech:meta_item_1:19074>*4) .addFluidInput(<liquid:iron_chloride>*1000) .addItemOutput(<gtadditions:ga_meta_item:32032>*4) .build();
RecipeBuilder.newBuilder("cbft210", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_1:12580>*2) .addItemInput(<gregtech:meta_item_1:19304>*4) .addFluidInput(<liquid:sodium_persulfate>*500) .addItemInput(<gregtech:meta_item_2:32444>) .addItemOutput(<gtadditions:ga_meta_item:32032>*8) .build();
RecipeBuilder.newBuilder("cbft211", "cbf2", 400) .addEnergyPerTickInput(25000) .addItemInput(<gregtech:meta_item_1:12580>*2) .addItemInput(<gregtech:meta_item_1:19304>*4) .addFluidInput(<liquid:iron_chloride>*250) .addItemInput(<gregtech:meta_item_2:32444>) .addItemOutput(<gtadditions:ga_meta_item:32032>*8) .build();
RecipeBuilder.newBuilder("cbf15", "cbf1", 400) .addEnergyPerTickInput(100000) .addItemInput(<gregtech:meta_item_1:12470>*4) .addFluidInput(<liquid:sulfuric_acid>*4000) .addFluidInput(<liquid:hsss>*1000) .addItemOutput(<gtadditions:ga_meta_item:32033>*4) .build();
RecipeBuilder.newBuilder("cbf16", "cbf1", 400) .addEnergyPerTickInput(100000) .addItemInput(<contenttweaker:biocircuitboard>) .addFluidInput(<liquid:sodium_persulfate>*14000) .addItemInput(<gregtech:meta_item_1:19993>*32) .addItemOutput(<contenttweaker:ultrabiomutatedcircuitboard>) .build();
RecipeBuilder.newBuilder("cbf17", "cbf1", 400) .addEnergyPerTickInput(100000) .addItemInput(<contenttweaker:biocircuitboard>) .addFluidInput(<liquid:iron_chloride>*7000) .addItemInput(<gregtech:meta_item_1:19993>*32) .addItemOutput(<contenttweaker:ultrabiomutatedcircuitboard>) .build();




















