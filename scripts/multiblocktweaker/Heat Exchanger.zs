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


var loc = "heat_exchanger";
var meta = 10045;
val heat_exchanger = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "F~F",
                    "~~~",
                    "F~F")
                .aisle(
                    "CCC",
                    "CCC",
                    "CSC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "F F",
                    "CCC",
                    "CCC",
                    "CCC")
                .aisle(
                    "   ",
                    "SCE",
                    "C C",
                    "CCC")
                .aisle(
                    "F F",
                    "CCC",
                    "CCC",
                    "CCC")
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000)
    .fluidOutputs(<liquid:liquid_oxygen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:argon>*1000)
    .fluidOutputs(<liquid:liquid_argon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:xenon>*1000)
    .fluidOutputs(<liquid:liquid_xenon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:krypton>*1000)
    .fluidOutputs(<liquid:liquid_krypton>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:helium>*1000)
    .fluidOutputs(<liquid:liquid_helium>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:neon>*1000)
    .fluidOutputs(<liquid:liquid_neon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*1000)
    .fluidOutputs(<liquid:liquid_nitrogen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:oxygen>*1000)
    .fluidInputs(<liquid:liquid_oxygen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:argon>*1000)
    .fluidInputs(<liquid:liquid_argon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:xenon>*1000)
    .fluidInputs(<liquid:liquid_xenon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:krypton>*1000)
    .fluidInputs(<liquid:liquid_krypton>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:helium>*1000)
    .fluidInputs(<liquid:liquid_helium>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:neon>*1000)
    .fluidInputs(<liquid:liquid_neon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:nitrogen>*1000)
    .fluidInputs(<liquid:liquid_nitrogen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:nitrogen>*1000)
    .fluidInputs(<liquid:liquid_nitrogen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:cold_air>*1000)
    .fluidInputs(<liquid:air>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

heat_exchanger.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cold_air>*1000)
    .fluidOutputs(<liquid:air>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();