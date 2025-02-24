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

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .inputs(<gtadditions:ga_dust:132>)
    .outputs(<gtadditions:ga_dust:32275>)
    .duration(200)
    .EUt(1000)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:carbon_disulfide_solution>*1000)
    .inputs(<gtadditions:ga_dust:32275>)
    .outputs(<gtadditions:ga_dust:32276>)
    .EUt(800)
    .duration(400)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:32241>)
    .fluidOutputs(<liquid:carbon_disulfide_solution>*1000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:32241>)
    .fluidOutputs(<liquid:carbon_disulfide_solution>*1000)
    .EUt(12)
    .duration(200)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32276>)
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:sodium_cellulose_xanthate_solution>*1000)
    .EUt(400)
    .duration(500)
    .buildAndRegister();

spincoater.recipeBuilder()
    .fluidInputs(<liquid:sodium_cellulose_xanthate_solution>*1000)
    .notConsumable(<gregtech:meta_item_1:14184>)
    .outputs(<contenttweaker:wet_rayon_spinneret>)
    .EUt(500)
    .duration(500)
    .buildAndRegister();

dryer.recipeBuilder()
    .inputs(<contenttweaker:wet_rayon_spinneret>)
    .outputs(<contenttweaker:rayon_spinneret>)
    .EUt(500)
    .duration(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:rayon_spinneret>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:rayon_plate>)
    .EUt(500)
    .duration(600)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<contenttweaker:rayon_plate>)
    .fluidOutputs(<liquid:rayon>*144)
    .EUt(500)
    .duration(400)
    .buildAndRegister();
