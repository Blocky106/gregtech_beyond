import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.functions.IUpdateFunction;
import mods.gregtech.recipe.IRecipeLogic;

var loc = "oxidation_furnace";
var meta = 10127;
val oxidation_furnace = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~C~~F~~F",
                    "CCC~~~~~",
                    "~C~~F~~F")
                .aisle(
                    "~C~~ZZZZ",
                    "C~C~ZZZZ",
                    "~C~~ZZZZ")
                .aisle(
                    "~C~~ZGGZ",
                    "C~CPZ~~Z",
                    "~C~~SGGZ")
                .aisle(
                    "~C~~ZZZZ",
                    "CCC~ZZZZ",
                    "~C~~ZZZZ")
                .aisle(
                    "~~~~~~~~",
                    "~P~~~~P~",
                    "~~~~~~~~")
                .aisle(
                    "~~~~~~~~",
                    "~PPPPPP~",
                    "~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('Z', 12)
                .whereOr("Z", 
                <metastate:gregtech:metal_casing:2>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" C "," C "," C "," C ","   ","   ")
                .aisle("CCC","C C","C C","CCC"," P "," P ")
                .aisle(" C "," C "," C "," C ","   "," P ")
                .aisle("   ","   "," P ","   ","   "," P ")
                .aisle("F F","ZZZ","SZE","ZZZ","   "," P ")
                .aisle("   ","ZZZ","G G","ZZZ","   "," P ")
                .aisle("   ","ZZZ","G G","ZZZ"," P "," P ")
                .aisle("F F","ZZZ","ZZZ","ZZZ","   ","   ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("Z", <metastate:gregtech:metal_casing:2>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxOutputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

oxidation_furnace.recipeMap.recipeBuilder()
    .inputs(<minecraft:sand>)
    .outputs(<minecraft:glass>)
    .fluidInputs(<liquid:oxygen>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

oxidation_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2009>)
    .notConsumable(<gtadditions:ga_dust:32240>)
    .outputs(<gtadditions:ga_dust:32261>)
    .fluidInputs(<liquid:hydrogen>*1000)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

oxidation_furnace.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000)
    .inputs(<gregtech:meta_item_1:2888>*11,<gregtech:meta_item_1:2898>*5)
    .outputs(<gregtech:meta_item_1:2887>*4,<gtadditions:ga_dust:115>*7)
    .fluidOutputs(<liquid:rhodium_sulfate>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

oxidation_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2750>*4)
    .outputs(<gregtech:meta_item_1:2074>)
    .fluidOutputs(<liquid:oxygen>*3000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();
    