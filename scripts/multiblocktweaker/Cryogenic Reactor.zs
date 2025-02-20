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


var loc = "cryogenic_reactor";
var meta = 10066;
val cryogenic_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~UU",
                    "F~~~UU",
                    "~~C~~~",
                    "~CCC~~",
                    "~~C~~~",
                    "F~~~F~")
                .aisle(
                    "~~~~MM",
                    "F~C~MM",
                    "~CVC~~",
                    "CVVVC~",
                    "~CVC~~",
                    "F~C~F~")
                .aisle(
                    "~~~~MM",
                    "FPPPPM",
                    "CVVVP~",
                    "CV~VP~",
                    "CVVVP~",
                    "FCSCF~")
                .aisle(
                    "~~~~MM",
                    "F~C~MM",
                    "~CVC~~",
                    "CVVVC~",
                    "~CVC~~",
                    "F~C~F~")
                .aisle(
                    "~~~~MM",
                    "F~~~MM",
                    "~~C~~~",
                    "~CCC~~",
                    "~~C~~~",
                    "F~~~F~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:3>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_aluminium>)
                .where("M", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("U", <metastate:gregtech:frame_steel>)
                .where("V", <metastate:gtadditions:ga_multiblock_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("F   F ","F C F ","FCCCF ","F C F ","F   F ")
                .aisle("  C   "," CVC  ","CVVVP "," CVC  ","  C   ")
                .aisle(" CCC  ","CVVVC ","SV VP ","CVVVC "," CCC  ")
                .aisle("  C   "," CVC  ","CVVVP "," CVC  ","  C   ")
                .aisle("F   UU","F C MM","FPPPPM","F C MM","F   MM")
                .aisle("    UU","    MM","    MM","    MM","    MM")
                .where("C", <metastate:gregtech:metal_casing:3>)
                .where("F", <metastate:gregtech:frame_aluminium>)
                .where("M", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("U", <metastate:gregtech:frame_steel>)
                .where("V", <metastate:gtadditions:ga_multiblock_casing:1>)
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

cryogenic_reactor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2065>)
    .fluidInputs(<liquid:chlorine>*2000)
    .fluidOutputs(<liquid:sulfur_dichloride>*1000)
    .duration(400)
    .EUt(180)
    .buildAndRegister();

cryogenic_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:bromine>*3000,<liquid:potassium_hydroxide>*1296)
    .outputs(<gtadditions:ga_dust:337>*5)
    .fluidOutputs(<liquid:ice>*3000)
    .duration(280)
    .EUt(400)
    .buildAndRegister();

cryogenic_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:ammonia>*1000,<liquid:resorcinol>*1000)
    .fluidOutputs(<liquid:ice>*1000,<liquid:3_aminophenol>*1000)
    .duration(480)
    .EUt(500)
    .buildAndRegister();

cryogenic_reactor.recipeMap.recipeBuilder() 
    .fluidInputs(<liquid:octane>*3000)
    .inputs(<gregtech:meta_item_1:2050>)
    .fluidOutputs(<liquid:liquid_hydrogen>*3000,<liquid:trioctylphosphine>*1000)
    .duration(480)
    .EUt(500)
    .buildAndRegister();
