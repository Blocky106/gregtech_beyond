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
    .fluidInputs(<liquid:oilgas>*1000)
    .fluidOutputs(<liquid:oil>*200,<liquid:tar>*100,<liquid:water>*300,<liquid:oxygen>*400)
    .outputs(<gregtech:meta_item_1:2110>)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1500,<liquid:oil_heavy>*500)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(340)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:oil_medium>*1000)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(340)
    .buildAndRegister();
    
mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*800,<liquid:oil_light>*1200)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(340)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:dilutedoil>*1000)
    .fluidOutputs(<liquid:salt_water>*600,<liquid:desaltedoil>*400)
    .duration(80)
    .EUt(220)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:dilutedoil>*1000)
    .fluidOutputs(<liquid:salt_water>*600,<liquid:desaltedoil>*400)
    .duration(80)
    .EUt(220)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fractionatedoil>*5000)
    .fluidOutputs(<liquid:lpg>*800,<liquid:raw_gasoline>*1800,<liquid:tar>*2000,<liquid:oilgas>*400)
    .duration(800)
    .EUt(222)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:water>*288)
    .inputs(<thermalfoundation:material:892>*2,<gregtech:meta_item_1:2960>*2)
    .outputs(<contenttweaker:asphalt>*6)
    .duration(140)
    .EUt(150)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .fluidOutputs(<liquid:desaltedoil>*22)
    .inputs(<contenttweaker:stackwax>)
    .duration(20)
    .outputs(<contenttweaker:paraffinwax>)
    .EUt(24)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .fluidInputs(<liquid:lubricant>*24)
    .outputs(<gregtech:meta_item_1:32627>)
    .inputs(<contenttweaker:paraffinwax>)
    .duration(244)
    .EUt(188)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:treatedsulfuricfractions>*1000)
    .fluidOutputs(<liquid:sourgas>*200,<liquid:oilfractions>*800)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:treatedsulfuricfractions>*1000)
    .fluidOutputs(<liquid:sourgas>*200,<liquid:oilfractions>*800)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1500,<liquid:oil_heavy>*500)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*1000,<liquid:oil_medium>*1000)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(20)
    .buildAndRegister();
    
lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*800,<liquid:oil_light>*1200)
    .fluidOutputs(<liquid:dilutedoil>*2000)
    .duration(40)
    .EUt(20)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:water>*288)
    .inputs(<thermalfoundation:material:892>*2,<gregtech:meta_item_1:2960>*2)
    .outputs(<contenttweaker:asphalt>*6)
    .duration(140)
    .EUt(150)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:sourgas>*1000,<liquid:ethanolamine>*500)
    .fluidOutputs(<liquid:richamine>*1500)
    .duration(900)
    .EUt(600)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sourgas>*1000,<liquid:ethanolamine>*500)
    .fluidOutputs(<liquid:richamine>*1500)
    .duration(900)
    .EUt(600)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:richamine>*1500)
    .fluidOutputs(<liquid:ethanolamine>*500,<liquid:hydrogen_sulfide>*1000)
    .duration(122)
    .EUt(900)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:richamine>*1500)
    .fluidOutputs(<liquid:ethanolamine>*500,<liquid:hydrogen_sulfide>*1000)
    .duration(122)
    .EUt(900)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:oilfractions>*100)
    .fluidOutputs(<liquid:sulfuric_heavy_fuel>*15,<liquid:sulfuric_light_fuel>*50,<liquid:sulfuric_naphtha>*20,<liquid:sulfuric_gas>*60)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:gas>*1000,<liquid:ethanolamine>*500)
    .fluidOutputs(<liquid:richamine>*1500)
    .duration(900)
    .EUt(600)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:gas>*1000,<liquid:ethanolamine>*500)
    .fluidOutputs(<liquid:richamine>*1500)
    .duration(900)
    .EUt(600)
    .buildAndRegister();

distillation_tower.findRecipe(96,null,[<liquid:oil>*50]).remove();
distillation_tower.findRecipe(288,null,[<liquid:oil_heavy>*150]).remove();
distillation_tower.findRecipe(96,null,[<liquid:oil_medium>*100]).remove();
distillation_tower.findRecipe(96,null,[<liquid:oil_light>*150]).remove();


distillery.findRecipe(72,[<gregtech:meta_item_1:32766>.withTag({Configuration: 0})],[<liquid:oil_heavy>*150]).remove();
distillery.findRecipe(72,[<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],[<liquid:oil_heavy>*150]).remove();
distillery.findRecipe(72,[<gregtech:meta_item_1:32766>.withTag({Configuration: 2})],[<liquid:oil_heavy>*150]).remove();
distillery.findRecipe(72,[<gregtech:meta_item_1:32766>.withTag({Configuration: 3})],[<liquid:oil_heavy>*150]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 4})],[<liquid:oil_heavy>*100]).remove();


distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 0})],[<liquid:oil_medium>*100]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],[<liquid:oil_medium>*100]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 2})],[<liquid:oil_medium>*100]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 3})],[<liquid:oil_medium>*100]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 4})],[<liquid:oil_medium>*200]).remove();


distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 0})],[<liquid:oil_light>*150]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],[<liquid:oil_light>*150]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 2})],[<liquid:oil_light>*150]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 3})],[<liquid:oil_light>*150]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 4})],[<liquid:oil_light>*300]).remove();

distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 0})],[<liquid:oil>*50]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 1})],[<liquid:oil>*50]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 2})],[<liquid:oil>*50]).remove();
distillery.findRecipe(24,[<gregtech:meta_item_1:32766>.withTag({Configuration: 3})],[<liquid:oil>*50]).remove();

mixer.recipeBuilder()
    .fluidInputs(<liquid:oil>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:dilutedoil>*1000)
    .duration(800)
    .EUt(20)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<contenttweaker:paraffinwax>)
    .fluidOutputs(<liquid:resin>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:oilgas>*10000,<liquid:water>*1000)
    .fluidOutputs(<liquid:syngas>*10000,<liquid:ammonia>*1000)
    .duration(20)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:oilgas>*10000,<liquid:water>*1000)
    .fluidOutputs(<liquid:syngas>*10000,<liquid:ammonia>*1000)
    .duration(20)
    .EUt(80)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:natural_gas>*500,<liquid:sulfuric_acid>*2500)
    .fluidOutputs(<liquid:alkylated_natural_gas>*3000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:natural_gas>*500,<liquid:sulfuric_acid>*2500)
    .fluidOutputs(<liquid:alkylated_natural_gas>*3000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:alkylated_natural_gas>*3000)
    .fluidOutputs(<liquid:sulfuric_acid>*2500,<liquid:gasoline>*500)
    .duration(80)
    .EUt(400)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:desaltedoil>*1000)
    .fluidOutputs(<liquid:sulfuric_gas>*500,<liquid:sulfuric_kerosene>*100,<liquid:sulfuric_naphtha>*200,<liquid:sulfuric_gasoline>*100,<liquid:sulfuric_oil_residues>*150,<liquid:sulfuric_diesel>*200)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_kerosene>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:kerosene>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_gasoline>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:gasoline>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_fuel_oil>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:fuel_oil>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_diesel>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:fuel>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_fuel_oil>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:fuel_oil>*12000)
    .duration(200)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_kerosene>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:kerosene>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_gasoline>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:gasoline>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_diesel>*12000)
    .fluidOutputs(<liquid:hydrogen_sulfide>*1000,<liquid:fuel>*12000)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:gasoline>*1000)
    .fluidOutputs(<liquid:propane>*200,<liquid:ethane>*300,<liquid:methane>*350,<liquid:butane>*150)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

distillation_tower.findRecipe(120,null,[<liquid:steamcracked_butane>*2000]).remove();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:steamcracked_butane>*1000)
    .fluidOutputs(<liquid:propene>*250,<liquid:ethylene>*350,<liquid:methane>*150,<liquid:hydrogen>*100,<liquid:butadiene>*150)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

distillation_tower.findRecipe(120, null, [<liquid:steamcracked_ethane>*1000]).remove();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:steamcracked_ethane>*2000)
    .fluidOutputs(<liquid:ethylene>*500,<liquid:propylene>*200,<liquid:butene>*100,<liquid:hydrogen>*200,<liquid:methane>*500,<liquid:ethane>*300,<liquid:nonene>*200)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:fuel_oil>*1000)
    .fluidOutputs(<liquid:propane>*150,<liquid:ethane>*100,<liquid:methane>*100,<liquid:hexane>*300,<liquid:pentane>*250,<liquid:butane>*250)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:kerosene>*1000)
    .fluidOutputs(<liquid:propane>*250,<liquid:ethane>*200,<liquid:methane>*100,<liquid:hexane>*100,<liquid:pentane>*150,<liquid:butane>*250)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

cracker.recipeBuilder()
    .fluidInputs(<liquid:steam>*1000,<liquid:kerosene>*1000)
    .fluidOutputs(<liquid:steam_cracked_kerosene>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

cracker.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:kerosene>*1000)
    .fluidOutputs(<liquid:hydro_cracked_kerosene>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:hydro_cracked_kerosene>*1000)
    .fluidOutputs(<liquid:propane>*100,<liquid:ethane>*75,<liquid:methane>*75,<liquid:raw_gasoline>*600,<liquid:naphtha>*100,<liquid:butane>*100)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:steam_cracked_kerosene>*1000)
    .fluidOutputs(<liquid:ethylene>*150,<liquid:methane>*150,<liquid:propane>*10,<liquid:propene>*100,<liquid:ethane>*15,<liquid:benzene>*125,<liquid:butene>*80,<liquid:butadiene>*50,<liquid:raw_gasoline>*100,<liquid:naphtha>*125,<liquid:toluene>*80)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

electrolyzer.findRecipe(30,null,[<liquid:propane>*1000]).remove();
electrolyzer.findRecipe(30,null,[<liquid:propene>*1000]).remove();

#------Desulfurization with CoMoAl(CMA) catalyst---------- thanks to @RailGun

chemReactor.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_gas>*8000]).remove();
chemReactor.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_naphtha>*8000]).remove();
chemReactor.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_light_fuel>*8000]).remove();
chemReactor.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_heavy_fuel>*8000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_heavy_fuel>*8000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_gas>*8000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_naphtha>*8000]).remove();
lcr.findRecipe(30,[<gregtech:meta_item_1:2132>,<gtadditions:ga_dust:292>],[<liquid:hydrogen>*2000,<liquid:sulfuric_light_fuel>*8000]).remove();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_gas>*8000)
    .fluidOutputs(<liquid:gas>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_naphtha>*8000)
    .fluidOutputs(<liquid:naphtha>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_light_fuel>*8000)
    .fluidOutputs(<liquid:light_fuel>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_heavy_fuel>*8000)
    .fluidOutputs(<liquid:heavy_fuel>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_gas>*8000)
    .fluidOutputs(<liquid:gas>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_naphtha>*8000)
    .fluidOutputs(<liquid:naphtha>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();

lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_light_fuel>*8000)
    .fluidOutputs(<liquid:light_fuel>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:2132>)
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:sulfuric_heavy_fuel>*8000)
    .fluidOutputs(<liquid:heavy_fuel>*8000,<liquid:hydrogen_sulfide>*1000)
    .duration(60)
    .EUt(20)
    .buildAndRegister();
















