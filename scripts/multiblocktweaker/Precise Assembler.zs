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
                        .maxInputs(16)
                        .maxFluidInputs(4)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/perciseelectronicunitcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;




precise_assembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32499>,<gtadditions:ga_meta_item:32029>,<gregtech:meta_item_2:18184>,<gregtech:meta_item_1:32600>,<gregtech:meta_item_2:32483>,<contenttweaker:cupronickelcoil>*2)
    .fluidInputs(<liquid:aluminium>*144,<liquid:red_alloy>*144)
    .outputs(<contenttweaker:microheater>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32493>,<gregtech:meta_item_1:32687>,<contenttweaker:hicomputationstationmk2>,<gregtech:machine:3239>)
    .fluidInputs(<liquid:stainless_steel>*412,<liquid:tungsten_titanium_carbide>*144)
    .outputs(<contenttweaker:neutronaccelerator>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:hicomputationstationmk1>*2,<gregtech:meta_item_2:32480>*8,<gregtech:meta_item_2:18095>*2)
    .fluidInputs(<liquid:lumium>*72,<liquid:enderium>*72,<liquid:plastic>*144,<liquid:signalum>*144)
    .outputs(<contenttweaker:hicomputationstationmk2>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:hicomputationstationmk2>*2,<gregtech:meta_item_2:32503>*4,<gregtech:meta_item_2:32475>*2,<gregtech:meta_item_2:18183>*2)
    .fluidInputs(<liquid:lumium>*144,<liquid:enderium>*288,<liquid:adamantiumalloy>*576,<liquid:tungsten_titanium_carbide>*144)
    .outputs(<contenttweaker:hicomputationstationmk3>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:hicomputationstationmk3>*2,<contenttweaker:engravedenergychip>*8,<gregtech:meta_item_2:32484>*16,<gregtech:meta_item_2:18515>*2)
    .fluidInputs(<liquid:lumium>*288,<liquid:enderium>*576,<liquid:marcem200steel>*1152,<liquid:artheriumsn>*144)
    .outputs(<contenttweaker:hicomputationstationmk4>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:hicomputationstationmk4>*2,<contenttweaker:engravedmanyiullynchip>*8,<contenttweaker:bioprocesssingunit>,<gregtech:meta_item_2:18300>*2)
    .fluidInputs(<liquid:lumium>*576,<liquid:signalum>*1152,<liquid:tanmolyiumbetac>*1728,<liquid:dalisenite>*288)
    .outputs(<contenttweaker:hicomputationstationmk5>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:cable:1966>*16,<contenttweaker:highpowercasing>,<contenttweaker:extremeradiationproofplating>*6,<gregtech:meta_item_1:12544>*4,<gregtech:frame_enriched_naquadah_alloy>)
    .fluidInputs(<liquid:incoloy813>*5000,<liquid:indalloy140>*5000)
    .outputs(<contenttweaker:computercasing>*2)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:cable:1744>*32,<gtadditions:ga_meta_item:32430>*4,<ore:circuitInfinite>,<gtadditions:ga_meta_item:32488>,<gtadditions:ga_meta_item:32486>,<contenttweaker:hicomputationstationmk3>,<gtadditions:ga_meta_item:32487>,<gregtech:meta_item_2:26047>*4,<contenttweaker:onecoolant>)
    .fluidInputs(<liquid:incoloy813>*5000,<liquid:indalloy140>*5000)
    .outputs(<contenttweaker:computercasing>*2)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();

precise_assembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12730>*32,<gregtech:meta_item_1:12144>*32,<gregtech:meta_item_1:12700>*32,<gregtech:meta_item_1:12395>*32,<gregtech:meta_item_1:12143>*32,<gregtech:cable:1744>*16,<gregtech:meta_item_1:12965>*32,<gregtech:meta_item_1:12141>*32,<gregtech:meta_item_1:32655>*4,<gregtech:meta_item_1:12840>*32,<gregtech:meta_item_1:12563>*16,<gregtech:meta_item_1:12145>*32,<contenttweaker:hicomputationstationmk3>*4,<ore:circuitInfinite>*8,<gregtech:meta_item_1:32675>*2)
    .fluidInputs(<liquid:sterilized_growth_medium>*100000,<liquid:tritanium>*80000,<liquid:soldering_alloy>*500000,<liquid:indalloy140>*24000)
    .outputs(<contenttweaker:quantumcontrolcomputermk1>)
    .duration(200)
    .EUt(1500)
    .buildAndRegister();



