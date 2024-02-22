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
    .inputs(<gtadditions:ga_dust:30>)
    .fluidInputs(<liquid:dilutedoil>*1000)
    .fluidOutputs(<liquid:salt_water>*200,<liquid:desaltedoil>*800)
    .outputs(<gtadditions:ga_dust:31>)
    .EUt(120)
    .duration(60)
    .buildAndRegister();

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
    .fluidInputs(<liquid:desaltedoil>*500)
    .fluidOutputs(<liquid:sulfuricoilresidues>*300,<liquid:sulfuricbyproducts>*200)
    .duration(800)
    .EUt(120)
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

lcr.recipeBuilder()
    .fluidInputs(<liquid:sulfuricbyproducts>*1000)
    .fluidOutputs(<liquid:treatedsulfuricfractions>*900)
    .duration(270)
    .EUt(500)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:treatedsulfuricfractions>*1000)
    .fluidOutputs(<liquid:sourgas>*200,<liquid:oilfractions>*800)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:sulfuricbyproducts>*1000)
    .fluidOutputs(<liquid:treatedsulfuricfractions>*900)
    .duration(270)
    .EUt(500)
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
    .duration(100)
    .EUt(80)
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

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:dilutedoil>*1000)
    .EUt(12)
    .fluidOutputs(<liquid:oilfractions>*200)
    .duration(180)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:naphtha>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_naphtha>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:naphtha>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_naphtha>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:light_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_light_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:light_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_light_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:heavy_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_heavy_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:heavy_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_heavy_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:naphtha>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_naphtha>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:naphtha>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_naphtha>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:light_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_light_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:light_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_light_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:heavy_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_heavy_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:heavy_fuel>*1000)
    .notConsumable(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_heavy_fuel>*500)
    .duration(80)
    .EUt(22)
    .buildAndRegister();









































