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


var loc = "high_vacuum_evaporation_system";
var meta = 10123;
val high_vacuum_evaporation_system = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CSC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 60)
                .whereOr("C", 
                <metastate:contenttweaker:thermalcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC")
                .aisle(
                    "CCC",
                    "S E",
                    "C C",
                    "C C",
                    "C C",
                    "C C",
                    "CCC")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC")
                .where("C", <metastate:contenttweaker:thermalcasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/thermalcasing"))
.buildAndRegister() as Multiblock;

high_vacuum_evaporation_system.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:cured_ga_as_substrate>,<gregtech:meta_item_1:19145>)
    .outputs(<contenttweaker:nano_smd_resistor_substrate>)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

high_vacuum_evaporation_system.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:mesa_structured_ga_as_wafer>,<gregtech:meta_item_1:14026>)
    .outputs(<contenttweaker:gold_layered_ga_as_wafer>)
    .duration(400)
    .EUt(1800)
    .buildAndRegister();