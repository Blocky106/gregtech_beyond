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


Utils.removeRecipeByOutput(implosion,[<minecraft:ender_eye>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2219>*4)
    .property("explosives", 24)
    .outputs(<minecraft:ender_eye>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<minecraft:ender_pearl>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2218>*4)
    .property("explosives", 24)
    .outputs(<minecraft:ender_pearl>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<appliedenergistics2:material:46>*4)
    .property("explosives", 24)
    .outputs(<minecraft:ender_pearl>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8713>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2713>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8713>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24713>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8713>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24713>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25713>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24713>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25713>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Tourmaline


Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8612>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2612>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8612>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24612>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8612>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24612>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25612>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24612>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25612>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//topaz

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8190>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2190>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8190>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24190>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8190>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24190>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25190>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24190>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25190>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Glass

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8209>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2209>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8209>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24209>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8209>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24209>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25209>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24209>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25209>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Rutile

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8122>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2122>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8122>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24122>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8122>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24122>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25122>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24122>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25122>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Ruby

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8154>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2154>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8154>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24154>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8154>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24154>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25154>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24154>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25122>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Opal

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8213>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2213>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8213>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24213>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8213>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24213>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25213>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24213>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25213>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Tanzanite

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8871>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2871>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8871>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24871>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8871>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24871>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25871>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24871>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25871>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Jasper

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8206>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2206>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8206>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24206>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8206>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24206>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25206>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24206>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25206>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Rhodium Salt

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8867>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2867>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8867>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24867>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8867>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24867>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25867>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24867>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25867>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Prasiolite

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8910>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2910>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8910>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24910>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8910>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24910>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25910>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24910>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25910>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Chromatic Glass

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8584>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2584>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8584>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24584>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8584>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24584>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25584>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24584>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25584>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Cubic Zirconia

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8911>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2911>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8911>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24911>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8911>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24911>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25911>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24911>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25911>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Black Opal

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8562>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2562>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8562>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24562>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8562>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24562>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25562>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24562>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25562>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Green Sapphire

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8117>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2117>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8117>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24117>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8117>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24117>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25117>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24117>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25117>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Green Sapphire

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8157>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2157>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8157>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24157>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8157>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24157>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25157>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24157>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25157>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Yellow Garnet

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8244>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2244>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8244>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24244>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8244>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24244>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25244>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24244>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25244>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Amethyst

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8214>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2214>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8214>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24214>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8214>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24214>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25214>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24214>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25214>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Vinteum

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8247>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2247>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8247>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24247>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8247>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24247>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25247>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24247>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25247>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Red Garnet

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8243>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2243>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8243>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24243>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8243>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24243>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25243>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24243>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25243>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Olivine

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8212>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2212>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8212>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24212>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8212>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24212>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25212>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24212>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25212>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Almandine

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_1:8085>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2085>*4)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_1:8085>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:24085>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:8085>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:24085>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(implosion,[<gregtech:meta_item_2:25085>,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:24085>*3)
    .property("explosives", 24)
    .outputs(<gregtech:meta_item_2:25085>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Nether Star

Utils.removeRecipeByOutput(implosion,[<minecraft:nether_star>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2331>*4)
    .property("explosives", 24)
    .outputs(<minecraft:nether_star>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

//Diamond

Utils.removeRecipeByOutput(implosion,[<minecraft:diamond>*3,<gregtech:meta_item_1:110>*2],[],false);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2111>*4)
    .property("explosives", 24)
    .outputs(<minecraft:diamond>*3)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt1>)
    .outputs(<contenttweaker:heavydutyplatet1>)
    .duration(40)
    .EUt(48)
    .property("explosives", 2)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt2>)
    .outputs(<contenttweaker:heavydutyplatet2>)
    .duration(40)
    .EUt(192)
    .property("explosives", 4)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt3>)
    .outputs(<contenttweaker:heavydutyplatet3>)
    .duration(40)
    .EUt(768)
    .property("explosives", 8)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt4>)
    .outputs(<contenttweaker:heavydutyplatet4>)
    .duration(40)
    .EUt(3072)
    .property("explosives", 16)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt5>)
    .outputs(<contenttweaker:heavydutyplatet5>)
    .duration(40)
    .EUt(12288)
    .property("explosives", 32)
    .buildAndRegister();

implosion.recipeBuilder()
    .inputs(<contenttweaker:heavydutyalloyt6>)
    .outputs(<contenttweaker:heavydutyplatet6>)
    .duration(40)
    .EUt(49152)
    .property("explosives", 64)
    .buildAndRegister();