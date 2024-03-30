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


var loc = "pressure_swing_adsorber";
var meta = 10052;
val pressure_swing_adsorber = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCC","CCC","CCC","CSC")
                .aisle("CCC","C~C","C~C","CCC")
                .aisle("CCC","CCC","CCC","CCC")
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
                .aisle("CCC","CCC","CCC","CCC")
                .aisle("SCE","C C","C C","CCC")
                .aisle("CCC","CCC","CCC","CCC")
                .where("C", <metastate:gregtech:metal_casing:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
            FactoryRecipeMap.start(loc)
                        .maxFluidOutputs(2)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

pressure_swing_adsorber.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:syngas>*10000)
    .fluidOutputs(<liquid:hydrogen>*6000,<liquid:carbon_monoxide>*4000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

pressure_swing_adsorber.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:air>*10000)
    .fluidOutputs(<liquid:nitrogen>*7800,<liquid:oxygen>*2200)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

pressure_swing_adsorber.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:salt_water>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:2155>*5)
    .duration(400)
    .EUt(12)
    .buildAndRegister();