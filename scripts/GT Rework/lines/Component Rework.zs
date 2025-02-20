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


Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32614>],[],true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32634>],[],true);

recipes.remove(<gregtech:meta_item_1:32614>);
recipes.remove(<gregtech:meta_item_1:32634>);

componentassembler.recipeBuilder()
    .fluidInputs(<liquid:di_n_propyl_ether>*864)
    .inputs(<gregtech:meta_item_1:32604>*2,<gregtech:cable:5074>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:32634>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

componentassembler.recipeBuilder()
    .fluidInputs(<liquid:di_n_propyl_ether>*144)
    .inputs(<gregtech:meta_item_1:32604>,<gregtech:fluid_pipe:2235>,<gregtech:meta_item_2:18235>,<gregtech:cable:5074>,<gregtech:meta_item_1:17235>)
    .outputs(<gregtech:meta_item_1:32614>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();

assembler.findRecipe(7680,[<gregtech:cable:4087>*4,<gregtech:cable:5074>*2,<gregtech:meta_item_1:14235>*2,<gregtech:meta_item_1:14299>], null).remove();

componentassembler.recipeBuilder()
    .inputs(<ore:wireGtOctalTgtalloy>*4,<gregtech:cable:5074>*2,<gregtech:meta_item_1:14235>*2,<gregtech:meta_item_1:14299>)
    .outputs(<gregtech:meta_item_1:32604>)
    .duration(80)
    .EUt(1800)
    .buildAndRegister();

recipes.remove(<gregtech:meta_item_1:32644>);

componentassembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:17235>,<gregtech:meta_item_1:32604>,<gregtech:meta_item_1:12235>*3,<gregtech:meta_item_1:14235>*2,<gregtech:cable:5074>*2)
    .outputs(<gregtech:meta_item_1:32644>)
    .duration(80)
    .EUt(1800)
    .buildAndRegister();

componentassembler.recipeBuilder()
    .inputs(<ore:circuitElite>,<gregtech:meta_item_1:32644>,<gregtech:meta_item_1:32604>*2,<gregtech:meta_item_1:14235>*2,<gregtech:cable:5074>*3)
    .outputs(<gregtech:meta_item_1:32654>)
    .duration(80)
    .EUt(1800)
    .buildAndRegister();

recipes.remove(<gregtech:meta_item_1:32654>);

componentassembler.recipeBuilder()
    .inputs(<minecraft:ender_eye>,<gregtech:meta_item_1:14047>,<gregtech:meta_item_1:12235>*4,<ore:circuitElite>)
    .outputs(<gregtech:meta_item_1:32694>)
    .duration(80)
    .EUt(1800)
    .buildAndRegister();

recipes.remove(<gregtech:meta_item_1:32694>);

componentassembler.recipeBuilder()
    .inputs(<minecraft:ender_eye>,<gregtech:meta_item_1:14047>*4,<gregtech:meta_item_1:12235>*2,<ore:circuitElite>*2)
    .outputs(<gregtech:meta_item_1:32684>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(80)
    .EUt(1800)
    .buildAndRegister();

recipes.remove(<gregtech:meta_item_1:32684>);

recipes.remove(<gregtech:meta_item_1:32674>);

componentassembler.recipeBuilder()
    .outputs(<gregtech:meta_item_1:32674>)
    .fluidInputs(<liquid:osmium>*4608)
    .inputs(<ore:circuitElite>*4,<gregtech:meta_item_1:32725>)
    .duration(80)
    .EUt(1800)
    .buildAndRegister();