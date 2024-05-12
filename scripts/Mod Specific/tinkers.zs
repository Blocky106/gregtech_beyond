import mods.tconstruct.Alloy;
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
import mods.tconstruct.Casting;


mods.tconstruct.Alloy.removeRecipe(<liquid:cupronickel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:red_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:tin_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:invar>);
mods.tconstruct.Alloy.removeRecipe(<liquid:battery_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:soldering_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:magnalium>);
mods.tconstruct.Alloy.removeRecipe(<liquid:cobalt_brass>);
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
mods.tconstruct.Alloy.removeRecipe(<liquid:bronze>);
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.tconstruct.Alloy.removeRecipe(<liquid:stone>);


#mods.tconstruct.Casting.addTableRecipe(<gregtech:meta_item_1:10018>, <tconstruct:cast_custom>, <liquid:copper>, 144);
#mods.tconstruct.Alloy.removeTableRecipe(<liquid:copper>);

recipes.remove(<tconstruct:ingots>);

alloy_smelter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19026>*4,<tconstruct:materials:18>)
    .outputs(<tconstruct:materials:19>)
    .duration(500)
    .EUt(290)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<minecraft:glass>)
    .outputs(<tconstruct:clear_glass>)
    .duration(290)
    .EUt(600)
    .property("temperature",300)
    .buildAndRegister();

recipes.addShaped(<tconstruct:pattern>, [	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:plankWood>, <minecraft:stone_button>, <ore:plankWood>], 	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]]);
recipes.addShapeless(<tconstruct:soil>,[<minecraft:gravel>,<minecraft:sand>,<minecraft:clay_ball>]);
recipes.addShaped(<tconstruct:smeltery_controller>, [	[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], [<ore:ingotBrickSeared>, <ore:itemSimpleMachineChassi>, <ore:ingotBrickSeared>], 	[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]]);
recipes.addShaped(<tconstruct:tooltables>, [	[<ore:plankWood>, <ore:workbench>, <ore:plankWood>], 	[<ore:stickLongWood>, <ore:slabWood>, <ore:stickLongWood>], 	[<ore:screwIron>, null, <ore:screwIron>]]);


mods.tconstruct.Melting.removeRecipe(<liquid:cupronickel>);
mods.tconstruct.Melting.removeRecipe(<liquid:zylon>);
mods.tconstruct.Melting.removeRecipe(<liquid:invar>);
mods.tconstruct.Melting.removeRecipe(<liquid:copperalloy>);
mods.tconstruct.Melting.removeRecipe(<liquid:kevlar>);
mods.tconstruct.Melting.removeRecipe(<liquid:plastic>);
mods.tconstruct.Melting.removeRecipe(<liquid:polycaprolactam>);
mods.tconstruct.Melting.removeRecipe(<liquid:polytetrafluoroethylene>);
mods.tconstruct.Melting.removeRecipe(<liquid:fullerenepolymertetrix>);
mods.tconstruct.Melting.removeRecipe(<liquid:tumbaga>);
mods.tconstruct.Melting.removeRecipe(<liquid:polyphenylene_sulfide>);
mods.tconstruct.Melting.removeRecipe(<liquid:polyurethane>);
mods.tconstruct.Melting.removeRecipe(<liquid:fullerene_polymer_matrix>);
mods.tconstruct.Melting.removeRecipe(<liquid:polybenzimidazole>);
mods.tconstruct.Melting.removeRecipe(<liquid:reinforced_epoxy_resin>);
mods.tconstruct.Melting.removeRecipe(<liquid:polyimide>);
mods.tconstruct.Melting.removeRecipe(<liquid:polyvinyl_chloride>);
mods.tconstruct.Melting.removeRecipe(<liquid:reinforcedkevlar>);
mods.tconstruct.Melting.removeRecipe(<liquid:silicon_rubber>);
mods.tconstruct.Melting.removeRecipe(<liquid:aluminium>);
mods.tconstruct.Melting.removeRecipe(<liquid:epoxid>);
mods.tconstruct.Melting.removeRecipe(<liquid:taranium>);
mods.tconstruct.Melting.removeRecipe(<liquid:tritanium>);
mods.tconstruct.Melting.removeRecipe(<liquid:seaborgium>);
mods.tconstruct.Melting.removeRecipe(<liquid:stainless_steel>);

recipes.addShaped(<tconstruct:materials:14>, [	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:cast>, <ore:plateSteel>], 	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShapeless(<minecraft:stone_button>,[<minecraft:stone>,<gregtech:meta_tool:5>]);
recipes.addShaped(<tconstruct:seared_tank>, [	[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>], 	[<ore:ingotBrickSeared>, <ore:dustGlass>, <ore:ingotBrickSeared>], 	[<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]]);
recipes.remove(<tconstruct:seared_tank>);


