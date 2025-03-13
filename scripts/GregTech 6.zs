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

recipes.addShaped(<gregtech:machine:1560>, [[<ore:wireFineElectrum>, <gregtech:meta_item_1:32640>, <ore:wireFineElectrum>], [<gregtech:meta_item_1:32600>, <gregtech:machine:501>, <gregtech:meta_item_1:32600>], [<ore:circuitBasic>, <ore:plateSteel>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1561>, [[<ore:wireFineChrome>, <gregtech:meta_item_1:32641>, <ore:wireFineChrome>], [<gregtech:meta_item_1:32601>, <gregtech:machine:502>, <gregtech:meta_item_1:32601>], [<ore:circuitGood>, <ore:plateAluminium>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1562>, [[<ore:wireFineMagnalium>, <gregtech:meta_item_1:32642>, <ore:wireFineMagnalium>], [<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:meta_item_1:32602>], [<ore:circuitAdvanced>, <ore:plateStainlessSteel>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1563>, [[<ore:wireFineEnderium>, <gregtech:meta_item_1:32643>, <ore:wireFineEnderium>], [<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>], [<ore:circuitExtreme>, <ore:plateTitanium>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1564>, [[<ore:wireFineUltimet>, <gregtech:meta_item_1:32644>, <ore:wireFineUltimet>], [<gregtech:meta_item_1:32604>, <gregtech:machine:505>, <gregtech:meta_item_1:32604>], [<ore:circuitElite>, <ore:plateTungstenSteel>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1565>, [[<ore:wireFineOsmium>, <gregtech:meta_item_1:32645>, <ore:wireFineOsmium>], [<gregtech:meta_item_1:32606>, <gregtech:machine:506>, <gregtech:meta_item_1:32606>], [<ore:circuitMaster>, <ore:plateRhodiumPlatedPalladium>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1566>, [[<contenttweaker:wrapofruriditfinewire>, <gregtech:meta_item_1:32646>, <contenttweaker:wrapofruriditfinewire>], [<gregtech:meta_item_1:32607>, <gregtech:machine:507>, <gregtech:meta_item_1:32607>], [<ore:circuitUltimate>, <ore:plateOsmiridium>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1567>, [[<ore:wireFinePedot>, <gregtech:meta_item_1:32647>, <ore:wireFinePedot>], [<gregtech:meta_item_1:32608>, <gregtech:machine:508>, <gregtech:meta_item_1:32608>], [<ore:circuitSuperconductor>, <ore:plateTritanium>, <ore:circuitSuperconductor>]]);

recipes.addShaped(<gregtech:machine:1512>, [[<ore:circuitGood>, <ore:craftingLensMagenta>, <ore:circuitGood>], [<gregtech:meta_item_1:32601>, <gregtech:machine:502>, <gregtech:meta_item_1:32601>], [<ore:plateAluminium>, <gregtech:meta_item_1:32681>, <ore:plateAluminium>]]);
recipes.addShaped(<gregtech:machine:1513>, [[<ore:circuitAdvanced>, <ore:craftingLensMagenta>, <ore:circuitAdvanced>], [<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:meta_item_1:32602>], [<ore:plateStainlessSteel>, <gregtech:meta_item_1:32682>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<gregtech:machine:1514>, [[<ore:circuitExtreme>, <ore:craftingLensMagenta>, <ore:circuitExtreme>], [<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>], [<ore:plateTitanium>, <gregtech:meta_item_1:32683>, <ore:plateTitanium>]]);
recipes.addShaped(<gregtech:machine:1515>, [[<ore:circuitElite>, <ore:craftingLensMagenta>, <ore:circuitElite>], [<gregtech:meta_item_1:32604>, <gregtech:machine:505>, <gregtech:meta_item_1:32604>], [<ore:plateTungstenSteel>, <gregtech:meta_item_1:32684>, <ore:plateTungstenSteel>]]);
recipes.addShaped(<gregtech:machine:1516>, [[<ore:circuitMaster>, <ore:craftingLensMagenta>, <ore:circuitMaster>], [<gregtech:meta_item_1:32606>, <gregtech:machine:506>, <gregtech:meta_item_1:32606>],[<ore:plateRhodiumPlatedPalladium>, <gregtech:meta_item_1:32685>, <ore:plateRhodiumPlatedPalladium>]]);

recipes.addShaped(<gregtech:machine:1409>, [[<ore:plateRhodiumPlatedPalladium>, <gregtech:meta_item_1:32606>, <ore:plateRhodiumPlatedPalladium>], [<ore:cableGtQuadrupleNiobiumTitanium>, <gregtech:machine:506>, <ore:cableGtQuadrupleNiobiumTitanium>], [<ore:circuitMaster>, <ore:craftingGrinder>, <ore:circuitMaster>]]);

recipes.addShaped(<gregtech:machine:1434>, [[<ore:circuitSuperconductor>, <ore:plateNylon610>, <ore:circuitSuperconductor>], [<gregtech:meta_item_1:32697>, <gregtech:machine:508>, <gregtech:meta_item_1:32687>], [<ore:circuitSuperconductor>, <ore:plateNylon610>, <ore:circuitSuperconductor>]]);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*3000,<liquid:oxygen>*1500)
    .inputs(<gregtech:meta_item_1:2009>)
    .fluidOutputs(<liquid:boron_trichloride>*1000,<liquid:water>*3000)
    .duration(200)
    .EUt(50)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000,<liquid:potassium_hydroxide>*864)
    .inputs(<nuclearcraft:dust:15>*3)
    .fluidOutputs(<liquid:steam>*1000)
    .outputs(<gtadditions:ga_dust:246>*7)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:176>)
    .fluidOutputs(<liquid:manganese_sulfate_solution>*1000)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gtadditions:ga_dust:176>)
    .fluidOutputs(<liquid:manganese_sulfate_solution>*1000)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:light_water>*900,<liquid:deuterium>*100)
    .fluidOutputs(<liquid:water>*1000)
    .duration(400)
    .EUt(250)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:348>)
    .fluidInputs(<liquid:butylaniline>*1000,<liquid:methoxybenzaldehyde>*1000)
    .fluidOutputs(<liquid:mbba>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:hydrofluoric_acid>*4000,<liquid:boric_acid>*1000)
    .fluidOutputs(<liquid:fluoroboric_acid>*1000,<liquid:water>*3000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder() 
    .fluidInputs(<liquid:sulfur_trioxide>*1000,<liquid:hydrogen_chloride>*1000)
    .fluidOutputs(<liquid:chlorosulfonic_acid>*1000)
    .duration(200)
    .EUt(420)
    .buildAndRegister();

lcr.recipeBuilder() 
    .fluidInputs(<liquid:sulfur_trioxide>*1000,<liquid:hydrogen_chloride>*1000)
    .fluidOutputs(<liquid:chlorosulfonic_acid>*1000)
    .duration(200)
    .EUt(420)
    .buildAndRegister();

chemical_plant.recipeBuilder()
    .fluidInputs(<liquid:acetic_anhydride>*1000,<liquid:isochloropropane>*1000,<liquid:resorcinol>*1000,<liquid:propene>*1000,<liquid:nitric_acid>*2000)
    .inputs(<gtadditions:ga_dust:356>*3)
    .fluidOutputs(<liquid:water>*2000,<liquid:acetic_acid>*1000,<liquid:sodium_acetate>*1000,<liquid:dinitrodipropanyloxybenzene>*1000)
    .outputs(<gregtech:meta_item_1:2155>*2)
    .duration(1200)
    .EUt(7920)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*3000,<liquid:ammonia>*1000,<liquid:toluene>*1000)
    .fluidOutputs(<liquid:benzonitrile>*1000,<liquid:water>*3000)
    .duration(80)
    .EUt(300)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_sulfide>*1000,<liquid:methanol>*2000)
    .fluidOutputs(<liquid:dimethylsulfide>*1000,<liquid:water>*2000)
    .duration(80)
    .EUt(300)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10013>);
furnace.remove(<gregtech:meta_item_1:9013>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2013>)
    .property("temperature", 1000)
    .EUt(80)
    .duration(400)
    .outputs(<gregtech:meta_item_1:10013>)
    .buildAndRegister();

green_house.recipeBuilder()
    .fluidInputs(<liquid:water>*2000)
    .notConsumable(<minecraft:vine>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<minecraft:vine>)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

green_house.recipeBuilder()
    .fluidInputs(<liquid:water>*2000)
    .inputs(<minecraft:dye:15>)
    .notConsumable(<minecraft:vine>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<minecraft:vine>*2)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

green_house.recipeBuilder()
    .fluidInputs(<liquid:water>*2000)
    .inputs(<gregtech:meta_item_1:2754>)
    .notConsumable(<minecraft:vine>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<minecraft:vine>*3)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:potassium_hydroxide>*1000,<liquid:pentanol>*1000)
    .inputs(<gtadditions:ga_dust:32241>)
    .fluidOutputs(<liquid:potassium_amyl_xanthate>*1000)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1540>, [[<ore:plateSteel>, <contenttweaker:lasermodule>, <ore:plateSteel>], [<gregtech:meta_item_1:32650>, <gregtech:machine:501>, <gregtech:meta_item_1:32650>], [<ore:circuitBasic>, <gregtech:meta_item_1:32680>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1541>, [[<ore:plateAluminium>, <contenttweaker:lasermodule>, <ore:plateAluminium>], [<gregtech:meta_item_1:32651>, <gregtech:machine:502>, <gregtech:meta_item_1:32651>], [<ore:circuitGood>, <gregtech:meta_item_1:32681>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1542>, [[<ore:plateStainlessSteel>, <contenttweaker:lasermodule>, <ore:plateStainlessSteel>], [<gregtech:meta_item_1:32652>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>], [<ore:circuitAdvanced>, <gregtech:meta_item_1:32682>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1543>, [[<ore:plateTitanium>, <contenttweaker:lasermodule>, <ore:plateTitanium>], [<gregtech:meta_item_1:32653>, <gregtech:machine:504>, <gregtech:meta_item_1:32653>], [<ore:circuitExtreme>, <gregtech:meta_item_1:32683>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1544>, [[<ore:plateTungstenSteel>, <contenttweaker:lasermodule>, <ore:plateTungstenSteel>], [<gregtech:meta_item_1:32654>, <gregtech:machine:505>, <gregtech:meta_item_1:32654>], [<ore:circuitElite>, <gregtech:meta_item_1:32684>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1545>, [[<ore:plateRhodiumPlatedPalladium>, <contenttweaker:lasermodule>, <ore:plateRhodiumPlatedPalladium>], [<gregtech:meta_item_1:32655>, <gregtech:machine:506>, <gregtech:meta_item_1:32655>], [<ore:circuitMaster>, <gregtech:meta_item_1:32685>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1546>, [[<ore:plateOsmiridium>, <contenttweaker:lasermodule>, <ore:plateOsmiridium>], [<gregtech:meta_item_1:32656>, <gregtech:machine:507>, <gregtech:meta_item_1:32656>], [<ore:circuitUltimate>, <gregtech:meta_item_1:32686>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1547>, [[<ore:plateTritanium>, <contenttweaker:lasermodule>, <ore:plateTritanium>], [<gregtech:meta_item_1:32657>, <gregtech:machine:508>, <gregtech:meta_item_1:32657>], [<ore:circuitSuperconductor>, <gregtech:meta_item_1:32687>, <ore:circuitSuperconductor>]]);

recipes.addShaped(<gregtech:machine:1524>, [[<gregtech:meta_item_1:32682>, <gregtech:meta_item_1:32642>, <gregtech:meta_item_1:32682>], [<gregtech:meta_item_1:32692>, <gregtech:machine:503>, <gregtech:meta_item_1:32692>], [<ore:circuitAdvanced>, <gregtech:meta_item_1:32602>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1525>, [[<gregtech:meta_item_1:32683>, <gregtech:meta_item_1:32643>, <gregtech:meta_item_1:32683>], [<gregtech:meta_item_1:32693>, <gregtech:machine:504>, <gregtech:meta_item_1:32693>], [<ore:circuitExtreme>, <gregtech:meta_item_1:32603>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1526>, [[<gregtech:meta_item_1:32684>, <gregtech:meta_item_1:32644>, <gregtech:meta_item_1:32684>], [<gregtech:meta_item_1:32694>, <gregtech:machine:505>, <gregtech:meta_item_1:32694>], [<ore:circuitElite>, <gregtech:meta_item_1:32673>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1527>, [[<gregtech:meta_item_1:32685>, <gregtech:meta_item_1:32645>, <gregtech:meta_item_1:32685>], [<gregtech:meta_item_1:32695>, <gregtech:machine:506>, <gregtech:meta_item_1:32695>], [<ore:circuitMaster>, <gregtech:meta_item_1:32674>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1528>, [[<gregtech:meta_item_1:32686>, <gregtech:meta_item_1:32646>, <gregtech:meta_item_1:32686>], [<gregtech:meta_item_1:32696>, <gregtech:machine:507>, <gregtech:meta_item_1:32696>], [<ore:circuitUltimate>, <gregtech:meta_item_1:32675>, <ore:circuitUltimate>]]);

recipes.addShaped(<gregtech:machine:1450>, [[<ore:circuitBasic>, <gregtech:meta_item_1:32690>, <gregtech:meta_item_1:32680>], [<gregtech:meta_item_1:32690>, <gregtech:machine:501>, <gregtech:meta_item_1:32690>], [<gregtech:meta_item_1:32680>, <gregtech:meta_item_1:32690>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1451>, [[<ore:circuitGood>, <gregtech:meta_item_1:32691>, <gregtech:meta_item_1:32681>], [<gregtech:meta_item_1:32691>, <gregtech:machine:502>, <gregtech:meta_item_1:32691>], [<gregtech:meta_item_1:32681>, <gregtech:meta_item_1:32691>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1452>, [[<ore:circuitAdvanced>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:32682>], [<gregtech:meta_item_1:32692>, <gregtech:machine:503>, <gregtech:meta_item_1:32692>], [<gregtech:meta_item_1:32682>, <gregtech:meta_item_1:32692>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1453>, [[<ore:circuitMaster>, <gregtech:meta_item_1:32693>, <gregtech:meta_item_1:32683>], [<gregtech:meta_item_1:32693>, <gregtech:machine:504>, <gregtech:meta_item_1:32693>], [<gregtech:meta_item_1:32683>, <gregtech:meta_item_1:32693>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1454>, [[<ore:circuitElite>, <gregtech:meta_item_1:32694>, <gregtech:meta_item_1:32684>], [<gregtech:meta_item_1:32694>, <gregtech:machine:505>, <gregtech:meta_item_1:32694>], [<gregtech:meta_item_1:32684>, <gregtech:meta_item_1:32673>, <ore:circuitElite>]]);

Utils.removeRecipeByOutput(ebf,[<gregtech:meta_item_1:10197>,<gregtech:meta_item_1:2122>*3],[],true);

fluid_compressor.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:high_pressure_water>*1000)
    .EUt(60)
    .duration(240)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1610>, [	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32640>], 	[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], 	[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32640>]]);
recipes.addShaped(<gregtech:machine:1611>, [	[<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32641>], 	[<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32641>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32641>]]);
recipes.addShaped(<gregtech:machine:1612>, [	[<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32642>], 	[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], 	[<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32642>]]);
recipes.addShaped(<gregtech:machine:1613>, [	[<gregtech:meta_item_1:32643>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32643>], 	[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], 	[<gregtech:meta_item_1:32643>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32643>]]);
recipes.addShaped(<gregtech:machine:1614>, [	[<gregtech:meta_item_1:32644>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32644>], 	[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], 	[<gregtech:meta_item_1:32644>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32644>]]);
recipes.addShaped(<gregtech:machine:1615>, [	[<gregtech:meta_item_1:32645>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32645>], 	[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], 	[<gregtech:meta_item_1:32645>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32645>]]);
recipes.addShaped(<gregtech:machine:1616>, [	[<gregtech:meta_item_1:32646>, <gregtech:meta_item_1:32616>, <gregtech:meta_item_1:32646>], 	[<ore:circuitUltimate>, <gregtech:machine:507>, <ore:circuitUltimate>], 	[<gregtech:meta_item_1:32646>, <gregtech:meta_item_1:32616>, <gregtech:meta_item_1:32646>]]);
recipes.addShaped(<gregtech:machine:1617>, [	[<gregtech:meta_item_1:32647>, <gregtech:meta_item_1:32617>, <gregtech:meta_item_1:32647>], 	[<ore:circuitSuperconductor>, <gregtech:machine:508>, <ore:circuitSuperconductor>], 	[<gregtech:meta_item_1:32647>, <gregtech:meta_item_1:32617>, <gregtech:meta_item_1:32647>]]);

furnace.remove(<gregtech:meta_item_1:10112>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2112>)
    .outputs(<gregtech:meta_item_1:10112>)
    .duration(400)
    .EUt(120)
    .property("temperature", 2000)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:9112>);

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:iron_chloride>*1000)
    .fluidOutputs(<liquid:chlorine>*3000)
    .outputs(<gregtech:meta_item_1:2033>)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembly_line,[<gregtech:meta_item_2:32501>],[],true);

assembler.recipeBuilder()
    .fluidInputs(<liquid:polyetheretherketone>*1440)
    .inputs(<gregtech:frame_dark_naquatic_abyssal_alloy>, <gregtech:meta_item_1:12205>*6, <gtadditions:ga_machine_casing>, <gregtech:meta_item_1:12631>*3)
    .outputs(<contenttweaker:ore_factory_casing>)
    .duration(200)
    .EUt(600000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .fluidInputs(<liquid:cross_linked_polyethylene>*2000, <liquid:osmiridium>*1500, <liquid:polycyclopentene>*500, <liquid:polyetheretherketone>*144)
    .inputs(<gregtech:frame_dark_naquatic_abyssal_alloy>*4, <gregtech:meta_item_1:12631>*5, <gregtech:meta_item_1:12791>*10, <gtadditions:ga_nuclear_casing:9>*2, <gregtech:meta_item_1:32676>)
    .outputs(<contenttweaker:core_processing_casing>)
    .duration(400)
    .EUt(1500000)
    .buildAndRegister();

recipes.remove(<gregtech:machine:700>);
recipes.remove(<gregtech:machine:701>);

recipes.addShaped(<gregtech:machine:700>, [[null, <ore:chest>], [null, <gregtech:machine_casing>]]);
recipes.addShaped(<gregtech:machine:701>, [[null, <gregtech:machine_casing>], [null, <ore:chest>]]);

cstr_s.recipeBuilder()
    .outputs(<gtadditions:ga_dust:930>*6)
    .fluidInputs(<liquid:boron_fluoride>*1000)
    .inputs(<gregtech:meta_item_1:2773>*2)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(80)
    .buildAndRegister();

tbr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32184>)
    .fluidInputs(<liquid:water>*4000,<liquid:purified_uranyl_nitrate_solution>*2000)
    .fluidOutputs(<liquid:carbon_monoxide>*8000,<liquid:nitric_acid>*2000,<liquid:uranium_diuranate>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:917>*3)
    .fluidInputs(<liquid:acetic_anhydride>*1000,<liquid:tetrahydrofuran>*1000)
    .fluidOutputs(<liquid:succinimidyl_acetate_solution>*1000)
    .EUt(280)
    .duration(700)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:917>*3)
    .fluidInputs(<liquid:acetic_anhydride>*1000,<liquid:tetrahydrofuran>*1000)
    .fluidOutputs(<liquid:succinimidyl_acetate_solution>*1000)
    .EUt(280)
    .duration(700)
    .buildAndRegister();

rotary_evaporator.recipeBuilder()
    .fluidInputs(<liquid:succinimidyl_acetate_solution>*1000)
    .outputs(<gtadditions:ga_dust:917>*4)
    .fluidOutputs(<liquid:acetic_acid>*1000,<liquid:tetrahydrofuran>*1000)
    .EUt(280)
    .duration(700)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .inputs(<gregtech:meta_item_1:2361>*3)
    .fluidOutputs(<liquid:dissolved_chalcocite_solution>*1000)
    .outputs(<gregtech:meta_item_1:2328>)
    .EUt(280)
    .duration(700)
    .buildAndRegister();

tbr.recipeBuilder()
    .inputs(<contenttweaker:iron_concentrate>)
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .duration(200)
    .EUt(8)
    .fluidOutputs(<liquid:diluted_iron_concentrate>*1000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:diluted_iron_concentrate>*1000)
    .notConsumable(<gregtech:meta_item_1:14184>)
    .outputs(<gregtech:meta_item_1:2033>*4)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10632>);
furnace.remove(<gregtech:meta_item_1:9632>);

Utils.removeRecipeByOutput(ebf, [<gtadditions:ga_dust:185>*4,<gtadditions:ga_dust:182>*9],[<liquid:water>*1000],true);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*3,<gtadditions:ga_dust:190>*3,<contenttweaker:floated_tantalite>*5)
    .outputs(<gtadditions:ga_dust:185>*4,<gtadditions:ga_dust:182>*9)
    .fluidOutputs(<liquid:water>*1000)
    .property("temperature", 2000)
    .EUt(200)
    .duration(100)
    .buildAndRegister();

electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2608>*7], null).remove();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:18183>*4,<gregtech:meta_item_1:12184>*6,<gregtech:frame_steel>)
    .outputs(<contenttweaker:blade_assembly>)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:bromine>*2000,<liquid:oxygen>*1000,<liquid:para_xylene>*1000)
    .fluidOutputs(<liquid:dibromomethylbenzene>*1000,<liquid:water>*1000)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:citral>*1000,<liquid:acetone>*1000)
    .fluidOutputs(<liquid:beta_ionone>*1000,<liquid:water>*1000)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:chloroauric_acid>*1000)
    .notConsumable(<gregtech:meta_item_1:2832>)
    .outputs(<gregtech:meta_item_1:2026>*2)
    .fluidOutputs(<liquid:water>*1000,<liquid:chlorine>*1000)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:ammonium_chloride>*4000,<liquid:acidic_iridium_solution>*1000)
    .outputs(<gregtech:meta_item_1:2871>*8)
    .fluidOutputs(<liquid:ammonia>*4000,<liquid:water>*3000)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:sodium_nitrate_solution>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:2865>*5)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*2000,<liquid:oxygen>*1000)
    .inputs(<gregtech:meta_item_1:2063>)
    .fluidOutputs(<liquid:sodium_nitrate_solution>*1000)
    .EUt(80)
    .duration(200)
    .buildAndRegister();

engraving_unit_s.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32447>)
    .notConsumable(<contenttweaker:circiut_board_lithography_mask>)
    .fluidInputs(<liquid:novolacs_photoresist>*50)
    .outputs(<contenttweaker:engraved_phenolic_board>)
    .EUt(8)
    .duration(400)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*100)
    .inputs(<contenttweaker:engraved_phenolic_board>)
    .outputs(<contenttweaker:etched_phenolic_board>)
    .EUt(9)
    .duration(340)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs(<contenttweaker:etched_phenolic_board>,<gregtech:meta_item_1:19071>*2)
    .outputs(<gtadditions:ga_meta_item:32030>)
    .EUt(9)
    .duration(340)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:carbon_dioxide>*1000,<liquid:potassium_hydroxide>*2000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gtadditions:ga_dust:106>*6)
    .EUt(90)
    .duration(340)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:acetone>*2000)
    .fluidOutputs(<liquid:water>*1000,<liquid:mesityl_oxide>*1000)
    .notConsumable(<gtadditions:ga_dust:117>)
    .EUt(180)
    .duration(450)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000,<liquid:thallium_sulfate>*1000)
    .fluidOutputs(<liquid:water>*1000,<liquid:sulfuric_acid>*1000)
    .outputs(<gtadditions:ga_dust:129>*4)
    .EUt(180)
    .duration(800)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000,<liquid:formic_acid>*1000)
    .fluidOutputs(<liquid:water>*1000,<liquid:methyl_formate>*1000)
    .EUt(180)
    .duration(200)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:hydroxylamine>*1000,<liquid:formamide>*1000)
    .fluidOutputs(<liquid:amidoxime>*1000,<liquid:water>*1000)
    .EUt(80)
    .duration(210)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrofluoric_acid>*6000)
    .inputs(<gtadditions:ga_dust:256>*5)
    .fluidOutputs(<liquid:boron_fluoride>*2000,<liquid:water>*3000)
    .EUt(180)
    .duration(260)
    .buildAndRegister();

Utils.removeRecipeByOutput(mixer,[],[<liquid:amine_mixture>*1000],true);
Utils.removeRecipeByOutput(chemReactor,[],[<liquid:water>*2000,<liquid:dimethylamine>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:water>*2000,<liquid:dimethylamine>*1000],true);

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:thallium_sulfate>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtechfoodoption:gtfo_oredict_item:1033>*6)
    .EUt(380)
    .duration(220)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1580>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32610>], 	[<ore:circuitBasic>, <gregtech:meta_item_2:32700>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1581>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 	[<ore:circuitGood>, <gregtech:meta_item_2:32701>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1582>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32612>, <gregtech:machine:503>, <gregtech:meta_item_1:32612>], 	[<ore:circuitAdvanced>, <gregtech:meta_item_2:32702>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1583>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32613>, <gregtech:machine:504>, <gregtech:meta_item_1:32613>], 	[<ore:circuitExtreme>, <gregtech:meta_item_2:32703>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1584>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32614>, <gregtech:machine:505>, <gregtech:meta_item_1:32614>], 	[<ore:circuitElite>, <gregtech:meta_item_2:32704>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1585>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32615>, <gregtech:machine:506>, <gregtech:meta_item_1:32615>], 	[<ore:circuitMaster>, <gregtech:meta_item_2:32705>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1586>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32616>, <gregtech:machine:507>, <gregtech:meta_item_1:32616>], 	[<ore:circuitUltimate>, <gregtech:meta_item_2:32706>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1587>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32617>, <gregtech:machine:508>, <gregtech:meta_item_1:32617>], 	[<ore:circuitSuperconductor>, <gregtech:meta_item_2:32707>, <ore:circuitSuperconductor>]]);

furnace.remove(<gregtech:meta_item_1:10041>, <gregtech:ore_molybdenite_0>);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*2000)
    .inputs(<gregtech:meta_item_1:2039>)
    .outputs(<gtadditions:ga_dust:32267>*3)
    .fluidOutputs(<liquid:hydrogen>*2000)
    .duration(80)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32267>*3)
    .outputs(<nuclearcraft:dust:15>)
    .fluidOutputs(<liquid:nitric_oxide>*2000)
    .duration(80)
    .EUt(200)
    .buildAndRegister();

furnace.remove(<nuclearcraft:ingot:11>);

roasters.recipeBuilder()
    .inputs(<nuclearcraft:ingot:14>)
    .outputs(<gregtech:meta_item_1:10039>)
    .duration(800)
    .EUt(8)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2049>,<gregtech:meta_item_1:2524>)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2001>)
    .duration(800)
    .EUt(8)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:acetylene>*1000,<liquid:hydrogen_chloride>*1000)
    .fluidOutputs(<liquid:vinyl_chloride>*1000)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:acetylene>*1000,<liquid:hydrogen_chloride>*1000)
    .fluidOutputs(<liquid:vinyl_chloride>*1000)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:chlorine>*2000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:dichloroethane>*1000)
    .duration(800)
    .EUt(280)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000,<liquid:chlorine>*2000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:dichloroethane>*1000)
    .duration(800)
    .EUt(280)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [],[<liquid:hydrogen_cyanide>*1000,<liquid:water>*3000],true);
Utils.removeRecipeByOutput(lcr, [],[<liquid:hydrogen_cyanide>*1000,<liquid:water>*3000],true);

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*3000,<liquid:methane>*1000,<liquid:ammonia>*1000)
    .fluidOutputs(<liquid:hydrogen_cyanide>*1000,<liquid:water>*3000)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_cyanide>*2000)
    .inputs(<gregtech:meta_item_1:2373>*2)
    .fluidOutputs(<liquid:water>*2000,<liquid:sodium_cyanide>*2000)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10041>);
furnace.remove(<gregtech:meta_item_1:9041>);

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:olefin_mixture>*1000)
    .fluidOutputs(<liquid:1_butene>*200,<liquid:1_octene>*200,<liquid:1_dodecene>*200,<liquid:1_hexene>*200,<liquid:1_decene>*200)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10633>);
furnace.remove(<gregtech:meta_item_1:9633>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2633>)
    .outputs(<gregtech:meta_item_1:10633>)
    .duration(200)
    .property("temperature", 10000)
    .EUt(7800)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:purified_1_decene>*1000,<liquid:hydrogen>*1000,<liquid:n-tetradecanol>*200)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .fluidOutputs(<liquid:hydrogenated_olefin>*1000)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:purified_1_dodecene>*1000,<liquid:hydrogen>*1000,<liquid:n-tetradecanol>*200)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .fluidOutputs(<liquid:hydrogenated_olefin>*1000)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:hydrogenated_olefin>*1000)
    .fluidOutputs(<liquid:purified_olefin>*1000,<liquid:n-tetradecanol>*200)
    .outputs(<gregtech:meta_item_1:2049>)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:ethoxylated_nonylphenol>*1000,<liquid:purified_olefin>*1000)
    .inputs(<gregtech:meta_item_1:2097>*3,<gtadditions:ga_dust:24>)
    .fluidOutputs(<liquid:olefin_drilling_mud>*1000)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10585>);
furnace.remove(<gregtech:meta_item_1:9585>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2585>)
    .outputs(<gregtech:meta_item_1:10585>)
    .property("temperature", 8000)
    .EUt(22800)
    .duration(700)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1478>, [[<ore:plateIron>, <ore:blockSeared>, <ore:plateIron>],  [<tconstruct:seared_tank>, <tconstruct:seared_furnace_controller>, <tconstruct:seared_tank>],  [<ore:plateIron>, <contenttweaker:seared_gear>, <ore:plateIron>]]);

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<contenttweaker:petreulumcoke>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<gregtech:meta_item_1:2357>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*100,<liquid:tar>*100)
    .inputs(<gregtech:meta_item_1:2106>)
    .fluidOutputs(<liquid:graphitic_anode_mixture>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:cryolite_solution>*1000)
    .notConsumable(<contenttweaker:carbon_electrode>)
    .outputs(<gtadditions:ga_dust:32262>*4)
    .duration(600)
    .EUt(90)
    .buildAndRegister();

recipes.remove(<gregtech:machine:2535>);
recipes.addShaped(<gregtech:machine:10128>, [	[<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32612>], 	[<ore:circuitExtreme>, <gregtech:metal_casing:3>, <ore:circuitExtreme>], 	[<ore:circuitExtreme>, <gregtech:machine:503>, <ore:circuitExtreme>]]);

Utils.removeRecipeByOutput(electrolyzer, [<gregtech:meta_item_1:2016>],[<liquid:oxygen>*4000],true);

roasters.recipeBuilder()
    .fluidOutputs(<liquid:oxygen>*4000)
    .outputs(<gregtech:meta_item_1:2016>)
    .inputs(<gregtech:meta_item_1:2848>*4)
    .EUt(400)
    .duration(200)
    .buildAndRegister();

Utils.removeRecipeByOutput(orewasher,[<gregtech:meta_item_1:6154>,<gregtech:meta_item_1:2016>,<gregtech:meta_item_1:2328>],[],true);

orewasher.recipeBuilder()   
    .fluidInputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:6154>,<gregtech:meta_item_1:2328>)
    .chancedOutput(<gregtech:meta_item_1:2848>, 3333, 0)
    .duration(200)
    .EUt(300)
    .buildAndRegister();

thermal.findRecipe(60,[<gregtech:meta_item_1:6194>],null).remove();
thermal.findRecipe(60,[<gregtech:meta_item_1:5154>],null).remove();

Utils.removeRecipeByOutput(ebf,[<gregtech:meta_item_1:2016>*2,<gregtech:meta_item_1:2524>*5],[],true);

roasters.recipeBuilder()
    .inputs(<gtadditions:ga_dust:359>*5,<gregtech:meta_item_1:2001>*2)
    .outputs(<gregtech:meta_item_1:2016>*2,<gregtech:meta_item_1:2524>*5)
    .duration(400)
    .EUt(40)
    .buildAndRegister();

Utils.removeRecipeByOutput(fluid_solidifier,[<minecraft:obsidian>],[],true);

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:lava>*1000)
    .notConsumable(<gregtech:meta_item_1:32308>)
    .outputs(<gregtech:meta_item_1:2138>)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2138>)
    .outputs(<minecraft:obsidian>)
    .duration(200)
    .EUt(8)
    .buildAndRegister();
furnace.remove(<gregtech:meta_item_1:10311>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2311>)
    .outputs(<gregtech:meta_item_1:10311>)
    .duration(2000)
    .EUt(880)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1590>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32610>], 	[<ore:circuitBasic>, <gregtech:meta_item_1:32600>, <ore:circuitBasic>]]);
recipes.addShaped(<gregtech:machine:1591>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 	[<ore:circuitAdvanced>, <gregtech:meta_item_1:32601>, <ore:circuitAdvanced>]]);
recipes.addShaped(<gregtech:machine:1592>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32612>, <gregtech:machine:503>, <gregtech:meta_item_1:32612>], 	[<ore:circuitGood>, <gregtech:meta_item_1:32602>, <ore:circuitGood>]]);
recipes.addShaped(<gregtech:machine:1593>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32613>, <gregtech:machine:504>, <gregtech:meta_item_1:32613>], 	[<ore:circuitExtreme>, <gregtech:meta_item_1:32603>, <ore:circuitExtreme>]]);
recipes.addShaped(<gregtech:machine:1594>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32614>, <gregtech:machine:505>, <gregtech:meta_item_1:32614>], 	[<ore:circuitElite>, <gregtech:meta_item_1:32604>, <ore:circuitElite>]]);
recipes.addShaped(<gregtech:machine:1595>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32615>, <gregtech:machine:506>, <gregtech:meta_item_1:32615>], 	[<ore:circuitMaster>, <gregtech:meta_item_1:32606>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1596>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32616>, <gregtech:machine:507>, <gregtech:meta_item_1:32616>], 	[<ore:circuitUltimate>, <gregtech:meta_item_1:32607>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1597>, [	[<ore:blockGlassColorless>, <ore:rotorTin>, <ore:blockGlassColorless>], 	[<gregtech:meta_item_1:32617>, <gregtech:machine:508>, <gregtech:meta_item_1:32617>], 	[<ore:circuitSuperconductor>, <gregtech:meta_item_1:32608>, <ore:circuitSuperconductor>]]);

recipes.addShaped(<gregtech:machine:1600>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32610>, <ore:pipeLargeSteel>], 	[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], 	[<gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32600>]]);
recipes.addShaped(<gregtech:machine:1601>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32611>, <ore:pipeLargeSteel>], 	[<ore:circuitAdvanced>, <gregtech:machine:502>, <ore:circuitAdvanced>], 	[<gregtech:meta_item_1:32601>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32601>]]);
recipes.addShaped(<gregtech:machine:1602>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32612>, <ore:pipeLargeSteel>], 	[<ore:circuitGood>, <gregtech:machine:503>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32602>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32602>]]);
recipes.addShaped(<gregtech:machine:1603>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32613>, <ore:pipeLargeSteel>], 	[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], 	[<gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32603>]]);
recipes.addShaped(<gregtech:machine:1604>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32614>, <ore:pipeLargeSteel>], 	[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], 	[<gregtech:meta_item_1:32604>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32604>]]);
recipes.addShaped(<gregtech:machine:1605>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32615>, <ore:pipeLargeSteel>], 	[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], 	[<gregtech:meta_item_1:32606>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32606>]]);
recipes.addShaped(<gregtech:machine:1606>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32616>, <ore:pipeLargeSteel>], 	[<ore:circuitUltimate>, <gregtech:machine:507>, <ore:circuitUltimate>], 	[<gregtech:meta_item_1:32607>, <gregtech:meta_item_1:32616>, <gregtech:meta_item_1:32607>]]);
recipes.addShaped(<gregtech:machine:1607>, [	[<ore:pipeLargeSteel>, <gregtech:meta_item_1:32617>, <ore:pipeLargeSteel>], 	[<ore:circuitSuperconductor>, <gregtech:machine:508>, <ore:circuitSuperconductor>], 	[<gregtech:meta_item_1:32608>, <gregtech:meta_item_1:32617>, <gregtech:meta_item_1:32608>]]);

recipes.remove(<gtadditions:ga_meta_item:32030>);

Utils.removeRecipeByOutput(chemReactor,[<gtadditions:ga_meta_item:32030>],[],true);
Utils.removeRecipeByOutput(lcr,[<gtadditions:ga_meta_item:32030>],[],true);
Utils.removeRecipeByOutput(chemReactor,[<gtadditions:ga_meta_item:32031>],[],true);

Utils.removeRecipeByOutput(electrolyzer,[<gregtech:meta_item_1:2033>*2],[<liquid:oxygen>*3000],true);

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polyvinyl_acetate_solution>*1000)
    .fluidOutputs(<liquid:polyvinyl_acetate>*144,<liquid:hydrogen_peroxide>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:polyvinyl_chloride_solution>*1000)
    .fluidOutputs(<liquid:polyvinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

mixer.recipeBuilder()   
    .fluidInputs(<liquid:salt_water>*1000)
    .inputs(<gregtech:meta_item_1:10013>)
    .fluidOutputs(<liquid:cadmium_rich_solution>*1000)
    .duration(400)
    .EUt(8)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gtadditions:ga_dust:32264>)
    .fluidOutputs(<liquid:high_purity_cadmium_solution>*1000)
    .duration(400)
    .EUt(48)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:styrene>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:styrene_suspension>*2000)
    .duration(400)
    .EUt(48)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000,<liquid:rock_salt_solution>*1000)
    .fluidOutputs(<liquid:hydrogen_chloride>*1000,<liquid:potassium_persulfate_solution>*1000)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2151>)
    .fluidOutputs(<liquid:rock_salt_solution>*1000)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:potassium_persulfate_solution>*1000)
    .outputs(<gtadditions:ga_dust:32265>*7)
    .fluidOutputs(<liquid:water>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:polystyrene_suspension>*1000)
    .outputs(<gregtech:meta_item_1:2395>*3)
    .fluidOutputs(<liquid:water>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:polypropelene_suspension>*1000)
    .outputs(<gregtech:meta_item_1:2582>*5)
    .fluidOutputs(<liquid:chromium_trioxide_solution>*1000)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:chromium_trioxide_solution>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:2848>)
    .duration(300)
    .EUt(80)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1620>, [	[<gregtech:meta_item_1:32610>, <gregtech:meta_item_1:32650>, <gregtech:meta_item_1:32610>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:501>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32700>, <gregtech:meta_item_1:32650>, <gregtech:meta_item_2:32700>]]);
recipes.addShaped(<gregtech:machine:1621>, [	[<gregtech:meta_item_1:32611>, <gregtech:meta_item_1:32651>, <gregtech:meta_item_1:32611>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:502>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32701>, <gregtech:meta_item_1:32651>, <gregtech:meta_item_2:32701>]]);
recipes.addShaped(<gregtech:machine:1622>, [	[<gregtech:meta_item_1:32612>, <gregtech:meta_item_1:32652>, <gregtech:meta_item_1:32612>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:503>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32702>, <gregtech:meta_item_1:32652>, <gregtech:meta_item_2:32702>]]);
recipes.addShaped(<gregtech:machine:1623>, [	[<gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32653>, <gregtech:meta_item_1:32613>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:504>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32703>, <gregtech:meta_item_1:32653>, <gregtech:meta_item_2:32703>]]);
recipes.addShaped(<gregtech:machine:1624>, [	[<gregtech:meta_item_1:32614>, <gregtech:meta_item_1:32654>, <gregtech:meta_item_1:32614>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:505>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32704>, <gregtech:meta_item_1:32654>, <gregtech:meta_item_2:32704>]]);
recipes.addShaped(<gregtech:machine:1625>, [	[<gregtech:meta_item_1:32615>, <gregtech:meta_item_1:32655>, <gregtech:meta_item_1:32615>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:506>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32705>, <gregtech:meta_item_1:32655>, <gregtech:meta_item_2:32705>]]);
recipes.addShaped(<gregtech:machine:1626>, [	[<gregtech:meta_item_1:32616>, <gregtech:meta_item_1:32656>, <gregtech:meta_item_1:32616>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:507>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32706>, <gregtech:meta_item_1:32656>, <gregtech:meta_item_2:32706>]]);
recipes.addShaped(<gregtech:machine:1627>, [	[<gregtech:meta_item_1:32617>, <gregtech:meta_item_1:32657>, <gregtech:meta_item_1:32617>], 	[<gregtech:meta_item_1:32405>, <gregtech:machine:508>, <gregtech:meta_item_1:32405>], 	[<gregtech:meta_item_2:32707>, <gregtech:meta_item_1:32657>, <gregtech:meta_item_2:32707>]]);

tbr.recipeBuilder()
    .fluidInputs(<liquid:methane>*1000)
    .inputs(<gregtech:meta_item_1:2065>*4)
    .outputs(<gtadditions:ga_dust:32241>)
    .fluidOutputs(<liquid:hydrogen_sulfide>*2000)
    .duration(300)
    .EUt(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:184>*4,<gregtech:meta_item_1:19035>*4)
    .outputs(<contenttweaker:steel_source_casing>)
    .duration(300)
    .EUt(400)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10838>);
furnace.remove(<gregtech:meta_item_1:9838>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2838>)
    .outputs(<gregtech:meta_item_1:10838>)
    .property("temperature", 2000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

Utils.removeRecipeByOutput(electrolyzer,[<gregtech:meta_item_1:2602>*17],[],true);

mixer.recipeBuilder()
    .inputs(<minecraft:glowstone_dust>,<minecraft:redstone>)
    .outputs(<nuclearcraft:compound:2>*2)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<nuclearcraft:compound:2>*2)
    .outputs(<minecraft:glowstone_dust>,<minecraft:redstone>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12074>*4,<gregtech:meta_item_1:12032>*4,<gregtech:meta_item_1:2111>)
    .outputs(<gregtech:meta_item_2:32434>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10066>);
furnace.remove(<gregtech:meta_item_1:9066>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2066>)
    .outputs(<gregtech:meta_item_1:10066>)
    .duration(400)
    .EUt(700)
    .property("temperature", 3500)
    .buildAndRegister();

dehydrator.recipeBuilder()  
    .fluidInputs(<liquid:oleic_acid>*1000)
    .outputs(<gtadditions:ga_dust:32307>*3)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

electrolyzer.findRecipe(60,[<gregtech:meta_item_1:2602>*17],null).remove();

recipes.addShaped(<forestry:gt_alveary>, [	[<ore:circuitMaster>, <gregtech:meta_item_1:32654>, <ore:circuitMaster>], 	[<forestry:alveary.plain>, <gregtech:machine:505>, <forestry:alveary.plain>], 	[<ore:circuitMaster>, <gregtech:meta_item_1:32654>, <ore:circuitMaster>]]);

extractor.recipeBuilder()
    .inputs(<ore:dropHoney>)
    .fluidOutputs(<liquid:honey>*100)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

extractor.recipeBuilder()
    .inputs(<ore:dropHoneydew>)
    .fluidOutputs(<liquid:honey>*20)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:rhenium_scrubbed_solution>*1000,<liquid:sulfuric_acid>*1000,<liquid:ammonia>*3000)
    .fluidOutputs(<liquid:ammonium_perrhenate>*1000,<liquid:ammonium_sulfate>*1000)
    .duration(80)
    .EUt(1920)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:ammonium_perrhenate>*1000,<liquid:potassium_hydroxide>*1000)
    .fluidOutputs(<liquid:water>*1000,<liquid:ammonia>*1000)
    .outputs(<gtadditions:ga_dust:341>*6)
    .duration(80)
    .EUt(1920)
    .buildAndRegister();

dryer.recipeBuilder()
    .inputs(<minecraft:sponge:1>)
    .outputs(<minecraft:sponge>)
    .fluidOutputs(<liquid:water>*1000)
    .duration(80)
    .EUt(4)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .outputs(<minecraft:sponge:1>)
    .inputs(<minecraft:sponge>)
    .fluidInputs(<liquid:water>*1000)
    .duration(80)
    .EUt(4)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:phosphorus_trichloride>*1000,<liquid:toluene>*1000,<liquid:bromooctane>*3000)
    .fluidOutputs(<liquid:trioctylphosphine_solution>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .duration(80)
    .EUt(1788)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidOutputs(<liquid:trioctylphosphine>*1000,<liquid:toluene>*1000)
    .fluidInputs(<liquid:trioctylphosphine_solution>*1000)
    .outputs(<gregtech:meta_item_1:2373>*3)
    .duration(80)
    .EUt(2004)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:trioctylphosphine>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:trioctylphosphine_oxide>*1000)
    .duration(80)
    .EUt(2004)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:phosphorus_trichloride>*1000,<liquid:toluene>*1000,<liquid:bromotridecane>*3000)
    .fluidOutputs(<liquid:tridecylphosphine_solution>*1000)
    .inputs(<gregtech:meta_item_1:2373>*3)
    .duration(80)
    .EUt(2004)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidOutputs(<liquid:tridecylphosphine>*1000,<liquid:toluene>*1000)
    .fluidInputs(<liquid:tridecylphosphine_solution>*1000)
    .outputs(<gregtech:meta_item_1:2373>*3)
    .duration(480)
    .EUt(2044)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:tridecylphosphine>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:tridecylphosphine_oxide>*1000)
    .duration(580)
    .EUt(1554)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:tridecylphosphine_oxide>*1000,<liquid:trioctylphosphine_oxide>*1000)
    .fluidOutputs(<liquid:cyanex_923>*1000)
    .duration(380)
    .EUt(1664)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:tridecane>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:tridecanoic_acid>*1000)
    .duration(280)
    .EUt(1434)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:tridecanoic_acid>*1000,<liquid:hydrogen>*2000)
    .notConsumable(<gregtech:meta_item_1:2044>)
    .fluidOutputs(<liquid:tridecanol>*1000,<liquid:water>*1000)
    .duration(150)
    .EUt(1900)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrobromic_acid>*1000,<liquid:tridecanol>*1000)
    .fluidOutputs(<liquid:bromotridecane>*100,<liquid:water>*1000)
    .duration(150)
    .EUt(1900)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:hydrobromic_acid>*1000,<liquid:octanol>*1000)
    .fluidOutputs(<liquid:bromooctane>*1000,<liquid:water>*1000)
    .duration(150)
    .EUt(1900)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10912>);
furnace.remove(<gregtech:meta_item_1:9912>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2912>)
    .outputs(<gregtech:meta_item_1:10912>)
    .property("temperature", 2000)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

electrolyzer.findRecipe(30,[<gregtech:meta_item_1:2770>*3],null).remove();
lcentrifuge.findRecipe(320,[<gregtech:meta_item_1:2904>*58],[<liquid:hydrofluoric_acid>*88000]).remove();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:radon_trioxide>*1000)
    .fluidOutputs(<liquid:radon>*1000,<liquid:oxygen>*3000)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10010>);
furnace.remove(<gregtech:meta_item_1:9010>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2010>)
    .outputs(<gregtech:meta_item_1:10010>)
    .property("temperature", 3000)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:gallium_vapor>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:sublimed_gallium_vapour>*1000)
    .duration(400)
    .EUt(480)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10764>);
furnace.remove(<gregtech:meta_item_1:9764>);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2764>)
    .outputs(<gregtech:meta_item_1:10764>)
    .property("temperature", 2500)
    .duration(800)
    .EUt(1480)
    .buildAndRegister();