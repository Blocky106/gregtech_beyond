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


var loc = "pressurized_sterile_tank";
var meta = 10032;
val pressurized_sterile_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~C~~",
                    "~CCC~",
                    "CCCCC",
                    "~CCC~",
                    "~~C~~")
                .aisle(
                    "~CCC~",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "~CSC~")
                .aisle(
                    "~CCC~",
                    "CHHHC",
                    "CH~HC",
                    "CHHHC",
                    "~CCC~")
                .aisle(
                    "~CCC~",
                    "CHHHC",
                    "CH~HC",
                    "CHHHC",
                    "~CCC~")
                .aisle(
                    "~CCC~",
                    "CHHHC",
                    "CH~HC",
                    "CHHHC",
                    "~CCC~")
                .aisle(
                    "~CCC~",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "~CCC~")
                .aisle(
                    "~~C~~",
                    "~CCC~",
                    "CCCCC",
                    "~CCC~",
                    "~~C~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
               <metastate:gtadditions:ga_metal_casing_2:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("H", <metastate:gtadditions:ga_metal_casing_1:7>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "  C  ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    "  C  ")
                .aisle(
                    " CCC ",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    " CCC ")
                .aisle(
                    "CCCCC",
                    "SHHHE",
                    "CH HC",
                    "CH HC",
                    "CH HC",
                    "CHHHC",
                    "CCCCC")
                .aisle(
                    " CCC ",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    " CCC ")
                .aisle(
                    "  C  ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    " CCC ",
                    "  C  ")
                .where("H", <metastate:gtadditions:ga_metal_casing_1:7>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_metal_casing_2:4>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.east())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.east())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;