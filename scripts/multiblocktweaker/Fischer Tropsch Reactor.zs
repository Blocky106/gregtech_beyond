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


var loc = "fischer_tropsch_reactor";
var meta = 10053;
val fischer_tropsch_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("F~F","~~~","F~F")
                .aisle("CCC","CCC","CSC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","CCC","CCC")
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
                .where("F", <metastate:gregtech:frame_titanium>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"F F",
"CCC",
"CCC",
"CCC")
                .aisle(
"   ",
"SCE",
"C C",
"CCC")
                .aisle(
"F F",
"CCC",
"CCC",
"CCC")
                .where("F", <metastate:gregtech:frame_titanium>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(2)
                        .maxInputs(1)
                        .maxFluidOutputs(9)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

fischer_tropsch_reactor.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:292>)
    .fluidInputs(<liquid:gas>*8000,<liquid:distilled_water>*2000)
    .fluidOutputs(<liquid:fuel>*1000,<liquid:raw_gasoline>*500,<liquid:water>*2000,<liquid:sulfuric_acid>*1000,<liquid:ethylene>*1500,<liquid:ethanol>*1500,<liquid:methanol>*2000,<liquid:formaldehyde>*500)
    .outputs(<contenttweaker:paraffinwax>)
    .duration(200)
    .EUt(2200)
    .buildAndRegister();


