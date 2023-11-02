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


var loc = "sintering_oven";
var meta = 10013;
val sintering_oven = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCC",
                    "FFF",
                    "~~~",
                    "FFF",
                    "~~~",
                    "FFF",
                    "CCC")
                .aisle(
                    "CCC",
                    "FAF",
                    "~A~",
                    "FAF",
                    "~A~",
                    "FAF",
                    "CSC")
                .aisle(
                    "CCC",
                    "FFF",
                    "~~~",
                    "FFF",
                    "~~~",
                    "FFF",
                    "CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:basic_structural_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CF F FC",
                    "CF F FC",
                    "CF F FC")
                .aisle(
                    "CF F FC",
                    "SAAAAAC",
                    "EF F FC")
                .aisle(
                    "CF F FC",
                    "CF F FC",
                    "CF F FC")
                .where("F", <metastate:gregtech:frame_steel>)
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .where("C", <metastate:contenttweaker:basic_structural_casing>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.west())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/basic_structural_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

