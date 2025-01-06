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


var loc = "flash_chromatography_system";
var meta = 10115;
val flash_chromatography_system = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "FCFTTT",
                    "CCCTTT",
                    "CCCTTT",
                    "FCF~~~")
                .aisle(
                    "CCCBGB",
                    "C~CT~T",
                    "C~CBGB",
                    "CSC~~~")
                .aisle(
                    "CCCBGB",
                    "CCCT~T",
                    "CCCBGB",
                    "CCC~~~")
                .aisle(
                    "~~~TTT",
                    "~P~TTT",
                    "~~~TTT",
                    "~~~~~~")
                .aisle(
                    "~~~~~~",
                    "~P~~P~",
                    "~~~~~~",
                    "~~~~~~")
                .aisle(
                    "~~~~~~",
                    "~PPPP~",
                    "~~~~~~",
                    "~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 20)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_stainless_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("T", <metastate:gregtech:metal_casing:6>)
                .where("B", <metastate:gregtech:boiler_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:2>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("FCCF","CCCC","CCCC","    ","    ","    ")
                .aisle("CCCC","S  C","CCCC","  P ","  P ","  P ")
                .aisle("FCCF","CCCC","CCCC","    ","    ","  P ")
                .aisle(" TTT"," BTB"," BTB"," TTT","    ","  P ")
                .aisle(" TTT"," G G"," G G"," TTT","  P ","  P ")
                .aisle(" TTT"," BTB"," BTB"," TTT","    ","    ")
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("F", <metastate:gregtech:frame_stainless_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("T", <metastate:gregtech:metal_casing:6>)
                .where("B", <metastate:gregtech:boiler_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:2>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(2)
                        .maxInputs(1)
                        .maxFluidOutputs(4)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

flash_chromatography_system.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:oleic_acid>*1000)
    .fluidOutputs(<liquid:purified_oleic_acid>*1000)
    .duration(2000)
    .EUt(800)
    .buildAndRegister();