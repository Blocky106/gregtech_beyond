import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;


ebf.findRecipe(120, [<minecraft:iron_ingot>],[<liquid:oxygen>*1000]).remove();
ebf.findRecipe(120, [<gregtech:meta_item_1:10140>],[<liquid:oxygen>*1000]).remove();
ebf.findRecipe(120, [<gregtech:meta_item_1:10197>],[<liquid:oxygen>*1000]).remove();

ebf.recipeBuilder()
    .inputs(<minecraft:iron_ingot>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10140>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(480)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10197>)
    .fluidInputs(<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(480)
    .buildAndRegister();

var carbonSource as IItemStack[] = [
<gregtech:meta_item_1:2357>,
<gregtech:meta_item_1:2101>,
<gregtech:meta_item_1:2211>,
<gregtech:meta_item_1:2106>,
];

for i in carbonSource {

ebf.recipeBuilder()
    .inputs(<minecraft:iron_ingot>, i * 2)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10140>, i * 2)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10197>, i* 2)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(80)
    .buildAndRegister();

}

recipes.addShapeless(<gregtech:meta_item_1:2619>*2,[<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2106>]);

recipes.addShaped(<contenttweaker:lq_steel_casing>*6,[[<gregtech:meta_item_1:12619>,null,<gregtech:meta_item_1:12619>],[<gregtech:meta_item_1:12619>,<gregtech:frame_low_quality_steel>,<gregtech:meta_item_1:12619>],[<gregtech:meta_item_1:12619>,null,<gregtech:meta_item_1:12619>]]);


var HighPuritycarbonSource as IItemStack[] = [
<gtadditions:ga_dust:32184>,
<gregtech:meta_item_1:2012>,
];

for i in HighPuritycarbonSource {
    
ebf.recipeBuilder()
    .inputs(<minecraft:iron_ingot>, i)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10140>, i)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(80)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10197>, i)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:1110>)
    .property("temperature", 1800)
    .duration(50)
    .EUt(80)
    .buildAndRegister();

}