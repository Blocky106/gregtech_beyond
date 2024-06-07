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


var loc = "cryogenic_distillation_plant";
var meta = 10043;
val cryogenic_distillation_plant = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCC","CCC","CSC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","CCC","CCC")
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
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"CCC",
"CCC",
"CCC",
"CCC")
                .aisle(
"SCE",
"C C",
"C C",
"CCC")
                .aisle(
"CCC",
"CCC",
"CCC",
"CCC")
                .where("C", <metastate:gregtech:metal_casing:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(9)
                        .maxFluidOutputs(9)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cold_air>*3000,<liquid:air>*2050)
    .fluidOutputs(<liquid:untreated_liquid_oxygen>*50,<liquid:cold_waste_gaseous_nitrogen>*5440,<liquid:argon_rich_gas>*200)
    .duration(400)
    .EUt(116)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:argon_rich_gas>*500)
    .fluidOutputs(<liquid:crude_argon_vapor>*600)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:nitrogen_stripped_rare_gas_mixture>*10000)
    .fluidOutputs(<liquid:crude_xenon>*90,<liquid:crude_krypton>*114,<liquid:crude_helium>*524,<liquid:crude_neon>*1818,<liquid:crude_argon>*7454)
    .duration(200)
    .EUt(84)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:liquid_nitrogen>*200,<liquid:cold_gaseous_oxygen>*200,<liquid:crude_argon>*1000)
    .fluidOutputs(<liquid:cold_gaseous_nitrogen>*200,<liquid:liquid_oxygen>*200,<liquid:partially_liquid_argon>*1000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:liquid_nitrogen>*200,<liquid:cold_gaseous_oxygen>*200,<liquid:crude_xenon>*1000)
    .fluidOutputs(<liquid:cold_gaseous_nitrogen>*200,<liquid:liquid_oxygen>*200,<liquid:partially_liquid_xenon>*1000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:liquid_nitrogen>*200,<liquid:cold_gaseous_oxygen>*200,<liquid:crude_krypton>*1000)
    .fluidOutputs(<liquid:cold_gaseous_nitrogen>*200,<liquid:liquid_oxygen>*200,<liquid:partially_liquid_krypton>*1000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:liquid_nitrogen>*200,<liquid:cold_gaseous_oxygen>*200,<liquid:crude_helium>*1000)
    .fluidOutputs(<liquid:cold_gaseous_nitrogen>*200,<liquid:liquid_oxygen>*200,<liquid:partially_liquid_helium>*1000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:liquid_nitrogen>*200,<liquid:cold_gaseous_oxygen>*200,<liquid:crude_neon>*1000)
    .fluidOutputs(<liquid:cold_gaseous_nitrogen>*200,<liquid:liquid_oxygen>*200,<liquid:partially_liquid_neon>*1000)
    .duration(800)
    .EUt(12)
    .buildAndRegister();

cryogenic_distillation_plant.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sulfur_carbon_mixture>*1000)
    .fluidOutputs(<liquid:carbon_dioxide>*1000,<liquid:sulfur_dioxide>*1000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

 