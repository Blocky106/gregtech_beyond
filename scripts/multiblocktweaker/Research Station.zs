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


var loc = "research_station";
var meta = 10029;
val research_station = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "~C~",
                    "~~~",
                    "~~~")
                .aisle(
                    "VVV",
                    "VVV",
                    "VVV",
                    "CAC",
                    "CAC",
                    "CAC",
                    "CCC")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC",
                    "~~~",
                    "~~~",
                    "~A~",
                    "~~~")
                .aisle(
                    "CCC",
                    "C~C",
                    "CSC",
                    "~~~",
                    "~~~",
                    "~A~",
                    "~~~")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC",
                    "~~~",
                    "~~~",
                    "~A~",
                    "~~~")
                .aisle(
                    "VVV",
                    "VVV",
                    "VVV",
                    "CAC",
                    "CAC",
                    "CAC",
                    "CCC")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "~C~",
                    "~~~",
                    "~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:computercasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("A", <metastate:contenttweaker:advcomputercasing>)
                .where("V", <metastate:contenttweaker:computercasingvent>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "    CCC",
                    "CCCCVVV",
                    "    CCC",
                    "    CCC",
                    "    CCC",
                    "CCCCVVV",
                    "    CCC")
                .aisle(
                    "    CCC",
                    "CCCCVVV",
                    " A  C C",
                    " A  D E",
                    " A  C C",
                    "CCCCVVV",
                    "    CCC")
                .aisle(
                    "    CCC",
                    "CCCCVVV",
                    "    CCC",
                    "    CCC",
                    "    CCC",
                    "CCCCVVV",
                    "    CCC")
                .where("A", <metastate:contenttweaker:advcomputercasing>)
                .where("V", <metastate:contenttweaker:computercasingvent>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:computercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/computercasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;