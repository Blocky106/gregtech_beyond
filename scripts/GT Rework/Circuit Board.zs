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


chemReactor.recipeBuilder()
    .fluidInputs(<liquid:rayon>*144)
    .outputs(<gregtech:meta_item_2:32445>)
    .inputs(<gregtech:meta_item_1:12470>)
    .duration(200)
    .EUt(809)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:rayon>*144)
    .outputs(<gregtech:meta_item_2:32445>)
    .inputs(<gregtech:meta_item_1:12470>)
    .duration(200)
    .EUt(809)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_2:32445>],[],true);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_2:32445>],[],true);

uv_light.recipeBuilder()
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .inputs(<contenttweaker:electroplated_extreme_board>)
    .notConsumable(<contenttweaker:circiut_board_lithography_mask>)
    .outputs(<contenttweaker:patterned_extreme_board>)
    .duration(500)
    .EUt(400)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:copper>*1000)
    .inputs(<contenttweaker:insulated_extreme_board>)
    .outputs(<contenttweaker:electroplated_extreme_board>)
    .duration(760)
    .EUt(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32445>,<gregtech:meta_item_1:2159>)
    .outputs(<contenttweaker:insulated_extreme_board>)
    .duration(600)
    .EUt(400)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:etched_extreme_board>)
    .notConsumable(<contenttweaker:single_josephson_junction_lithography_mask>)
    .outputs(<contenttweaker:patterned_extreme_reinforced_board>)
    .duration(400)
    .EUt(750)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .inputs(<contenttweaker:patterned_extreme_reinforced_board>,<gtadditions:ga_dust:32262>)
    .outputs(<contenttweaker:josephson_junction_extreme_board>)
    .duration(320)
    .EUt(600)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:iron_chloride_solution>*100)
    .inputs(<contenttweaker:josephson_junction_extreme_board>)
    .outputs(<gtadditions:ga_meta_item:32033>)
    .duration(320)
    .EUt(600)
    .buildAndRegister();

