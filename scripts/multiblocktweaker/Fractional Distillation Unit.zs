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


var loc = "fractional_distillation_unit";
var meta = 10133;
val fractional_distillation_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~")
                .aisle(
                    "~CCC~",
                    "FC~CF",
                    "~C~C~",
                    "FC~CF",
                    "~C~C~",
                    "FC~CF",
                    "~C~C~",
                    "FC~CF",
                    "~C~C~",
                    "FC~CF",
                    "~CSC~")
                .aisle(
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~",
                    "FCCCF",
                    "~CCC~")
                .aisle(
                    "~~~~~",
                    "FFFFF",
                    "~~~~~",
                    "FFFFF",
                    "~~~~~",
                    "FFFFF",
                    "~~~~~",
                    "FFFFF",
                    "~~~~~",
                    "FFFFF",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" F F F F F "," F F F F F "," F F F F F "," F F F F F ")
                .aisle("CCCCCCCCCCC","CCCCCCCCCCC","CCCCCCCCCCC"," F F F F F ")
                .aisle("CCCCCCCCCCC","S         E","CCCCCCCCCCC"," F F F F F ")
                .aisle("CCCCCCCCCCC","CCCCCCCCCCC","CCCCCCCCCCC"," F F F F F ")
                .aisle(" F F F F F "," F F F F F "," F F F F F "," F F F F F ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(8)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

fractional_distillation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steamcracked_naphtha>*1000)
    .fluidOutputs(<liquid:heavy_fuel>*25,<liquid:light_fuel>*50,<liquid:butene>*50,<liquid:butadiene>*50,<liquid:propane>*15,<liquid:propene>*15,<liquid:pentane>*50,<liquid:pentene>*50)
    .duration(200)
    .EUt(800)
    .buildAndRegister();