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


var loc = "enzymatic_hydrolisis_tank";
var meta = 10042;
val enzymatic_hydrolisis_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~P~~~~",
                    "~~~~~~~~~",
                    "~~~CCC~~~",
                    "~~CCCCC~~",
                    "P~CCCCC~P",
                    "~~CCCCC~~",
                    "~~~CSC~~~")
                .aisle(
                    "~~~~P~~~~",
                    "~~~~~~~~~",
                    "~~~CCC~~~",
                    "~~C~~~C~~",
                    "P~C~~~C~P",
                    "~~C~~~C~~",
                    "~~~CCC~~~")
                .aisle(
                    "~~~~P~~~~",
                    "~~~~~~~~~",
                    "~~~~C~~~~",
                    "~~~C~C~~~",
                    "P~C~~~C~P",
                    "~~~C~C~~~",
                    "~~~CCC~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~~P~~~~",
                    "~~~~C~~~~",
                    "~~~~C~~~~",
                    "~PCCCCCP~",
                    "~~~~C~~~~",
                    "~~~~C~~~~")
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
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "  P    ",
                    "  P    ",
                    "  P    ",
                    "       ")
                .aisle(
                    "       ",
                    "       ",
                    "       ",
                    "  P    ")
                .aisle(
                    " CCC   ",
                    " CCC   ",
                    " CCC   ",
                    "  P    ")
                .aisle(
                    "CCCCC  ",
                    "C   C  ",
                    "CC C   ",
                    "  C    ")
                .aisle(
                    "SCCCE P",
                    "C   C P",
                    "C   C P",
                    "CCCCPP ")
                .aisle(
                    "CCCCC  ",
                    "C   C  ",
                    "CC C   ",
                    "  C    ")
                .aisle(
                    " CCC   ",
                    " CCC   ",
                    " CCC   ",
                    "  P    ")
                .aisle(
                    "       ",
                    "       ",
                    "       ",
                    "  P    ")
                .aisle(
                    "  P    ",
                    "  P    ",
                    "  P    ",
                    "       ")

                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(3)
                        .maxFluidOutputs(1)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

enzymatic_hydrolisis_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:milk>*1000,<liquid:hydrochloric_acid>*100)
    .notConsumable(<liquid:nonoxynol-9>)
    .fluidOutputs(<liquid:peptone>*1000)
    .duration(800)
    .EUt(24)
    .buildAndRegister();