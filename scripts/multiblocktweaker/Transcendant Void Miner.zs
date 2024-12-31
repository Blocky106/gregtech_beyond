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


var loc = "transcendant_void_miner";
var meta = 10025;
val transcendant_void_miner = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "CCC",
                    "CSC")
                .aisle(
                    "~F~",
                    "FCF",
                    "~F~")
                .aisle(
                    "~F~",
                    "FCF",
                    "~F~")
                .aisle(
                    "~F~",
                    "FCF",
                    "~F~")
                .aisle(
                    "~~~",
                    "~F~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~F~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~F~",
                    "~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:transcendantminingcasings>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 3)
                .where("F", <metastate:gregtech:frame_pikyonium99ab>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCC",
                    " F",
                    " F ",
                    " F ",
                    "   ",
                    "   ",
                    "   ")
                .aisle(
                    "SCE",
                    "FCF",
                    "FCF",
                    "FCF",
                    " F ",
                    " F ",
                    " F ")
                .aisle(
                    "CCC",
                    " F",
                    " F ",
                    " F ",
                    "   ",
                    "   ",
                    "   ")
                .where("C", <metastate:contenttweaker:transcendantminingcasings>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_pikyonium99ab>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/transcendantminingcasings"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;