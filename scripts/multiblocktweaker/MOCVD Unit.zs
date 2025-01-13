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


var loc = "mocvd_unit";
var meta = 10070;
val mocvd_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "SCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC")
                .aisle(
                    "CCC",
                    "G~G",
                    "GTG",
                    "G~G",
                    "CCC",
                    "CPC",
                    "CPC",
                    "CPC",
                    "CCC",
                    "G~G",
                    "GTG",
                    "G~G",
                    "CCC")
                .aisle(
                    "~C~",
                    "~G~",
                    "~G~",
                    "~G~",
                    "CCC",
                    "~~~",
                    "~~~",
                    "~~~",
                    "CCC",
                    "~G~",
                    "~G~",
                    "~G~",
                    "~C~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 36)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_1:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("T", <metastate:gregtech:wire_coil:2>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCC","CCC"," C ")
                .aisle("CCC","G G"," G ")
                .aisle("CCC","GTG"," G ")
                .aisle("CCC","G G"," G ")
                .aisle("CCC","CCC","CCC")
                .aisle("CCC"," P ","   ")
                .aisle("SCE"," P ","   ")
                .aisle("CCC"," P ","   ")
                .aisle("CCC","CCC","CCC")
                .aisle("CCC","G G"," G ")
                .aisle("CCC","GTG"," G ")
                .aisle("CCC","G G"," G ")
                .aisle("CCC","CCC"," C ")
                .where("C", <metastate:gtadditions:ga_metal_casing_1:5>)
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("T", <metastate:gregtech:wire_coil:2>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(3)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;


mocvd_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:trimethylgallium>*1000,<liquid:diethylzinc>*1000)
    .inputs(<contenttweaker:ga_as_wafer>)
    .outputs(<contenttweaker:p_type_doped_ga_as_wafer>)
    .duration(2000)
    .EUt(120)
    .buildAndRegister();

mocvd_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:trimethylgallium>*1000,<liquid:arsine>*1000)
    .inputs(<contenttweaker:p_type_doped_ga_as_wafer>)
    .outputs(<contenttweaker:doped_ga_as_wafer>)
    .duration(2000)
    .EUt(120)
    .buildAndRegister();