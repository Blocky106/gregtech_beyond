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


recipes.addShaped(<libvulpes:structuremachine>, [	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>], 	[<ore:plateStainlessSteel>, null, <ore:plateStainlessSteel>], 	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>]]);
recipes.addShaped(<advancedrocketry:pipesealer>, [	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:pipeMediumBronze>, <ore:plateSteel>]]);
recipes.addShaped(<advancedrocketry:lens>, [	[null, <ore:paneGlassColorless>, null], 	[<ore:paneGlassColorless>, <ore:gemGlass>, <ore:paneGlassColorless>], 	[null, <ore:paneGlassColorless>, null]]);
recipes.addShaped(<advancedrocketry:satellitepowersource>, [	[null, null, null], [<gregtech:meta_item_1:32750>, <ore:wireGtSingleNickel>, <gregtech:meta_item_1:32750>], 	[null, null, null]]);
recipes.addShaped(<advancedrocketry:ic:1>, [	[<ore:plateGlowstone>, <ore:plateGold>, <ore:plateGlowstone>], 	[<ore:dustRegularRedstone>, <ore:circuitAdvanced>, <ore:dustRegularRedstone>], 	[<ore:plateGlowstone>, <ore:plateGold>, <ore:plateGlowstone>]]);
recipes.addShaped(<libvulpes:coil0:10>, [	[<ore:plateIridium>, <gregtech:meta_item_2:32435>, <ore:plateIridium>], 	[<gregtech:meta_item_2:32435>, null, <gregtech:meta_item_2:32435>], 	[<ore:plateIridium>, <gregtech:meta_item_2:32435>, <ore:plateIridium>]]);




cas.recipeBuilder()
    .inputs(<ore:circuitAdvanced>*4,<gregtech:meta_item_2:32480>*16,<gregtech:cable:112>*8,<gtadditions:ga_meta_item:32246>*12,<gtadditions:ga_meta_item:32244>*12,<gtadditions:ga_meta_item:32245>*12)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<advancedrocketry:ic:2>*4)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

cas.recipeBuilder()
    .inputs(<ore:circuitGood>*4,<gtadditions:ga_meta_item:32207>*16,<gregtech:cable:1001>*8,<gregtech:meta_item_2:32458>*12,<gregtech:meta_item_2:32459>*12,<gregtech:meta_item_2:32460>*12)
    .fluidInputs(<liquid:soldering_alloy>*576)
    .outputs(<advancedrocketry:ic>*4)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:rocket_fuel>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:rocketfuel>*1000)
    .duration(50)
    .EUt(200)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidInputs(<liquid:rocket_fuel>*1000,<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:rocketfuel>*1000)
    .duration(20)
    .EUt(200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32440>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32441>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>*4)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32442>,<gregtech:meta_item_2:32504>*2)
    .fluidInputs(<liquid:plastic>*25)
    .outputs(<advancedrocketry:wafer>*16)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

#advanced rocktry oreDict removals




































