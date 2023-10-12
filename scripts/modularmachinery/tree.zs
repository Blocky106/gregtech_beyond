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








RecipeBuilder.newBuilder("tree1", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling>) .addItemOutput(<minecraft:sapling>) .addItemOutput(<minecraft:log>*2) .build();
RecipeBuilder.newBuilder("tree2", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling:1>) .addItemOutput(<minecraft:sapling:1>) .addItemOutput(<minecraft:log:1>*2) .build();
RecipeBuilder.newBuilder("tree3", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling:2>) .addItemOutput(<minecraft:sapling:2>) .addItemOutput(<minecraft:log:2>*2) .build();
RecipeBuilder.newBuilder("tree4", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling:3>) .addItemOutput(<minecraft:sapling:3>) .addItemOutput(<minecraft:log:3>*2) .build();
RecipeBuilder.newBuilder("tree5", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling:4>) .addItemOutput(<minecraft:sapling:4>) .addItemOutput(<minecraft:log2>*2) .build();
RecipeBuilder.newBuilder("tree6", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<minecraft:sapling:5>) .addItemOutput(<minecraft:sapling:5>) .addItemOutput(<minecraft:log2:1>*2) .build();
RecipeBuilder.newBuilder("tree7", "tree", 200)    .addEnergyPerTickInput(4000)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<extrautils2:ironwood_sapling>) .addItemOutput(<extrautils2:ironwood_sapling>) .addItemOutput(<gregtech:meta_item_1:33>) .addItemOutput(<extrautils2:ironwood_log>*2) .build();
RecipeBuilder.newBuilder("tree8", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<extrautils2:ironwood_sapling:1>) .addItemOutput(<extrautils2:ironwood_sapling:1>) .addItemOutput(<extrautils2:ironwood_log:1>*2) .build();
RecipeBuilder.newBuilder("tree10", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<gregtech:sapling>) .addItemOutput(<gregtech:sapling>) .addItemOutput(<gregtech:meta_item_1:32627>) .addItemOutput(<gregtech:log>*2) .build();
RecipeBuilder.newBuilder("tree11", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<thaumicbases:endersapling>) .addItemOutput(<thaumicbases:endersapling>) .addItemOutput(<thaumicbases:enderlogs>*2) .build();
RecipeBuilder.newBuilder("tree12", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<thaumicbases:goldensapling>) .addItemOutput(<thaumicbases:goldensapling>) .addItemOutput(<thaumicbases:goldenlogs>*2) .build();
RecipeBuilder.newBuilder("tree13", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<thaumcraft:sapling_silverwood>) .addItemOutput(<thaumcraft:sapling_silverwood>) .addItemOutput(<thaumcraft:log_silverwood>*2) .build();
RecipeBuilder.newBuilder("tree14", "tree", 200)    .addEnergyPerTickInput(500)    .addFluidInput(<liquid:water>*2000)    .addItemInput(<thaumcraft:sapling_greatwood>) .addItemOutput(<thaumcraft:sapling_greatwood>) .addItemOutput(<thaumcraft:log_greatwood>*2) .build();




recipes.addShaped(<modularmachinery:tree_controller>, [	[<ore:plateRedSteel>, <ore:circuitAdvanced>, <ore:plateRedSteel>], 	[<ore:circuitAdvanced>, <ore:frameGtEglinSteel>, <ore:circuitAdvanced>], 	[<ore:plateRedSteel>, <ore:circuitAdvanced>, <ore:plateRedSteel>]]);







