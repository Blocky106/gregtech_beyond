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


var loc = "large_fluid_driller";
var meta = 10063;
val large_fluid_driller = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCCCC~",
                    "CCCCCCC",
                    "CC~~~CC",
                    "CC~P~CC",
                    "CC~~~CC",
                    "CCCCCCC",
                    "~CCSCC~")
                .aisle(
                    "~~CCC~~",
                    "~~~~~~~",
                    "C~~~~~C",
                    "C~~P~~C",
                    "C~~~~~C",
                    "~~~~~~~",
                    "~~CCC~~")
                .aisle(
                    "~~FCF~~",
                    "~~~C~~~",
                    "F~~~~~F",
                    "CC~P~CC",
                    "F~~~~~F",
                    "~~~C~~~",
                    "~~FCF~~")
                .aisle(
                    "~~~F~~~",
                    "~~~F~~~",
                    "~~~~~~~",
                    "FF~P~FF",
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~~F~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~~~~~~",
                    "~F~P~F~",
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~FFF~~",
                    "~F~~~F~",
                    "~F~P~F~",
                    "~F~~~F~",
                    "~~FFF~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~CCC~~",
                    "~CCCCC~",
                    "~CCPCC~",
                    "~CCCCC~",
                    "~~CCC~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~FCF~~",
                    "~FCPCF~",
                    "~~FCF~~",
                    "~~~F~~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~~C~~~",
                    "~FCCCF~",
                    "~~~C~~~",
                    "~~~F~~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~F~~~",
                    "~~FFF~~",
                    "~~~F~~~",
                    "~~~~~~~",
                    "~~~~~~~")
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
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCCCC ","  CCC  ","  FCF  ","   F   ","       ","       ","       ","       ","       ","       ")
                .aisle("CCCCCCC","       ","   C   ","   F   ","   F   ","  FFF  ","  CCC  ","   F   ","   F   ","       ")
                .aisle("CC   CC","C     C","F     F","       ","       "," F   F "," CCCCC ","  FCF  ","   C   ","   F   ")
                .aisle("SC P CE","CC P CC","CC P CC","FF P FF"," F P F "," F P F "," CCPCC "," FCPCF "," FCCCF ","  FFF  ")
                .aisle("CC   CC","C     C","F     F","       ","       "," F   F "," CCCCC ","  FCF  ","   C   ","   F   ")
                .aisle("CCCCCCC","       ","   C   ","   F   ","   F   ","  FFF  ","  CCC  ","   F   ","   F   ","       ")
                .aisle(" CCCCC ","  CCC  ","  FCF  ","   F   ","       ","       ","       ","       ","       ","       ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;


large_fluid_driller.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:natural_gas>*100)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

large_fluid_driller.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .fluidOutputs(<liquid:natural_gas>*400)
    .duration(20)
    .EUt(80)
    .buildAndRegister();

large_fluid_driller.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidOutputs(<liquid:natural_gas>*1600)
    .duration(20)
    .EUt(360)
    .buildAndRegister();

large_fluid_driller.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .fluidOutputs(<liquid:natural_gas>*4800)
    .duration(20)
    .EUt(1800)
    .buildAndRegister();

large_fluid_driller.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .fluidOutputs(<liquid:natural_gas>*19200)
    .duration(20)
    .EUt(7000)
    .buildAndRegister();