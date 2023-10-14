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


RecipeBuilder.newBuilder("astro1", "astro", 200) .addEnergyPerTickInput(400) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>).setChance(0)  .addItemInputs(<contenttweaker:moon>).setChance(0) .addItemOutputs(<gregtech:ore_rutile_0>*16,<gregtech:ore_ruby_0>*16,<gregtech:ore_bauxite_0>*16)   .build();
RecipeBuilder.newBuilder("astro2", "astro", 800) .addEnergyPerTickInput(1200) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>).setChance(0)  .addItemInputs(<contenttweaker:mars>).setChance(0) .addItemOutputs(<gregtech:ore_desh_0>*16,<gregtech:ore_lignite_0>*16,<gregtech:ore_platinumsalt_0>*16)   .build();
RecipeBuilder.newBuilder("astro3", "astro", 200) .addEnergyPerTickInput(400) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0) .addItemInputs(<contenttweaker:moon>).setChance(0) .addItemOutputs(<gregtech:ore_quartzite_0>*8,<gregtech:ore_nether_quartz_0>*8,<appliedenergistics2:quartz_ore>*8,<appliedenergistics2:charged_quartz_ore>*8,<gregtech:ore_certus_quartz_0>*8)   .build();
RecipeBuilder.newBuilder("astro4", "astro", 1200) .addEnergyPerTickInput(4000) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>).setChance(0) .addItemInputs(<contenttweaker:asteroids>).setChance(0) .addItemOutputs(<contenttweaker:dense_ice>*8,<contenttweaker:titaniumcontainingice>*2)   .build();
RecipeBuilder.newBuilder("astro5", "astro", 2000) .addEnergyPerTickInput(4000) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0) .addItemInputs(<contenttweaker:asteroids>).setChance(0) .addItemOutputs(<gregtech:ore_mythril_0>)   .build();
RecipeBuilder.newBuilder("astro6", "astro", 200) .addEnergyPerTickInput(400) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 2})).setChance(0)  .addItemInputs(<contenttweaker:moon>).setChance(0) .addItemOutputs(<gregtech:ore_emerald_0>*4,<gregtech:ore_beryllium_0>*4,<gregtech:ore_thorium_0>*4)   .build();
RecipeBuilder.newBuilder("astro7", "astro", 1300) .addEnergyPerTickInput(1400) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)  .addItemInputs(<contenttweaker:mercury>).setChance(0) .addItemOutputs(<gregtech:poor_ore_uranium_radioactive_0>*2,<gregtech:poor_ore_uranium_0>*2)   .build();
RecipeBuilder.newBuilder("astro8", "astro", 2300) .addEnergyPerTickInput(1400) .addItemInput(<contenttweaker:astro_miner>).setChance(0) .addItemInput(<gregtech:meta_item_1:32766>).setChance(0)  .addItemInputs(<contenttweaker:mercury>).setChance(0) .addItemOutputs(<gregtech:ore_platinum_metallic_powder_0>*2,<gregtech:ore_cooperite_0>*2)   .build();





























































