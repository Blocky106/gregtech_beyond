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


var loc = "matter_quantizer";
var meta = 10022;
val matter_quantizer = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "LCL",
                    "CCC",
                    "CHC",
                    "HHH")
                .aisle(
                    "CCC",
                    "C~C",
                    "H~H",
                    "HSH")
                .aisle(
                    "LCL",
                    "CCC",
                    "CHC",
                    "HHH")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("H", 
                <metastate:contenttweaker:highpowercasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("C", <metastate:contenttweaker:quantumcasing>)
                .where("L", <metastate:contenttweaker:lasercasing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "HCCL",
                    "HHCC",
                    "HCCL")
                .aisle(
                    "EHCC",
                    "S  C",
                    "HHCC")
                .aisle(
                    "HCCL",
                    "HHCC",
                    "HCCL")
                .where("C", <metastate:contenttweaker:quantumcasing>)
                .where("L", <metastate:contenttweaker:lasercasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.west())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/highpowercasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;