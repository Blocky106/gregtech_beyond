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


var loc = "catalytic_reformation_unit";
var meta = 10039;
val catalytic_reformation_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~F~F~F~",
                    "~~~~~~~",
                    "~F~F~F~")
                .aisle(
                    "~CCCCC~",
                    "~CCCCC~",
                    "~CCSCC~")
                .aisle(
                    "~CCCCC~",
                    "PC~~~CP",
                    "~CCCCC~")
                .aisle(
                    "~CCCCC~",
                    "PCCCCCP",
                    "~CCCCC~")
                .aisle(
                    "~~~~~~~",
                    "PPP~PPP",
                    "~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_1:9>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_eglin_steel>)
                .where("P", <metastate:gtadditions:ga_multiblock_casing:14>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "   ",
                    "   ",
                    " P ",
                    " P ",
                    " P ")
                .aisle(
                    "F F",
                    "CCC",
                    "CCC",
                    "CCC",
                    " P ")
                .aisle(
                    "   ",
                    "CCC",
                    "C C",
                    "CCC",
                    " P ")
                .aisle(
                    "F F",
                    "SCE",
                    "CCC",
                    "CCC",
                    "   ")
                .aisle(
                    "   ",
                    "CCC",
                    "C C",
                    "CCC",
                    " P ")
                .aisle(
                    "F F",
                    "CCC",
                    "CCC",
                    "CCC",
                    " P ")
                .aisle(
                    "   ",
                    "   ",
                    " P ",
                    " P ",
                    " P ")
                .where("C", <metastate:gtadditions:ga_metal_casing_1:9>)
                .where("F", <metastate:gregtech:frame_eglin_steel>)
                .where("P", <metastate:gtadditions:ga_multiblock_casing:14>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

catalytic_reformation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:mxylene>*1000)
    .fluidOutputs(<liquid:pxylene>*1000)
    .notConsumable(<gtadditions:ga_dust:32158>)
    .duration(200)
    .EUt(200)
    .buildAndRegister();