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


var loc = "rare_gas_stripping_column";
var meta = 10047;
val rare_gas_stripping_column = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("F~F~F~F","~~~~~~~","F~F~F~F")
                .aisle("CCCCCCC","CCCCCCC","CCCCCCC")
                .aisle("CCCCCCC","C~~~~~C","CCCSCCC")
                .aisle("CCCCCCC","CCCCCCC","CCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_1:8>,
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
                .aisle("F F","CCC","CCC","CCC")
                .aisle("   ","CCC","C C","CCC")
                .aisle("F F","CCC","C C","CCC")
                .aisle("   ","CCC","S E","CCC")
                .aisle("F F","CCC","C C","CCC")
                .aisle("   ","CCC","C C","CCC")
                .aisle("F F","CCC","CCC","CCC")
                .where("C", <metastate:gtadditions:ga_metal_casing_1:8>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(3)
                        .maxFluidOutputs(2)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

rare_gas_stripping_column.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:crude_argon_vapor>*1000,<liquid:liquid_oxygen>*1000,<liquid:liquid_nitrogen>*1000)
    .fluidOutputs(<liquid:oxygen>*1000,<liquid:rare_gas_rich_gaseous_nitrogen>*2000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();