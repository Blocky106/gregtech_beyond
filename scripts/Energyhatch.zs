import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;

Utils.removeRecipeByOutput(c, [<gregtech:machine:704>], [], false);

recipes.addShaped(<gregtech:machine:704>, 
[	[<gregtech:cable:5035>, <gregtech:meta_item_1:12035>, <gregtech:cable:5035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:5035>, <gregtech:meta_item_1:12035>, <gregtech:cable:5035>]]);

recipes.addShaped(<gregtech:machine:2986>, 
[	[<gregtech:cable:6035>, <gregtech:meta_item_1:12035>, <gregtech:cable:6035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:6035>, <gregtech:meta_item_1:12035>, <gregtech:cable:6035>]]);

recipes.addShaped(<gregtech:machine:2987>, 
[	[<gregtech:cable:7035>, <gregtech:meta_item_1:12035>, <gregtech:cable:7035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:7035>, <gregtech:meta_item_1:12035>, <gregtech:cable:7035>]]);

recipes.addShaped(<gregtech:machine:2988>, 
[	[<gregtech:cable:8035>, <gregtech:meta_item_1:12035>, <gregtech:cable:8035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:8035>, <gregtech:meta_item_1:12035>, <gregtech:cable:8035>]]);

recipes.addShaped(<gregtech:machine:2989>, 
[	[<gregtech:cable:9035>, <gregtech:meta_item_1:12035>, <gregtech:cable:9035>],
 	[<contenttweaker:copperalloycoil>, <gregtech:machine:500>, <contenttweaker:copperalloycoil>],
 	[<gregtech:cable:9035>, <gregtech:meta_item_1:12035>, <gregtech:cable:9035>]]);

recipes.addShaped(<gregtech:machine:2995>, 
[	[<gregtech:cable:7071>, <gregtech:meta_item_1:12184>, <gregtech:cable:7071>],
 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:500>, <contenttweaker:cupronickelcoil>],
 	[<gregtech:cable:7071>, <gregtech:meta_item_1:12184>, <gregtech:cable:7071>]]);

recipes.addShaped(<gregtech:machine:2996>, 
[	[<gregtech:cable:8071>, <gtadditions:ga_meta_item:1184>, <gregtech:cable:8071>],
 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:500>, <contenttweaker:cupronickelcoil>],
 	[<gregtech:cable:8071>, <gtadditions:ga_meta_item:1184>, <gregtech:cable:8071>]]);

recipes.addShaped(<gregtech:machine:2997>, 
[	[<gregtech:cable:9071>, <gregtech:meta_item_1:13184>, <gregtech:cable:9071>],
 	[<contenttweaker:cupronickelcoil>, <gregtech:machine:500>, <contenttweaker:cupronickelcoil>],
 	[<gregtech:cable:9071>, <gregtech:meta_item_1:13184>, <gregtech:cable:9071>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:cable:1109>*4, <contenttweaker:ulpic>*4, <ore:circuitGood>, <contenttweaker:kanthalcoil>, <gregtech:machine:502>)
    .fluidInputs(<liquid:soldering_alloy>*144)
    .outputs(<gregtech:machine:3002>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:2109>*4, <contenttweaker:ulpic>*4, <ore:circuitGood>, <gregtech:meta_item_1:12001>*2, <contenttweaker:kanthalcoil>, <gregtech:machine:502>)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gregtech:machine:3003>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:3109>*4, <contenttweaker:ulpic>*4, <ore:circuitGood>, <gtadditions:ga_meta_item:1001>*2, <contenttweaker:kanthalcoil>, <gregtech:machine:502>)
    .fluidInputs(<liquid:soldering_alloy>*432)
    .outputs(<gregtech:machine:3004>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:4109>*6, <contenttweaker:ulpic>*6, <ore:circuitGood>*2, <gregtech:meta_item_1:13001>*2, <contenttweaker:kanthalcoil>, <gregtech:machine:502>)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<gregtech:machine:3005>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:1062>*6, <contenttweaker:lpic>*6, <ore:circuitAdvanced>, <contenttweaker:nichromecoil>, <gregtech:machine:503>)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gregtech:machine:3010>)
    .duration(160)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:2062>*6, <contenttweaker:lpic>*6, <ore:circuitAdvanced>, <gregtech:meta_item_1:12183>*2, <contenttweaker:nichromecoil>, <gregtech:machine:503>)
    .fluidInputs(<liquid:soldering_alloy>*432)
    .outputs(<gregtech:machine:3011>)
    .duration(160)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:3062>*6, <contenttweaker:lpic>*6, <ore:circuitAdvanced>, <gtadditions:ga_meta_item:1183>*2, <contenttweaker:nichromecoil>, <gregtech:machine:503>)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<gregtech:machine:3012>)
    .duration(160)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:4062>*8, <contenttweaker:lpic>*8, <ore:circuitAdvanced>*2, <gregtech:meta_item_1:13183>*2, <contenttweaker:nichromecoil>, <gregtech:machine:503>)
    .fluidInputs(<liquid:soldering_alloy>*720)
    .outputs(<gregtech:machine:3013>)
    .duration(160)
    .EUt(480)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:6001>*8, <gregtech:meta_item_2:32483>*8, <ore:circuitExtreme>, <contenttweaker:tungstensteelcoil>*2, <gregtech:machine:504>)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<gregtech:machine:3018>)
    .duration(160)
    .EUt(1980)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:7001>*8, <gregtech:meta_item_2:32483>*8, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>*2, <contenttweaker:tungstensteelcoil>*2, <gregtech:machine:504>)
    .fluidInputs(<liquid:soldering_alloy>*720)
    .outputs(<gregtech:machine:3019>)
    .duration(160)
    .EUt(1980)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:8001>*8, <gregtech:meta_item_2:32483>*8, <ore:circuitExtreme>, <gtadditions:ga_meta_item:1072>*2, <contenttweaker:tungstensteelcoil>*2, <gregtech:machine:504>)
    .fluidInputs(<liquid:soldering_alloy>*864)
    .outputs(<gregtech:machine:3020>)
    .duration(160)
    .EUt(1980)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:9001>*10, <gregtech:meta_item_2:32483>*10, <ore:circuitExtreme>*2, <gregtech:meta_item_1:13072>*2, <contenttweaker:tungstensteelcoil>*2, <gregtech:machine:504>)
    .fluidInputs(<liquid:soldering_alloy>*1000)
    .outputs(<gregtech:machine:3021>)
    .duration(160)
    .EUt(1980)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:1047>*8, <gregtech:meta_item_2:32479>*10, <ore:circuitElite>*2, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1024)
    .outputs(<gregtech:machine:3021>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:2047>*8, <gregtech:meta_item_2:32479>*10, <ore:circuitElite>*2, <gregtech:meta_item_1:12235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1168)
    .outputs(<gregtech:machine:3021>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:3047>*8, <gregtech:meta_item_2:32479>*10, <ore:circuitElite>*2, <gtadditions:ga_meta_item:1235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1312)
    .outputs(<gregtech:machine:3021>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:4047>*10, <gregtech:meta_item_2:32479>*12, <ore:circuitElite>*3, <gregtech:meta_item_1:13235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1456)
    .outputs(<gregtech:machine:3021>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();