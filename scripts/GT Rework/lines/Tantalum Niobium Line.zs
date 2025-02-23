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


Utils.removeRecipeByOutput(electrolyzer,[<gregtech:meta_item_1:2773>*10,<gregtech:meta_item_1:2772>*4,<gregtech:meta_item_1:2066>],[],true);

Utils.removeRecipeByOutput(electrolyzer,[<gtadditions:ga_dust:248>*7],[<liquid:hydrofluoric_acid>*14000,<liquid:potassium_hydroxide>*4000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*9000)
    .inputs(<gtadditions:ga_dust:189>*20)
    .fluidOutputs(<liquid:tantalum_oxide_solution>*1000)
    .EUt(290)
    .duration(340)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:tantalum_oxide_solution>*1000)
    .fluidOutputs(<liquid:hydrofluoric_acid>*14000,<liquid:potassium_hydroxide>*4000)
    .outputs(<gtadditions:ga_dust:248>*7)
    .EUt(590)
    .duration(340)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:248>*7,<ore:dustCarbon>*5)
    .fluidOutputs(<liquid:carbon_monoxide>*5000)
    .outputs(<gregtech:meta_item_1:2066>*2)
    .property("temperature", 4000)
    .EUt(390)
    .duration(340)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydroxide>*2000,<liquid:oxypentafluoroniobate>*1000)
    .fluidOutputs(<liquid:water>*2000)
    .outputs(<gtadditions:ga_dust:188>*10)
    .EUt(490)
    .duration(340)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:water>*9000)
    .inputs(<gtadditions:ga_dust:188>*20)
    .fluidOutputs(<liquid:niobium_oxide_solution>*1000)
    .EUt(290)
    .duration(340)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:niobium_oxide_solution>*1000)
    .fluidOutputs(<liquid:hydrofluoric_acid>*14000,<liquid:potassium_hydroxide>*4000)
    .outputs(<gtadditions:ga_dust:32273>*7)
    .EUt(590)
    .duration(340)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32273>*7,<ore:dustCarbon>*5)
    .fluidOutputs(<liquid:carbon_monoxide>*5000)
    .outputs(<gregtech:meta_item_1:2045>*2)
    .property("temperature", 4000)
    .EUt(390)
    .duration(340)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydroxide>*1000,<liquid:hydrofluoric_acid>*3500,<liquid:heptafluorotantalate>*1000)
    .outputs(<gtadditions:ga_dust:189>*5)
    .fluidOutputs(<liquid:water>*1000)
    .EUt(890)
    .duration(340)
    .buildAndRegister();