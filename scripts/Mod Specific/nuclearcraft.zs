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

import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Condenser;
import mods.nuclearcraft.Crystallizer;
import mods.nuclearcraft.DecayGenerator;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.FissionModerator;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.Extractor;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.HeatExchanger;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Pressurizer;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.FissionEmergencyCooling;
import mods.nuclearcraft.Turbine;
import mods.nuclearcraft.Supercooler;



alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:13231>*2,<gregtech:meta_item_1:13035>*2)
    .outputs(<nuclearcraft:part>*4)
    .duration(80)
    .EUt(512)
    .buildAndRegister();

mods.nuclearcraft.AlloyFurnace.removeAllRecipes();
mods.nuclearcraft.Assembler.removeAllRecipes();
mods.nuclearcraft.Manufactory.removeAllRecipes();
mods.nuclearcraft.Melter.removeAllRecipes();
mods.nuclearcraft.Pressurizer.removeAllRecipes();
mods.nuclearcraft.Electrolyzer.removeAllRecipes();
mods.nuclearcraft.Extractor.removeAllRecipes();
mods.nuclearcraft.Enricher.removeAllRecipes();
mods.nuclearcraft.RockCrusher.removeAllRecipes();
mods.nuclearcraft.Crystallizer.removeAllRecipes();
mods.nuclearcraft.Supercooler.removeAllRecipes();
mods.qmd.ore_leacher.removeAllRecipes();

mods.qmd.target_chamber.removeRecipeWithInput(<ore:ingotUranium238>, (<particle:neutron>*1000000)^26000);
mods.qmd.target_chamber.addRecipe(<ore:ingotUranium238>, (<particle:neutron>*1000000)^26000, <ore:ingotUranium235>, null, <particle:neutron>*4, null, 34000, 0.55, -17800);


furnace.remove(<nuclearcraft:ingot:14>);
recipes.addShaped(<nuclearcraft:part:4>, [	[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, null], 	[<ore:stickIron>, <ore:stickIron>, null], [<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, null]]);

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:mercury>*1000)
    .outputs(<qmd:ingot2:2>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

electromagnetic_separator.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32111>)
    .outputs(<gregtech:meta_item_1:2313>)
    .duration(12)
    .EUt(50)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<nuclearcraft:dust:14>)
    .outputs(<nuclearcraft:ingot:14>)
    .duration(500)
    .EUt(240)
    .property("temperature", 1700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:dust:15>)
    .outputs(<nuclearcraft:dust:14>)
    .fluidInputs(<liquid:hydrogen>*2000)
    .fluidOutputs(<liquid:water>*3000)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:dust:15>)
    .outputs(<nuclearcraft:dust:14>)
    .fluidInputs(<liquid:hydrogen>*2000)
    .fluidOutputs(<liquid:water>*3000)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

electrolyzer.recipeBuilder()    
    .fluidInputs(<liquid:naoh>*333)
    .fluidOutputs(<liquid:sodium>*72,<liquid:water>*250,<liquid:oxygen>*125)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:heavy_water>*500)
    .fluidOutputs(<liquid:deuterium>*500,<liquid:oxygen>*250)
    .duration(120)
    .EUt(800)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:deuterium>*500,<liquid:oxygen>*250)
    .fluidOutputs(<liquid:heavy_water>*500)
    .duration(120)
    .EUt(800)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:heu_233_fluoride>*72)
    .fluidOutputs(<liquid:heu_233>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_leu_233_fluoride>*72)
    .fluidOutputs(<liquid:depleted_leu_233>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:leu_233_fluoride>*72)
    .fluidOutputs(<liquid:leu_233>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_tbu_fluoride>*72)
    .fluidOutputs(<liquid:depleted_tbu>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:tbu_fluoride>*72)
    .fluidOutputs(<liquid:tbu_fluoride>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_len_236_fluoride>*72)
    .fluidOutputs(<liquid:depleted_len_236>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:len_236_fluoride>*72)
    .fluidOutputs(<liquid:len_236>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_heu_235_fluoride>*72)
    .fluidOutputs(<liquid:depleted_heu_235>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:heu_235_fluoride>*72)
    .fluidOutputs(<liquid:heu_235>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_leu_235_fluoride>*72)
    .fluidOutputs(<liquid:depleted_leu_235>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:leu_235_fluoride>*72)
    .fluidOutputs(<liquid:leu_235>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hep_239_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hep_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hep_239_fluoride>*72)
    .fluidOutputs(<liquid:hep_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lep_239_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lep_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lep_239_fluoride>*72)
    .fluidOutputs(<liquid:lep_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hen_236_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hen_236>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hen_236_fluoride>*72)
    .fluidOutputs(<liquid:hen_236>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_mix_239_fluoride>*72)
    .fluidOutputs(<liquid:depleted_mix_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:mix_239_fluoride>*72)
    .fluidOutputs(<liquid:mix_239>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hep_241>*72)
    .fluidOutputs(<liquid:depleted_hep_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hep_241_fluoride>*72)
    .fluidOutputs(<liquid:hep_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lep_241_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lep_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lep_241_fluoride>*72)
    .fluidOutputs(<liquid:lep_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hea_242_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hea_242>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hea_242_fluoride>*72)
    .fluidOutputs(<liquid:hea_242>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lea_242_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lea_242>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lea_242_fluoride>*72)
    .fluidOutputs(<liquid:lea_242>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_mix_241_fluoride>*72)
    .fluidOutputs(<liquid:depleted_mix_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:mix_241_fluoride>*72)
    .fluidOutputs(<liquid:mix_241>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lecm_245_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lecm_245>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lecm_245_fluoride>*72)
    .fluidOutputs(<liquid:lecm_245>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hecm_243_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hecm_243>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hecm_243_fluoride>*72)
    .fluidOutputs(<liquid:hecm_243>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lecm_243_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lecm_243>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lecm_243_fluoride>*72)
    .fluidOutputs(<liquid:lecm_243>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hecm_247_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hecm_247>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hecm_247_fluoride>*72)
    .fluidOutputs(<liquid:hecm_247>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lecm_247_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lecm_247>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lecm_247_fluoride>*72)
    .fluidOutputs(<liquid:lecm_247>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hecm_245_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hecm_245>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hecm_245_fluoride>*72)
    .fluidOutputs(<liquid:hecm_245>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lecf_249_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lecf_249>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lecf_249_fluoride>*72)
    .fluidOutputs(<liquid:lecf_249>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_heb_248_fluoride>*72)
    .fluidOutputs(<liquid:depleted_heb_248>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:heb_248_fluoride>*72)
    .fluidOutputs(<liquid:heb_248>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_leb_248_fluoride>*72)
    .fluidOutputs(<liquid:depleted_leb_248>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:leb_248_fluoride>*72)
    .fluidOutputs(<liquid:leb_248>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();
    
electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hecf_249_fluoride>*72)
    .fluidOutputs(<liquid:hecf_249>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hecf_249_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hecf_249>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:lecf_251_fluoride>*72)
    .fluidOutputs(<liquid:lecf_251>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_lecf_251_fluoride>*72)
    .fluidOutputs(<liquid:depleted_lecf_251>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:hecf_251_fluoride>*72)
    .fluidOutputs(<liquid:hecf_251>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:depleted_hecf_251_fluoride>*72)
    .fluidOutputs(<liquid:depleted_hecf_251>*72,<liquid:fluorine>*500)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:sodium_chloride_solution>*3000)
    .fluidOutputs(<liquid:hydrogen>*1000,<liquid:chlorine>*1000,<liquid:sodium_hydroxide_solution>*1000)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .outputs(<gregtech:meta_item_1:2373>)
    .duration(400)
    .EUt(240)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2773>)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:sodium_fluoride_solution>*1000)
    .duration(40)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:ethanol>*250,<liquid:redstone>*250)
    .fluidOutputs(<liquid:redstone_ethanol>*500)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2035>)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:lead_nitrate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<qmd:chemical_dust>)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:sodium_tungstate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:glowing_mushroom>*3)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:redstone_ethanol>*250)
    .fluidOutputs(<liquid:radaway_slow>*250)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:glowing_mushroom>*3 )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:ethanol>*250)
    .fluidOutputs(<liquid:radaway>*250)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:compound:8> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:irradiated_borax_solution>*144)
    .duration(80)
    .EUt(90)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2313> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:borax_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:compound:6> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:potassium_hydroxide_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:compound> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:calcium_sulfate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2703> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:fluorite_water>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<nuclearcraft:gem_dust:4> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:boron_nitride_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2035> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:nitric_acid>*1000)
    .fluidOutputs(<liquid:lead_nitrate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<qmd:chemical_dust> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .fluidOutputs(<liquid:sodium_tungstate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:glowing_mushroom>*3 )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:redstone_ethanol>*250)
    .fluidOutputs(<liquid:radaway_slow>*250)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:glowing_mushroom>*3 )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:ethanol>*250)
    .fluidOutputs(<liquid:radaway>*250)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:compound:8> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:irradiated_borax_solution>*144)
    .duration(80)
    .EUt(90)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2313> )
    .fluidInputs(<liquid:water>*1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidOutputs(<liquid:borax_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:compound:6> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:potassium_hydroxide_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:compound> )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:calcium_sulfate_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2703> )
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:fluorite_water>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<nuclearcraft:gem_dust:4> )
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidInputs(<liquid:water>*1000)
    .fluidOutputs(<liquid:boron_nitride_solution>*1000)
    .duration(80)
    .EUt(90)
    .buildAndRegister();   

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:boron_nitride_solution>*666)
    .outputs(<nuclearcraft:gem_dust:4>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:fluorite_water>*666)
    .outputs(<gregtech:meta_item_1:2703>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:calcium_sulfate_solution>*666)
    .outputs(<nuclearcraft:compound>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:sodium_fluoride_solution>*666)
    .outputs(<gregtech:meta_item_1:2773>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:potassium_fluoride_solution>*666)
    .outputs(<gregtech:meta_item_1:2772>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:potassium_hydroxide_solution>*666)
    .outputs(<nuclearcraft:compound:6>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:borax_solution>*666)
    .outputs(<gregtech:meta_item_1:2313>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:irradiated_borax_solution>*666)
    .outputs(<gtadditions:ga_dust:32111>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32301>)
    .fluidInputs(<liquid:lead_tungstate_solution>*144)
    .outputs(<qmd:part:2>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:sodium_nitrate_solution>*144)
    .outputs(<gregtech:meta_item_1:2865>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:iodine>*144)
    .outputs(<gregtech:meta_item_1:2757>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:europium_155>*144)
    .outputs(<nuclearcraft:fission_dust:10>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:ruthenium_106>*144)
    .outputs(<nuclearcraft:fission_dust:7>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:strontium_90>*144)
    .outputs(<nuclearcraft:fission_dust:5>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:promethium_147>*144)
    .outputs(<nuclearcraft:fission_dust:9>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:boron_nitride_solution>*666)
    .outputs(<nuclearcraft:gem_dust:4>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:fluorite_water>*666)
    .outputs(<gregtech:meta_item_1:2703>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:calcium_sulfate_solution>*666)
    .outputs(<nuclearcraft:compound>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:sodium_fluoride_solution>*666)
    .outputs(<gregtech:meta_item_1:2773>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:potassium_fluoride_solution>*666)
    .outputs(<gregtech:meta_item_1:2772>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:potassium_hydroxide_solution>*666)
    .outputs(<nuclearcraft:compound:6>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:borax_solution>*666)
    .outputs(<gregtech:meta_item_1:2313>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:irradiated_borax_solution>*666)
    .outputs(<gtadditions:ga_dust:32111>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:sodium_nitrate_solution>*144)
    .outputs(<gregtech:meta_item_1:2865>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:iodine>*144)
    .outputs(<gregtech:meta_item_1:2757>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:europium_155>*144)
    .outputs(<nuclearcraft:fission_dust:10>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:ruthenium_106>*144)
    .outputs(<nuclearcraft:fission_dust:7>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:strontium_90>*144)
    .outputs(<nuclearcraft:fission_dust:5>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:promethium_147>*144)
    .outputs(<nuclearcraft:fission_dust:9>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_3:13>*64,<gtadditions:ga_dust:55>*16)
    .outputs(<qmd:semiconductor:2>)
    .property("temperature", 5200)
    .fluidInputs(<liquid:radon>*1000)
    .duration(800)
    .EUt(4000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<qmd:semiconductor:2>)
    .chancedOutput(<contenttweaker:unimpuredwafer>*16, 8000, 0)
    .fluidInputs(<liquid:water>*1000)
    .duration(1000)
    .EUt(4000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<qmd:semiconductor:2>)
    .chancedOutput(<contenttweaker:unimpuredwafer>*16, 9000, 100)
    .fluidInputs(<liquid:distilled_water>*1000)
    .duration(1000)
    .EUt(4000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<qmd:semiconductor:2>)
    .outputs(<contenttweaker:unimpuredwafer>*16)
    .fluidInputs(<liquid:lubricant>*1000)
    .duration(1000)
    .EUt(4000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:unimpuredwafer>)
    .fluidInputs(<liquid:hydrogen_peroxide>*250)
    .outputs(<qmd:semiconductor:3>)
    .duration(1200)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:unimprintedntypewafer>,<ore:circuitUltimate>*4,<gregtech:cable:4237>*4,<gregtech:meta_item_1:19026>*64)
    .outputs(<qmd:semiconductor:4>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<qmd:semiconductor:1>,<gregtech:cable:1966>,<gregtech:cable:1967>*2,<gregtech:cable:1968>*4,<gregtech:cable:1969>*8)
    .fluidInputs(<liquid:indalloy140>*1000)
    .outputs(<contenttweaker:unimprintedntypewafer>)
    .duration(400)
    .EUt(2400)
    .buildAndRegister();

furnace.remove(<qmd:ingot:8>);

alloy_smelter.recipeBuilder()
    .inputs(<minecraft:iron_ingot>,<gregtech:meta_item_1:2009>)
    .outputs(<nuclearcraft:alloy:6>)
    .duration(200)
    .EUt(22)
    .buildAndRegister();

alloy_smelter.recipeBuilder()
    .inputs(<nuclearcraft:alloy:6>,<gregtech:meta_item_1:10036>)
    .outputs(<nuclearcraft:alloy:1>)
    .duration(200)
    .EUt(22)
    .buildAndRegister();


recipes.addShaped(<nuclearcraft:helm_hazmat>, [
	[<nuclearcraft:rad_shielding:2>, <ore:plateSteel>, <nuclearcraft:rad_shielding:2>], 
	[<ore:bioplastic>, null, <ore:bioplastic>], 
	[null, null, null]
]);
recipes.addShaped(<nuclearcraft:helm_hazmat>, [
	[<nuclearcraft:rad_shielding:2>, <ore:plateSteel>, <nuclearcraft:rad_shielding:2>], 
	[<gregtech:meta_item_1:12141>, null, <gregtech:meta_item_1:12141>], 
	[null, null, null]
]);

recipes.addShaped(<nuclearcraft:legs_hazmat>, [	[<nuclearcraft:rad_shielding:2>, <ore:wool>, <nuclearcraft:rad_shielding:2>], 	[<gregtech:meta_item_1:12141>, null, <gregtech:meta_item_1:12141>], 	[<ore:plateSteel>, null, <ore:plateSteel>]]);
recipes.addShaped(<nuclearcraft:legs_hazmat>, [	[<nuclearcraft:rad_shielding:2>, <ore:wool>, <nuclearcraft:rad_shielding:2>], 	[<ore:bioplastic>, null, <ore:bioplastic>], 	[<ore:plateSteel>, null, <ore:plateSteel>]]);
recipes.addShaped(<nuclearcraft:chest_hazmat>, [	[<ore:bioplastic>, null, <ore:bioplastic>], 	[<nuclearcraft:rad_shielding:2>, <ore:plateSteel>, <nuclearcraft:rad_shielding:2>], 	[<ore:plateSteel>, <ore:wool>, <ore:plateSteel>]]);
recipes.addShaped(<nuclearcraft:chest_hazmat>, [	[<gregtech:meta_item_1:12141>, null, <gregtech:meta_item_1:12141>], 	[<nuclearcraft:rad_shielding:2>, <ore:plateSteel>, <nuclearcraft:rad_shielding:2>], 	[<ore:plateSteel>, <ore:wool>, <ore:plateSteel>]]);
recipes.addShaped(<nuclearcraft:boots_hazmat>, [	[null, null, null], 	[<nuclearcraft:rad_shielding:2>, null, <nuclearcraft:rad_shielding:2>], 	[<ore:bioplastic>, null, <ore:bioplastic>]]);
recipes.addShaped(<nuclearcraft:boots_hazmat>, [	[null, null, null], 	[<nuclearcraft:rad_shielding:2>, null, <nuclearcraft:rad_shielding:2>], 	[<gregtech:meta_item_1:12141>, null, <gregtech:meta_item_1:12141>]]);

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<gregtech:meta_item_1:12141>*2)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<nuclearcraft:boots_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<ore:bioplastic>*2)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<nuclearcraft:boots_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<gregtech:meta_item_1:12141>*2,<ore:plateSteel>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<nuclearcraft:helm_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<ore:bioplastic>*2,<ore:plateSteel>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<nuclearcraft:helm_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<gregtech:meta_item_1:12141>*2,<ore:plateSteel>*2,<ore:wool>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<nuclearcraft:legs_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<ore:bioplastic>*2,<ore:plateSteel>*2,<ore:wool>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<nuclearcraft:legs_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<ore:bioplastic>*2,<ore:plateSteel>*3,<ore:wool>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<nuclearcraft:chest_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<nuclearcraft:rad_shielding:2>*2,<gregtech:meta_item_1:12141>*2,<ore:plateSteel>*3,<ore:wool>)   
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<nuclearcraft:chest_hazmat>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()   
    .inputs(<qmd:semiconductor:4>,<qmd:semiconductor>,<gtadditions:ga_dust:118>,<gregtech:meta_item_1:12235>,<ore:circuitExtreme>)
    .outputs(<qmd:semiconductor:5>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2064>*2,<gregtech:meta_item_1:2008>*2,<gregtech:meta_item_1:2011>*2,<qmd:chemical_dust:4>*3)
    .outputs(<gregtech:meta_item_1:2620>)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2620>)
    .outputs(<gregtech:meta_item_1:10620>)
    .duration(200)
    .EUt(1200)
    .property("temperature", 800)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10620>);
furnace.remove(<gregtech:meta_item_1:9620>);

wiremill.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10620>)
    .outputs(<qmd:part:4>*2)
    .EUt(1290)
    .duration(50)
    .buildAndRegister();

furnace.remove(<qmd:ingot2:1>);