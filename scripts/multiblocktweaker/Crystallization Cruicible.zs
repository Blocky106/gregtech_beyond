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


var loc = "crystallization_cruicible";
var meta = 10067;
val crystallization_cruicible = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "FCCCF",
                    "CHHHC",
                    "CHHHC",
                    "CHHHC",
                    "FCSCF")
                .aisle(
                    "CCCCC",
                    "CQQQC",
                    "CQQQC",
                    "CQQQC",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "CQQQC",
                    "CQ~QC",
                    "CQQQC",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "CQQQC",
                    "CQ~QC",
                    "CQQQC",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "CQQQC",
                    "CQ~QC",
                    "CQQQC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:6>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_titanium>)
                .where("Q", <metastate:contenttweaker:fused_quartz_block>)
                .where("H", <metastate:gregtech:wire_coil:2>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("FCCCF","CCCCC","CCCCC","CCCCC","CCCCC")
                .aisle("CHHHC","CQQQC","CQQQC","CQQQC","CQQQC")
                .aisle("SHHHC","CQQQC","CQ QC","CQ QC","CQ QC")
                .aisle("CHHHC","CQQQC","CQQQC","CQQQC","CQQQC")
                .aisle("FCCCF","CCCCC","CCCCC","CCCCC","CCCCC")
                .where("C", <metastate:gregtech:metal_casing:6>)
                .where("F", <metastate:gregtech:frame_titanium>)
                .where("Q", <metastate:contenttweaker:fused_quartz_block>)
                .where("H", <metastate:gregtech:wire_coil:2>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(3)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(2)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

