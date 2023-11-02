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


var loc = "precise_assembler";
var meta = 10000;
val precise_assembler = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCCCC",
                    "CMMMMMMMC",
                    "CMMMMMMMC",
                    "CMMMMMMMC",
                    "CCCCSCCCC")
                .aisle(
                    "F~~~~~~~F",
                    "CGGGGGGGC",
                    "C~~~~~~~C",
                    "CGGGGGGGC",
                    "F~~~~~~~F")
                .aisle(
                    "F~~~~~~~F",
                    "CGGGGGGGC",
                    "C~~~~~~~C",
                    "CGGGGGGGC",
                    "F~~~~~~~F")
                .aisle(
                    "F~~~~~~~F",
                    "CGGGGGGGC",
                    "C~~~~~~~C",
                    "CGGGGGGGC",
                    "F~~~~~~~F")
                .aisle(
                    "CCCCCCCCC",
                    "CMMMMMMMC",
                    "CMMMMMMMC",
                    "CMMMMMMMC",
                    "CCCCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:perciseelectronicunitcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_tungsten_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("M", <metastate:gregtech:machine_casing:6>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCC",
                    "FCCCF",
                    "FCCCF",
                    "FCCCF",
                    "CCCCC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "SMMME",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    " G G ",
                    " G G ",
                    " G G ",
                    "CMMMC")
                .aisle(
                    "CCCCC",
                    "FCCCF",
                    "FCCCF",
                    "FCCCF",
                    "CCCCC")
                .where("C", <metastate:contenttweaker:perciseelectronicunitcasing>)
                .where("F", <metastate:gregtech:frame_tungsten_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("M", <metastate:gregtech:machine_casing:6>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/perciseelectronicunitcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;