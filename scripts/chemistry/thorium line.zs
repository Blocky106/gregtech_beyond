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

centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:6069>)
    .chancedOutput(<contenttweaker:purified1thorium>, 9000, 200)
    .chancedOutput(<gregtech:meta_item_1:1035>*2, 2500, 500)
    .chancedOutput(<gregtech:meta_item_1:35>*7, 1200, 250)
    .outputs(<gregtech:meta_item_1:1328>)
    .duration(400)
    .EUt(2400)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:purified1thorium>)
    .fluidInputs(<liquid:extradistilledwater>*2000)
    .outputs(<contenttweaker:purified2thorium>,<gregtech:meta_item_1:1075>*2)
    .duration(800)
    .EUt(2400)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32104>)
    .fluidInputs(<liquid:hydrochloric_acid>*200)
    .outputs(<gtadditions:ga_dust:32105>)
    .fluidOutputs(<liquid:hydrogen>*200)
    .duration(100)
    .EUt(480)
    .property("temperature", 4500)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32105>)
    .chancedOutput(<gtadditions:ga_dust:32103>, 9500, 0)
    .duration(400)
    .EUt(240)
    .buildAndRegister();


sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32102>)
    .chancedOutput(<gtadditions:ga_dust:32103>, 9000, 0)
    .duration(200)
    .EUt(240)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32103>)
    .outputs(<gtadditions:ga_dust:32101>)
    .fluidOutputs(<liquid:chlorine>*50)
    .duration(300)
    .EUt(120)
    .property("temperature", 4500)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32101>*9)
    .outputs(<gtadditions:ga_dust:32102>*6,<gtadditions:ga_dust:32100>*3)
    .duration(600)
    .EUt(240)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32100>)
    .outputs(<gtadditions:ga_dust:32099>)
    .chancedOutput(<gtadditions:ga_dust:32098>, 2500, 0)
    .duration(100)
    .EUt(1920)
    .property("temperature", 4500)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32099>, <gregtech:meta_item_1:2374>*2)
    .fluidInputs(<liquid:sulfuric_acid>*250)
    .fluidOutputs(<liquid:thorium_emulsion>*1000)
    .duration(400)
    .EUt(384)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .notConsumable(<contenttweaker:seperationcatalyst>)
    .fluidInputs(<liquid:thorium_emulsion>*1000)
    .outputs(<gtadditions:ga_dust:32127>*2)
    .fluidOutputs(<liquid:low_thorium_solution>*400,<liquid:radioactive_sludge>*600)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32127>)
    .fluidInputs(<liquid:nitric_acid>*200)
    .outputs(<gregtech:meta_item_1:2042>,<gregtech:meta_item_1:2097>*6)
    .fluidOutputs(<liquid:radium_emulsion>*200)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*6)
    .fluidInputs(<liquid:radium_emulsion>*1000)
    .fluidOutputs(<liquid:radium_sodium_solution>*2000)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

electromagnetic_separator.recipeBuilder()
    .inputs(<contenttweaker:purified3thorium>)
    .outputs(<contenttweaker:purified4thorium>)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*6)
    .fluidInputs(<liquid:radium_emulsion>*1000)
    .fluidOutputs(<liquid:radium_sodium_solution>*2000)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs([<liquid:ic2distilled_water>*1000])
    .fluidOutputs([<liquid:extradistilledwater>*250])
    .outputs(<gtadditions:ga_dust:32095>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:bromine>*144,<liquid:sulfuric_acid>*144)
    .fluidOutputs(<liquid:dissolvingfluid>*288)
    .duration(600)
    .EUt(480)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:bromine>*144,<liquid:sulfuric_acid>*144)
    .fluidOutputs(<liquid:dissolvingfluid>*288)
    .duration(600)
    .EUt(480)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32090>)
    .chancedOutput(<gregtech:meta_item_1:2035>, 5200, 580)
    .chancedOutput(<gtadditions:ga_dust:32090>, 4500, 120)
    .EUt(600)
    .duration(670)
    .property("temperature",1800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:low_thorium_solution>*1000,<liquid:hydrochloric_acid>*1000,<liquid:oxygen>*1000)
    .outputs(<gtadditions:ga_dust:32090>*2)
    .fluidOutputs(<liquid:purifiedthoriumemulsion>*2000)
    .duration(600)
    .EUt(360)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:driedthoriumemulsion>*144,<liquid:acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32060>)
    .fluidOutputs(<liquid:acetic_acid>*900)
    .duration(670)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:driedthoriumemulsion>*144,<liquid:acetic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32060>)
    .fluidOutputs(<liquid:acetic_acid>*900)
    .duration(670)
    .EUt(800)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:sulfuric_acid>*144)
    .inputs(<gtadditions:ga_dust:32060>)
    .fluidOutputs(<liquid:sulfuricthoriumsolution>*288)
    .duration(400)
    .EUt(202)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:sulfuric_acid>*144)
    .inputs(<gtadditions:ga_dust:32060>)
    .fluidOutputs(<liquid:sulfuricthoriumsolution>*288)
    .duration(400)
    .EUt(202)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*500,<liquid:thoriumleachsolution>*500)
    .fluidOutputs(<liquid:thoriumsolution>*500)
    .duration(400)
    .EUt(1230)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*500,<liquid:thoriumleachsolution>*500)
    .fluidOutputs(<liquid:thoriumsolution>*500)
    .duration(400)
    .EUt(1230)
    .buildAndRegister();











































