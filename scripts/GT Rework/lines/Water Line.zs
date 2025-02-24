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

ion_exchange_unit.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:demineralized_water>*900)
    .duration(200)
    .notConsumable(<gtadditions:ga_dust:32306>)
    .EUt(20)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2291>,<gregtech:meta_item_1:2105>)
    .duration(240)
    .outputs(<gtadditions:ga_dust:32306>)
    .EUt(40)
    .buildAndRegister();

vacuum_ejection_chamber.recipeBuilder()
    .fluidInputs(<liquid:demineralized_water>*1000)
    .fluidOutputs(<liquid:deaerated_water>*900)
    .duration(400)
    .EUt(50)
    .buildAndRegister();

ion_exchange_unit.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32184>)
    .fluidInputs(<liquid:deaerated_water>*1000)
    .fluidOutputs(<liquid:deionized_water>*700)
    .duration(500)
    .EUt(200)
    .buildAndRegister();

uv_light.recipeBuilder()
    .fluidInputs(<liquid:deionized_water>*1000)
    .fluidOutputs(<liquid:sterilized_water>*900)
    .duration(400)
    .EUt(50)
    .buildAndRegister();

distillery.recipeBuilder()
    .fluidInputs(<liquid:sterilized_water>*1000)
    .fluidOutputs(<liquid:ultrapure_water>*800)
    .duration(600)
    .EUt(200)
    .buildAndRegister();

ion_exchange_unit.recipeBuilder()
    .fluidInputs(<liquid:ultrapure_water>*1000)
    .fluidOutputs(<liquid:ultrapure_water_grade_1>*900)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

fluid_compressor.recipeBuilder()
    .fluidInputs(<liquid:ultrapure_water_grade_1>*1000)
    .fluidOutputs(<liquid:high_pressure_ultrapure_water_grade_1>*100)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

fluid_compressor.recipeBuilder()
    .fluidInputs(<liquid:high_pressure_ultrapure_water_grade_1>*1000)
    .fluidOutputs(<liquid:supercritical_ultrapure_water_grade_1>*100)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .fluidInputs(<liquid:supercritical_ultrapure_water_grade_1>*1000)
    .fluidOutputs(<liquid:ultrapure_water_grade_2>*1000)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ultrapure_water_grade_2>*1000)
    .notConsumable(<liquid:waterplasma>)
    .fluidOutputs(<liquid:ultrapure_water_grade_3>*10,<liquid:ultrapure_water_grade_1>*90,<liquid:ultrapure_water>*900)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ultrapure_water_grade_2>*1000)
    .notConsumable(<liquid:waterplasma>)
    .fluidOutputs(<liquid:ultrapure_water_grade_3>*10,<liquid:ultrapure_water_grade_1>*90,<liquid:ultrapure_water>*900)
    .duration(600)
    .EUt(2000)
    .buildAndRegister();

