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
import mods.gtadditions.recipe.Utils;


macerator.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32231>)
	.outputs(<gtadditions:ga_dust:32226>*2)
	.duration(500)
	.EUt(40)
	.buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32226>, <ore:dustSodiumHydroxide>*2)
    .fluidInputs(<liquid:titanium_tetrachloride>*1000)
    .outputs(<gregtech:meta_item_1:2016>*2)
    .fluidOutputs(<liquid:naquatitanium_trioxide>*1000, <liquid:hydrochloric_acid>*2000)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:naquatitanium_trioxide>*1000, <liquid:hydrogen>*1000)
    .outputs(<gregtech:meta_item_1:2016>*2)
    .fluidOutputs(<liquid:naquatitanium_hydroxide>*1000, <liquid:oxygen>*2000)
    .duration(200)
    .EUt(7000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<ore:dustNichrome>)
    .notConsumable(<gregtech:meta_item_1:10982>)
    .fluidInputs(<liquid:naquatitanium_hydroxide>*1000)
    .outputs(<gtadditions:ga_dust:32227>, <gregtech:meta_item_1:2044>)
    .duration(300)
    .EUt(9000)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32227>, <ore:dustAmericium>*2)
    .fluidInputs(<liquid:oxygen>*200)
    .outputs(<gtadditions:ga_dust:32228>*2, <gregtechfoodoption:gtfo_oredict_item:1074>)
    .duration(2000)
    .EUt(5000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:diluted_impure_naquahamericium_hydroxide>*1000)
    .outputs(<gtadditions:ga_dust:359>)
    .fluidOutputs(<liquid:naquahamericium_hydroxide>*10000)
    .duration(1500)
    .EUt(9500)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:naquahamericium_hydroxide>*2000)
    .outputs(<gtadditions:ga_dust:32230>)
    .fluidOutputs(<liquid:water>*2000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32230>)
    .outputs(<gtadditions:ga_dust:32229>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

ebf.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32229>, <ore:ingotAbyssalAlloy>)
	.outputs(<gregtech:meta_item_1:10631>)
	.property("temperature", 10050)
	.EUt(2500000)
	.duration(1200)
	.buildAndRegister();
