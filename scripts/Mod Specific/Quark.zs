import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;








recipes.removeByRecipeName("quark:hopper");

recipes.remove(<quark:custom_chest:0>);
recipes.remove(<quark:custom_chest:1>);
recipes.remove(<quark:custom_chest:2>);
recipes.remove(<quark:custom_chest:3>);
recipes.remove(<quark:custom_chest:4>);

assembler.recipeBuilder()
    .inputs(<minecraft:planks:1>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:0>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks:1>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:0>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks:2>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:1>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks:3>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:2>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks:4>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:3>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<minecraft:planks:5>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<quark:custom_chest:4>)
    .duration(100)
    .EUt(12)
    .buildAndRegister();

recipes.remove(<quark:iron_rod>);

cutting_saw.recipeBuilder()
    .inputs(<minecraft:iron_bars>)
    .outputs(<quark:iron_rod>*3)
    .fluidInputs(<liquid:water>*12)
    .duration(200)
    .EUt(7)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:iron_bars>)
    .outputs(<quark:iron_rod>*3)
    .fluidInputs(<liquid:distilled_water>*10)
    .duration(150)
    .EUt(7)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<minecraft:iron_bars>)
    .outputs(<quark:iron_rod>*3)
    .fluidInputs(<liquid:lubricant>*8)
    .duration(100)
    .EUt(7)
    .buildAndRegister();

lathe.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14033>)
    .outputs(<quark:iron_rod>)
    .EUt(9)
    .duration(40)
    .buildAndRegister();

recipes.remove(<quark:chute>);

assembler.recipeBuilder()
    .inputs(<tconstruct:wooden_hopper>,<gregtech:meta_item_1:12196>*3,<gregtech:meta_item_1:9184>*4)
    .outputs(<quark:chute>)
    .duration(80)
    .EUt(9)
    .buildAndRegister();

recipes.remove(<quark:chain>);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:18033>*3)
    .outputs(<quark:chain>)
    .EUt(19)
    .duration(240)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<quark:biotite>)
    .outputs(<gregtech:meta_item_1:2250>)
    .EUt(19)
    .duration(200)
    .buildAndRegister();