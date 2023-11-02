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


var loc = "tree_farm";
var meta = 10015;
val tree_farm = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "CCC",
                    "CSC")
                .aisle(
                    "WWW",
                    "W~W",
                    "WWW")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC")

                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:logcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("W", <metastate:contenttweaker:woodeneglinsteelcasing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCC",
                    "WWW",
                    "CCC")
                .aisle(
                    "SCE",
                    "W W",
                    "CCC")
                .aisle(
                    "CCC",
                    "WWW",
                    "CCC")
                                   
                .where("C", <metastate:contenttweaker:logcasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("W", <metastate:contenttweaker:woodeneglinsteelcasing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/woodeneglinsteelcasing"))
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;
