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



lcentrifuge.findRecipe(480,null,[<liquid:rare_earth_chlorides_solution>*6000,<liquid:di_ethylhexyl_phosphoric_acid>]).remove();

mixer.recipeBuilder()
    .fluidInputs(<liquid:muddybastnasitesolution>*1000)
    .inputs(<gregtech:meta_item_1:2063>*2)
    .fluidOutputs(<liquid:conditionedbastnasitemud>*1144)
    .duration(400)
    .EUt(500)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:muddybastnasitesolution>*1000)
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2010>)
    .fluidOutputs(<liquid:conditionedbastnasitemud>*1144)
    .duration(400)
    .EUt(500)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:dilutedbastnasitemud>*1000)
    .fluidOutputs(<liquid:filteredbsatnasitemud>*500)
    .chancedOutput(<gregtech:meta_item_1:2122>, 3200, 200)
    .chancedOutput(<gregtech:meta_item_1:2159>, 5000, 900)
    .chancedOutput(<gregtech:meta_item_1:2121>*2 , 750, 600)
    .EUt(2000)
    .duration(900)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:dilutedbastnasitemud>*1000)
    .fluidOutputs(<liquid:filteredbsatnasitemud>*500)
    .chancedOutput(<gregtech:meta_item_1:2122>, 3200, 200)
    .chancedOutput(<gregtech:meta_item_1:2159>, 5000, 900)
    .chancedOutput(<gregtech:meta_item_1:2121>*2 , 750, 600)
    .EUt(2000)
    .duration(900)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:filteredbsatnasitemud>*200)
    .fluidOutputs(<liquid:bastnasiteoxidecompositeliquid>*200)
    .property("temperature", 3400)
    .EUt(6000)
    .duration(920)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:ceriumcontainingbastnasiteconcentrate>*1000)
    .outputs(<gtadditions:ga_dust:11>)
    .fluidOutputs(<liquid:bastnasiterarerearthoxidemixture>*500)
    .duration(800)
    .EUt(4500)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:ceriumcontainingbastnasiteconcentrate>*1000)
    .outputs(<gtadditions:ga_dust:11>)
    .fluidOutputs(<liquid:bastnasiterarerearthoxidemixture>*500)
    .duration(800)
    .EUt(4500)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32061>)
    .outputs(<gregtech:meta_item_1:2012>)
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .fluidOutputs(<liquid:bastnasiterarerearthconcentrate>*500)
    .duration(800)
    .EUt(1900)
    .buildAndRegister();

fluid_solidifier.recipeBuilder()
    .fluidInputs(<liquid:bastnasiterarerearthoxidemixture>*500)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gtadditions:ga_dust:32061>)
    .EUt(400)
    .duration(800)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:bastnasiterarerearthoxidesemulsion>*5000)
    .inputs(<gregtech:meta_item_1:2373>*27)
    .fluidOutputs(<liquid:bastnasiterarerearthoxidessolution>*4000)
    .outputs(<gregtech:meta_item_1:2155>*5)
    .duration(1500)
    .EUt(2300)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:bastnasiterarerearthoxidessolution>*1000)
    .outputs(<gtadditions:ga_dust:32074>,<gtadditions:ga_dust:32073>)
    .duration(900)
    .EUt(5600)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:bastnasiterarerearthoxidessolution>*1000)
    .outputs(<gtadditions:ga_dust:32074>,<gtadditions:ga_dust:32073>)
    .duration(900)
    .EUt(5600)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gtadditions:ga_dust:32073>)
    .outputs(<gtadditions:ga_dust:8>,<gtadditions:ga_dust:10>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gtadditions:ga_dust:32073>)
    .outputs(<gtadditions:ga_dust:8>,<gtadditions:ga_dust:10>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gtadditions:ga_dust:32074>)
    .outputs(<gtadditions:ga_dust:32075>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gtadditions:ga_dust:32074>)
    .outputs(<gtadditions:ga_dust:32075>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32077>,<gtadditions:ga_dust:51>)
    .outputs(<gtadditions:ga_dust:15>,<gtadditions:ga_dust:32078>)
    .duration(800)
    .EUt(19000)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32076>*2)
    .fluidOutputs(<liquid:fluorine>*1000)
    .outputs(<gregtech:meta_item_1:2011>)
    .duration(290)
    .EUt(120)
    .buildAndRegister();

sifter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32078>)
    .outputs(<gregtech:meta_item_1:2059>,<gregtech:meta_item_1:2024>)
    .duration(400)
    .EUt(2900)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:filteredbsatnasitemud>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gtadditions:ga_dust:32079>)
    .duration(800)
    .EUt(1200)
    .property("temperature", 3700) 
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gregtech:meta_item_1:2373>*2,<gtadditions:ga_dust:32079>*3)
    .fluidOutputs(<liquid:bastnasiteconcentrate>*1000)
    .duration(90)
    .EUt(2400)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidOutputs(<liquid:bastnasiterarerearthconcentrate>*1000)
    .fluidInputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gtadditions:ga_dust:32061>)
    .duration(200)
    .EUt(19000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32075>,<gregtech:meta_item_1:2011>)
    .outputs(<gtadditions:ga_dust:32076>,<gtadditions:ga_dust:17>)
    .duration(400)
    .EUt(512)
    .property("temperature", 6200)
    .buildAndRegister();

fluidExtractor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32079>)
    .fluidOutputs(<liquid:bastnasiteoxidecompositeliquid>*144)
    .duration(40)
    .EUt(500)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32069>*2)
    .fluidOutputs(<liquid:rare_earth_hydroxides_solution>*1000)
    .outputs(<gtadditions:ga_dust:32010>)
    .duration(600)
    .EUt(480)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32010>*2)
    .outputs(<gtadditions:ga_dust:32011>)
    .duration(2900)
    .EUt(800)
    .buildAndRegister();

centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:rare_earth_hydroxides_solution>*1000)  
    .outputs(<gtadditions:ga_dust:11>,<gtadditions:ga_dust:8>,<gregtech:meta_item_1:2906>,<gtadditions:ga_dust:10>,<gtadditions:ga_dust:9>)
    .duration(800)
    .EUt(900)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32069>*2)
    .fluidOutputs(<liquid:rare_earth_hydroxides_solution>*1000)
    .outputs(<gtadditions:ga_dust:32010>,<gtadditions:ga_dust:7>)
    .duration(600)
    .EUt(480)
    .buildAndRegister();

lcentrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32010>*2)
    .outputs(<gtadditions:ga_dust:32011>)
    .duration(2900)
    .EUt(800)
    .buildAndRegister();

lcentrifuge.recipeBuilder() 
    .fluidInputs(<liquid:rare_earth_hydroxides_solution>*1000)  
    .outputs(<gtadditions:ga_dust:11>,<gtadditions:ga_dust:8>,<gregtech:meta_item_1:2906>,<gtadditions:ga_dust:10>,<gtadditions:ga_dust:9>)
    .duration(800)
    .EUt(900)
    .buildAndRegister();

chemReactor.findRecipe(480,[<gregtech:meta_item_1:2326>],[<liquid:water>*3000,<liquid:sodium_hydroxide_solution>*3000]);
lcr.findRecipe(480,[<gregtech:meta_item_1:2326>],[<liquid:water>*3000,<liquid:sodium_hydroxide_solution>*3000]);

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:monazite_solution>*1000)
    .outputs(<gtadditions:ga_dust:32065>,<gregtech:meta_item_1:2159>,<gregtech:meta_item_1:2122>,<gregtech:meta_item_1:2121>,<gregtech:meta_item_1:2713>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ammonium_nitrate>*1000,<liquid:diluted_monazite_sulfate>*2000)
    .fluidOutputs(<liquid:neutralized_monazite>*2000)
    .EUt(2000)
    .duration(500)  
    .buildAndRegister();

lcentrifuge.recipeBuilder() 
    .fluidInputs(<liquid:neutralized_monazite>*1000)
    .outputs(<gtadditions:ga_dust:32066>*2,<gtadditions:ga_dust:32068>*2)
    .duration(99)
    .EUt(2000)
    .buildAndRegister();
    
centrifuge.recipeBuilder() 
    .fluidInputs(<liquid:neutralized_monazite>*1000)
    .outputs(<gtadditions:ga_dust:32066>*2,<gtadditions:ga_dust:32068>*2)
    .duration(99)
    .EUt(2000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32066>)
    .outputs(<gtadditions:ga_dust:32067>)
    .duration(800)
    .EUt(2000)
    .property("temperature", 300)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:ammonium_nitrate>*1000)
    .outputs(<gregtech:meta_item_1:2050>,<gtadditions:ga_dust:32069>)
    .inputs(<gtadditions:ga_dust:32068>)
    .duration(400)
    .EUt(480)
    .buildAndRegister();
    
distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:impure_ethanol>*2000)
    .fluidOutputs(<liquid:water>*1000,<liquid:ehtanol_water_azeotrope>*720,<liquid:fusel_oil>*80)
    .outputs(<gregtech:meta_item_1:2196>)
    .duration(200)
    .EUt(280)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,null, [<liquid:rare_earth_hydroxides_solution>*1000,<liquid:hydrogen>*3000], false);
Utils.removeRecipeByOutput(lcr,null, [<liquid:rare_earth_hydroxides_solution>*1000,<liquid:hydrogen>*3000], false);


chemReactor.findRecipe(480,null,[<liquid:hydrochloric_acid>*3000,<liquid:rare_earth_hydroxides_solution>*1000]).remove();
lcr.findRecipe(480,null,[<liquid:hydrochloric_acid>*3000,<liquid:rare_earth_hydroxides_solution>*1000]).remove();

chemReactor.findRecipe(480,null,[<liquid:hydrochloric_acid>*3000,<liquid:rare_earth_nitrate_solution>*1000]).remove();
lcr.findRecipe(480,null,[<liquid:hydrochloric_acid>*3000,<liquid:rare_earth_nitrate_solution>*1000]).remove();

chemReactor.findRecipe(480,null,[<liquid:hydrochloric_acid>*6000,<liquid:rare_earth_sulfate_solution>*2000]).remove();

dehydrator.findRecipe(500,[<gregtech:meta_item_1:2610>*40],[<liquid:hydrogen_peroxide>*1000,<liquid:sulfuric_acid>*24000]).remove();

dehydrator.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2610>*40)
    .fluidInputs(<liquid:hydrogen_peroxide>*1000,<liquid:sulfuric_acid>*24000)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2023>*110,<gregtech:meta_item_1:2159>*30,<gtadditions:ga_dust:101>*18)
    .EUt(480)
    .duration(200)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .inputs(<contenttweaker:rareearthone>)
    .outputs(<gtadditions:ga_dust:32073>)
    .EUt(12000)
    .duration(800)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .inputs(<contenttweaker:rareearthtwo>)
    .outputs(<gtadditions:ga_dust:32068>)
    .EUt(12000)
    .duration(800)
    .buildAndRegister();

dehydrator.recipeBuilder()
    .inputs(<contenttweaker:rareearththree>)
    .outputs(<gtadditions:ga_dust:32074>)
    .EUt(12000)
    .duration(800)
    .buildAndRegister();

chemReactor.findRecipe(96,[<gregtech:meta_item_1:2061>],[<liquid:methanol>*2000,<liquid:hydrochloric_acid>*2000]).remove();
lcr.findRecipe(96,[<gregtech:meta_item_1:2061>,<gregtech:meta_item_1:32766>.withTag({Configuration: 2})],[<liquid:methane>*2000,<liquid:water>*1000,<liquid:chlorine>*4000]).remove();


centrifuge.recipeBuilder()
	.inputs(<gtadditions:ga_dust:32030>*3)
	.outputs(<gregtech:meta_item_1:2075>*2,<gregtech:meta_item_1:2069>)
	.duration(200)
	.EUt(1900)
	.buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gtadditions:ga_dust:32212>)
    .fluidOutputs(<liquid:impure_monazite_ore_byproduct_slurry>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

electrolyzer.findRecipe(60,[<gregtech:meta_item_1:2606>*6],null).remove();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2606>*6)
    .fluidInputs(<liquid:water>*2000)
    .fluidOutputs(<liquid:neodymium_rich_monazite_solution>*2000)
    .EUt(1200)
    .duration(700)
    .buildAndRegister();









