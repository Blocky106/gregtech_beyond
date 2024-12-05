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

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32253> * 16], [], false);

assembler.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*144)
    .inputs(<ore:foilTungsten>,<gregtech:meta_item_1:19391>*4,<contenttweaker:thin_kapton_k_sheet>*2)
    .outputs(<gtadditions:ga_meta_item:32253>*16)
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

    
