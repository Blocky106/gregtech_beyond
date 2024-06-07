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


var loc = "condensation_unit";
var meta = 10046;
val condensation_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCCCC","CCCCC","CCCCC","CCCCC","CCCCC")
                .aisle("CCCCC","C~P~C","CPPPC","C~P~C","CCSCC")
                .aisle("CCCCC","CGGGC","CGGGC","CGGGC","CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:3>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"CCCCC",
"CCCCC",
"CCCCC")
                .aisle(
"CCCCC",
"C P C",
"CGGGC")
                .aisle(
"CCCCC",
"SPPPE",
"CGGGC")
                .aisle(
"CCCCC",
"C P C",
"CGGGC")
                .aisle(
"CCCCC",
"CCCCC",
"CCCCC")
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("C", <metastate:gregtech:metal_casing:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(4)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

condensation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:rare_gas_rich_gaseous_nitrogen>*1000)
    .fluidOutputs(<liquid:crude_krypton>*100,<liquid:cold_gaseous_oxygen>*200,<liquid:rare_gas_mixture>*700)
    .duration(70)
    .EUt(80)
    .buildAndRegister();

condensation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:rare_gas_mixture>*1000,<liquid:liquid_nitrogen>*500)
    .fluidOutputs(<liquid:nitrogen>*1000,<liquid:nitrogen_stripped_rare_gas_mixture>*500)
    .duration(70)
    .EUt(80)
    .buildAndRegister();

condensation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:crude_argon_vapor>*1000,<liquid:supercooled_oxygen>*1000)
    .fluidOutputs(<liquid:crude_argon>*100,<liquid:liquid_oxygen>*1000)
    .duration(70)
    .EUt(80)
    .buildAndRegister();

condensation_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cold_waste_gaseous_nitrogen>*100)
    .fluidOutputs(<liquid:liquid_waste_nitrogen>*100)
    .duration(20)
    .EUt(40)
    .buildAndRegister();



