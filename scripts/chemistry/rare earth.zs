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

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:rare_earth_chlorides_solution>*1000)
    .fluidOutputs(<liquid:rare_earth_hydroxides_solution>*200,<liquid:rare_earth_nitrate_solution>*400,<liquid:rare_earth_sulfate_solution>*300,<liquid:wastewater>*100)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();


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

































