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
    .outputs(<gregtech:machine:3026>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:2047>*8, <gregtech:meta_item_2:32479>*10, <ore:circuitElite>*2, <gregtech:meta_item_1:12235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1168)
    .outputs(<gregtech:machine:3027>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:3047>*8, <gregtech:meta_item_2:32479>*10, <ore:circuitElite>*2, <gtadditions:ga_meta_item:1235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1312)
    .outputs(<gregtech:machine:3028>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:cable:4047>*10, <gregtech:meta_item_2:32479>*12, <ore:circuitElite>*3, <gregtech:meta_item_1:13235>*4, <contenttweaker:hssgcoil>*4, <gregtech:machine:505>)
    .fluidInputs(<liquid:soldering_alloy>*1456)
    .outputs(<gregtech:machine:3029>)
    .duration(200)
    .EUt(8000)
    .buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hppic>*16, <gregtech:cable:1302>*10, <contenttweaker:naquadacoil>*4, <ore:circuitMaster>*2, <gregtech:machine:506>)
	.fluidInputs(<liquid:soldering_alloy>*2048, <liquid:hssg>*800)
	.outputs(<gregtech:machine:3034>)
	.EUt(32000)
	.duration(250)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hppic>*16, <gregtech:cable:2302>*10, <contenttweaker:naquadacoil>*4, <ore:circuitMaster>*2, <gregtech:meta_item_1:12859>*4, <gregtech:machine:506>)
	.fluidInputs(<liquid:soldering_alloy>*2336, <liquid:hssg>*944)
	.outputs(<gregtech:machine:3035>)
	.EUt(32000)
	.duration(250)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hppic>*16, <gregtech:cable:3302>*10, <contenttweaker:naquadacoil>*4, <ore:circuitMaster>*2, <gtadditions:ga_meta_item:1859>*4, <gregtech:machine:506>)
	.fluidInputs(<liquid:soldering_alloy>*2624, <liquid:hssg>*1024)
	.outputs(<gregtech:machine:3036>)
	.EUt(32000)
	.duration(250)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<contenttweaker:hppic>*20, <gregtech:cable:4302>*12, <contenttweaker:naquadacoil>*4, <ore:circuitMaster>*3, <gregtech:meta_item_1:13859>*4, <gregtech:machine:506>)
	.fluidInputs(<liquid:soldering_alloy>*2912, <liquid:hssg>*1232)
	.outputs(<gregtech:machine:3037>)
	.EUt(32000)
	.duration(250)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32476>*32, <gtadditions:ga_meta_item:32426>*16, <gregtech:cable:1964>*2, <contenttweaker:naquadaalloycoil>*8, <ore:circuitUltimate>*2, <contenttweaker:onecoolant>*2, <gregtech:machine:507>)
	.fluidInputs(<liquid:soldering_alloy>*4096, <liquid:naquadah>*1000)
	.outputs(<gregtech:machine:3042>)
	.EUt(131000)
	.duration(300)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32476>*32, <gtadditions:ga_meta_item:32426>*16, <gregtech:cable:2964>*2, <contenttweaker:naquadaalloycoil>*8, <ore:circuitUltimate>*2, <contenttweaker:onecoolant>*2, <gregtech:meta_item_1:12207>*2, <gregtech:machine:507>)
	.fluidInputs(<liquid:soldering_alloy>*5296, <liquid:naquadah>*1200)
	.outputs(<gregtech:machine:3043>)
	.EUt(131000)
	.duration(300)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32476>*32, <gtadditions:ga_meta_item:32426>*16, <gregtech:cable:3964>*2, <contenttweaker:naquadaalloycoil>*8, <ore:circuitUltimate>*2, <contenttweaker:onecoolant>*2, <gtadditions:ga_meta_item:1207>*2, <gregtech:machine:507>)
	.fluidInputs(<liquid:soldering_alloy>*6496, <liquid:naquadah>*1400)
	.outputs(<gregtech:machine:3044>)
	.EUt(131000)
	.duration(250)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32476>*48, <gtadditions:ga_meta_item:32426>*24, <gregtech:cable:4964>*4, <contenttweaker:naquadaalloycoil>*12, <ore:circuitUltimate>*3, <contenttweaker:onecoolant>*4, <gregtech:meta_item_1:13207>*2, <gregtech:machine:507>)
	.fluidInputs(<liquid:soldering_alloy>*7696, <liquid:naquadah>*1600)
	.outputs(<gregtech:machine:3045>)
	.EUt(131000)
	.duration(300)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12636>*16, <gregtech:cable:1308>*16, <gtadditions:ga_meta_item:32424>*16, <contenttweaker:superconductingcoil>*8, <ore:circuitSuperconductor>, <ore:circuitSuperconductor>, <contenttweaker:onecryogeniccoolant>, <contenttweaker:onecryogeniccoolant>, <gregtech:machine:508>)
	.fluidInputs(<liquid:soldering_alloy>*8192, <liquid:naquadah_alloy>*1200)
	.outputs(<gregtech:machine:3050>)
	.EUt(524000)
	.duration(350)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12636>*16, <gregtech:cable:2308>*16, <gtadditions:ga_meta_item:32424>*16, <contenttweaker:superconductingcoil>*8, <ore:circuitSuperconductor>, <ore:circuitSuperconductor>, <contenttweaker:onecryogeniccoolant>, <contenttweaker:onecryogeniccoolant>, <gregtech:meta_item_1:12786>*2, <gregtech:machine:508>)
	.fluidInputs(<liquid:soldering_alloy>*8540, <liquid:naquadah_alloy>*1600)
	.outputs(<gregtech:machine:3051>)
	.EUt(524000)
	.duration(350)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12636>*16, <gregtech:cable:3308>*16 <gtadditions:ga_meta_item:32426>*24, <contenttweaker:superconductingcoil>*8, <ore:circuitSuperconductor>, <ore:circuitSuperconductor>, <contenttweaker:onecryogeniccoolant>, <contenttweaker:onecryogeniccoolant>, <gtadditions:ga_meta_item:1786>*2, <gregtech:machine:508>)
	.fluidInputs(<liquid:soldering_alloy>*9000, <liquid:naquadah_alloy>*2000)
	.outputs(<gregtech:machine:3052>)
	.EUt(524000)
	.duration(350)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12636>*20, <gregtech:cable:4308>*20, <gtadditions:ga_meta_item:32426>*24, <contenttweaker:superconductingcoil>*10, <ore:circuitSuperconductor>*2, <ore:circuitSuperconductor>*2, <contenttweaker:onecryogeniccoolant>*2, <contenttweaker:onecryogeniccoolant>*2, <gregtech:meta_item_1:32608>*2, <gregtech:meta_item_1:13786>*4, <gregtech:machine:508>)
	.fluidInputs(<liquid:soldering_alloy>*12000, <liquid:naquadah_alloy>*2400)
	.outputs(<gregtech:machine:3053>)
	.EUt(550000)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32422>*32, <gtadditions:ga_meta_item:32424>*16, <gregtech:cable:1312>*16, <contenttweaker:titansteelcoil>*10, <gregtech:machine:3239>, <contenttweaker:twocryogeniccoolant>, <contenttweaker:twocryogeniccoolant>, <ore:circuitInfinite>, <ore:circuitInfinite>)
	.fluidInputs(<liquid:soldering_alloy>*16384, <liquid:osmiridium>*1400)
	.outputs(<gregtech:machine:4035>)
	.EUt(2009700)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32422>*32, <gtadditions:ga_meta_item:32424>*16, <gregtech:cable:2312>*16, <contenttweaker:titansteelcoil>*10, <gregtech:machine:3239>, <contenttweaker:twocryogeniccoolant>, <contenttweaker:twocryogeniccoolant>, <ore:circuitInfinite>, <ore:circuitInfinite>, <contenttweaker:forcefieldgenerator>, <gregtech:meta_item_1:19730>*16)
	.fluidInputs(<liquid:soldering_alloy>*24500, <liquid:osmiridium>*1600)
	.outputs(<gregtech:machine:4036>)
	.EUt(2009700)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32422>*32, <gtadditions:ga_meta_item:32424>*16, <gregtech:cable:3312>*16, <contenttweaker:titansteelcoil>*10, <gregtech:machine:3239>, <contenttweaker:twocryogeniccoolant>, <contenttweaker:twocryogeniccoolant>, <ore:circuitInfinite>, <ore:circuitInfinite>, <contenttweaker:forcefieldgenerator>, <gregtech:meta_item_1:12730>*16)
	.fluidInputs(<liquid:soldering_alloy>*30000, <liquid:osmiridium>*2000)
	.outputs(<gregtech:machine:4037>)
	.EUt(2009700)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32422>*64, <gtadditions:ga_meta_item:32424>*24, <gregtech:cable:4312>*24, <contenttweaker:titansteelcoil>*12, <gregtech:machine:3239>, <contenttweaker:twocryogeniccoolant>*2, <contenttweaker:twocryogeniccoolant>*2, <ore:circuitInfinite>*2, <ore:circuitInfinite>*2, <contenttweaker:forcefieldgenerator>*2, <gtadditions:ga_meta_item:730>*32, <gregtech:meta_item_2:16709>*24)
	.fluidInputs(<liquid:soldering_alloy>*37652, <liquid:osmiridium>*2560)
	.outputs(<gregtech:machine:4038>)
	.EUt(202000)
	.duration(400)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32430>*10, <gregtech:ga_cable:1852>*16, <gtadditions:ga_cable>*5, <gtadditions:ga_meta_item:32499>*16, <contenttweaker:pykoniumcoil>*4, <gregtech:machine:3240>, <ore:circuitUev>, <ore:circuitUev>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gregtech:meta_item_1:32687>*2)
	.fluidInputs(<liquid:soldering_alloy>*32768, <liquid:osmiridium>*1400)
	.outputs(<gregtech:machine:4043>)
	.EUt(8000000)
	.duration(450)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32430>*12, <gregtech:ga_cable:2852>*16, <gtadditions:ga_cable>*6, <gtadditions:ga_meta_item:32499>*16, <contenttweaker:pykoniumcoil>*4, <gregtech:machine:3240>, <ore:circuitUev>, <ore:circuitUev>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gregtech:meta_item_1:12735>*2, <gregtech:meta_item_1:32687>*2)
	.fluidInputs(<liquid:soldering_alloy>*40000, <liquid:osmiridium>*1800)
	.outputs(<gregtech:machine:4044>)
	.EUt(8000000)
	.duration(450)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32430>*15, <gregtech:ga_cable:3852>*16, <gtadditions:ga_cable>*8, <gtadditions:ga_meta_item:32499>*16, <contenttweaker:pykoniumcoil>*4, <gregtech:machine:3240>, <ore:circuitUev>, <ore:circuitUev>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gregtech:meta_item_1:13735>*2, <gregtech:meta_item_1:32687>*2)
	.fluidInputs(<liquid:soldering_alloy>*46590, <liquid:osmiridium>*2000)
	.outputs(<gregtech:machine:4045>)
	.EUt(8000000)
	.duration(450)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32430>*20, <gregtech:ga_cable:4852>*20, <gtadditions:ga_cable>*12, <gtadditions:ga_meta_item:32499>*20, <contenttweaker:pykoniumcoil>*6, <gregtech:machine:3240>, <ore:circuitUev>*2, <ore:circuitUev>*2, <contenttweaker:tricryogeniccoolant>*2, <contenttweaker:tricryogeniccoolant>*2, <gregtech:frame_bohrium>*4, <gregtech:meta_item_1:32687>*4)
	.fluidInputs(<liquid:soldering_alloy>*52450, <liquid:osmiridium>*2400, <liquid:dark_naquatic_abyssal_alloy>*288)
	.outputs(<gregtech:machine:4046>)
	.EUt(8500000)
	.duration(500)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:ga_cable:1721>*16, <gtadditions:ga_meta_item:32595>*16, <gtadditions:ga_meta_item:32459>*4, <contenttweaker:blacktitaniumcoil>*4, <gregtech:machine:3241>, <ore:circuitUiv>, <ore:circuitUiv>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>)
	.fluidInputs(<liquid:soldering_alloy>*65536, <liquid:osmiridium>*1400, <liquid:dark_naquatic_abyssal_alloy>*500)
	.outputs(<gregtech:machine:4046>)
	.EUt(32000000)
	.duration(500)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:ga_cable:2721>*16, <gtadditions:ga_meta_item:32595>*16, <gtadditions:ga_meta_item:32459>*4, <contenttweaker:blacktitaniumcoil>*4, <gregtech:machine:3241>, <ore:circuitUiv>, <ore:circuitUiv>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gregtech:meta_item_1:12993>*16, <gtadditions:ga_meta_item:32391>*2)
	.fluidInputs(<liquid:soldering_alloy>*65536, <liquid:osmiridium>*1400, <liquid:dark_naquatic_abyssal_alloy>*500)
	.outputs(<gregtech:machine:4046>)
	.EUt(32000000)
	.duration(500)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:ga_cable:3724>*16, <gtadditions:ga_meta_item:32595>*16, <gtadditions:ga_meta_item:32459>*4, <contenttweaker:neutroniumcoil>*4, <gregtech:machine:3242>, <ore:circuitUmv>, <ore:circuitUmv>, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gtadditions:ga_meta_item:1993>*16, <gtadditions:ga_meta_item:32392>*2)
	.fluidInputs(<liquid:soldering_alloy>*80000, <liquid:osmiridium>*2000, <liquid:dark_naquatic_abyssal_alloy>*1200)
	.outputs(<gregtech:machine:4047>)
	.EUt(32000000)
	.duration(500)
	.buildAndRegister();

assembly_line.recipeBuilder()
	.inputs(<gregtech:ga_cable:4671>*24, <gtadditions:ga_meta_item:32595>*20, <gtadditions:ga_meta_item:32459>*8, <contenttweaker:cosmicneutroniumcoil>*8, <gregtech:machine:3242>, <ore:circuitUxv>*2, <ore:circuitUxv>*2, <contenttweaker:tricryogeniccoolant>, <contenttweaker:tricryogeniccoolant>, <gregtech:meta_item_1:13671>*16, <gtadditions:ga_meta_item:32393>*2)
	.fluidInputs(<liquid:soldering_alloy>*120000, <liquid:high_energy_qgp>*1200, <liquid:highlycomplicatedcosmicrubber>*500)
	.outputs(<gregtech:machine:4048>)
	.EUt(32000000)
	.duration(500)
	.buildAndRegister();

# ULV 
recipes.remove(<gregtech:machine:2986>);
recipes.remove(<gregtech:machine:2987>);
recipes.remove(<gregtech:machine:2988>);
recipes.remove(<gregtech:machine:2989>);

#LV

recipes.remove(<gregtech:machine:2994>);
recipes.remove(<gregtech:machine:2995>);
recipes.remove(<gregtech:machine:2996>);
recipes.remove(<gregtech:machine:2997>);

#MV

recipes.remove(<gregtech:machine:3002>);
recipes.remove(<gregtech:machine:3003>);
recipes.remove(<gregtech:machine:3004>);
recipes.remove(<gregtech:machine:3005>);

#HV

recipes.remove(<gregtech:machine:3010>);
recipes.remove(<gregtech:machine:3011>);
recipes.remove(<gregtech:machine:3012>);
recipes.remove(<gregtech:machine:3013>);

#EV

recipes.remove(<gregtech:machine:3018>);
recipes.remove(<gregtech:machine:3019>);
recipes.remove(<gregtech:machine:3020>);
recipes.remove(<gregtech:machine:3021>);

#IV

recipes.remove(<gregtech:machine:3026>);
recipes.remove(<gregtech:machine:3027>);
recipes.remove(<gregtech:machine:3028>);
recipes.remove(<gregtech:machine:3029>);

#LUV 

recipes.remove(<gregtech:machine:3034>);
recipes.remove(<gregtech:machine:3035>);
recipes.remove(<gregtech:machine:3036>);
recipes.remove(<gregtech:machine:3037>);

#ZPM 

recipes.remove(<gregtech:machine:3042>);
recipes.remove(<gregtech:machine:3043>);
recipes.remove(<gregtech:machine:3044>);
recipes.remove(<gregtech:machine:3045>);

#UV 

recipes.remove(<gregtech:machine:3050>);
recipes.remove(<gregtech:machine:3051>);
recipes.remove(<gregtech:machine:3052>);
recipes.remove(<gregtech:machine:3053>);

#UHV 

recipes.remove(<gregtech:machine:4035>);
recipes.remove(<gregtech:machine:4036>);
recipes.remove(<gregtech:machine:4037>);
recipes.remove(<gregtech:machine:4038>);

#UEV 

recipes.remove(<gregtech:machine:4043>);
recipes.remove(<gregtech:machine:4044>);
recipes.remove(<gregtech:machine:4045>);
recipes.remove(<gregtech:machine:4046>);

#UIV 

recipes.remove(<gregtech:machine:4051>);
recipes.remove(<gregtech:machine:4052>);
recipes.remove(<gregtech:machine:4053>);
recipes.remove(<gregtech:machine:4054>);

#UMV

recipes.remove(<gregtech:machine:4059>);
recipes.remove(<gregtech:machine:4060>);
recipes.remove(<gregtech:machine:4061>);
recipes.remove(<gregtech:machine:4062>);

#UXV 

recipes.remove(<gregtech:machine:4067>);
recipes.remove(<gregtech:machine:4068>);
recipes.remove(<gregtech:machine:4069>);
recipes.remove(<gregtech:machine:4070>);