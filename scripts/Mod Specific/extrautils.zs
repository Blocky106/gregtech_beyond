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





furnace.remove(<extrautils2:decorativeglass>);



recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), [	[<ore:plateStainlessSteel>, <ore:bookEnchanted>, <ore:plateStainlessSteel>], 	[<gregtech:meta_item_1:32642>, <extrautils2:machine>, <gregtech:meta_item_1:32642>], 	[<ore:wireGtDoubleAluminium>, <ore:circuitAdvanced>, <ore:wireGtDoubleAluminium>]]);



recipes.addShaped(<extrautils2:resonator>, [	[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], 	[<ore:ingotDemonicMetal>, <ore:gemRedstone>, <ore:ingotDemonicMetal>], 	[<ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_2>,<extrautils2:ingredients:4>*4)
    .outputs(<extrautils2:opinium>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium>*2,<gregtech:meta_block_compressed_33:7>)
    .outputs(<extrautils2:opinium:1>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:1>*2,<gregtech:meta_block_compressed_46>,<gregtech:meta_block_compressed_33:7>*2)
    .outputs(<extrautils2:opinium:2>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:2>*2,<gregtech:meta_block_compressed_33:15>,<gregtech:meta_block_compressed_46>*2)
    .outputs(<extrautils2:opinium:3>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:3>*2,<gtadditions:ga_reactor_casing>,<gregtech:meta_block_compressed_33:15>*2)
    .outputs(<extrautils2:opinium:4>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:4>*2,<gtadditions:ga_meta_item:32378>,<gtadditions:ga_reactor_casing>*2)
    .outputs(<extrautils2:opinium:5>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:5>*2,<gtadditions:ga_meta_item:32378>*2,<gregtech:ga_cable:4737>)
    .outputs(<extrautils2:opinium:6>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:6>*2,<gregtech:ga_cable:4737>*2,<gtadditions:ga_meta_item:32343>)
    .outputs(<extrautils2:opinium:7>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:7>*2,<gtadditions:ga_meta_item:32343>*2,<contenttweaker:stablestar>)
    .outputs(<extrautils2:opinium:8>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12133>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<extrautils2:machine>)
    .duration(40)
    .EUt(490)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:block_holier_fog>*4,<enderio:item_material:16>)
    .outputs(<extrautils2:suncrystal:250>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2218>)
    .outputs(<extrautils2:endershard>*9)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<extrautils2:decorativesolid:4>)
    .outputs(<extrautils2:decorativeglass>)
    .property("temperature", 1700)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12858>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<extrautils2:machine>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

recipes.removeByRecipeName("extrautils2:shortcut_hopper");
recipes.removeByRecipeName("extrautils2:shortcut_stick");


recipes.addShaped(<extrautils2:largishchest>, [	[<randomthings:blockofsticks>, <randomthings:blockofsticks>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:chest>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <randomthings:blockofsticks>, <randomthings:blockofsticks>]]);

recipes.addShaped(<extrautils2:trashcan>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:2197>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<extrautils2:trashcanenergy>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:19018>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<extrautils2:trashcanfluid>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:803>, <gregtech:meta_item_1:12184>], [null, null, null]]);
recipes.addShaped(<unstableaxe:unstableaxe>, [	[<ore:ingotUnstable>, <ore:ingotUnstable>, null], 	[<ore:ingotUnstable>, <contenttweaker:obsidianrod>, null], 	[null, <contenttweaker:obsidianrod>, null]]);

mixer.recipeBuilder()
    .inputs(<ore:sand>,<ore:dustGlass>)
    .outputs(<extrautils2:decorativesolid:4>)
    .duration(20)
    .EUt(4)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:9001>,<thaumcraft:nugget:6>)
    .outputs(<extrautils2:unstableingots:1>)
    .duration(200)
    .EUt(48)
    .buildAndRegister();
