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

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var loc = "vacuum_furnace";
var meta = 1004;
val vacuum_furnace = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "PAP",
                    "FCF",
                    "~C~",
                    "~C~",
                    "WCW",
                    "WCW")
                .aisle(
                    "CAC",
                    "P~P",
                    "G~G",
                    "G~G",
                    "W~W",
                    "WSW")
                .aisle(
                    "PAP",
                    "FCF",
                    "~C~",
                    "~C~",
                    "WCW",
                    "WCW")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:vacuumfurnacecasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("W", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("A", <metastate:gregtech:boiler_firebox_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "WW  FP",
                    "WWGGPC",
                    "WW  FP")
                .aisle(
                    "CCCCCA",
                    "S    A",
                    "CCCCCA")
                .aisle(
                    "WW  FP",
                    "WWGGPC",
                    "WW  FP")

                .where("C", <metastate:contenttweaker:vacuumfurnacecasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("W", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("A", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
                .where("W", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[1], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/vacuumfurnacecasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


