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

RecipeBuilder.newBuilder("roaster1", "roaster", 800) .addEnergyPerTickInput(24000) .addFluidOutput(<liquid:diketene>*1000) .addFluidInput(<liquid:carbondisulfide>*500) .addFluidInput(<liquid:acetone>*2000) .addFluidOutput(<liquid:methane>*2000) .build();
RecipeBuilder.newBuilder("roaster2", "roaster", 20) .addEnergyPerTickInput(144) .addItemInput(<contenttweaker:crackingcatalystpreparation>) .addItemOutput(<contenttweaker:crackingcatalyst>) .build();
RecipeBuilder.newBuilder("roaster3", "roaster", 400)    .addEnergyPerTickInput(2000)    .addItemInput(<ore:dustCalcite>)    .addItemInput(<ore:crushedBastnasite>)    .addItemOutput(<contenttweaker:calcinatedbastnasite>)    .build();
RecipeBuilder.newBuilder("roaster4", "roaster", 400)   .addEnergyPerTickInput(6000)    .addFluidInput(<liquid:wetbastnasiterareearthconcentrate> * 1000)   .addFluidOutput(<liquid:oxygen> * 500)    .addItemOutput(<contenttweaker:roastedbastnasite>)    .build();
RecipeBuilder.newBuilder("roaster5", "roaster", 400)   .addEnergyPerTickInput(6000)  .addItemOutputs(<gregtech:meta_item_1:2027>,<contenttweaker:calciumfluoride>,<gregtech:meta_item_1:2155>,<contenttweaker:samariumterbiumconcentrate>)    .addItemInputs(<contenttweaker:fluorinatedsamariccompound>*2,<gregtech:meta_item_1:2011>)    .build();
RecipeBuilder.newBuilder("roaster6", "roaster", 200)   .addEnergyPerTickInput(12)  .addItemInput(<gtadditions:ga_dust:192>*2) .addFluidOutput(<liquid:sulfur_trioxide>*1000) .addFluidOutput(<liquid:sulfur_dioxide>*1000)    .build();



