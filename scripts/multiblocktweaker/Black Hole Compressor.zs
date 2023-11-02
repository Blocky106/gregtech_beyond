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


var loc = "black_hole_compressor";
var meta = 10021;
val black_hole_compressor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~DFD~",
                    "DCCCD",
                    "FCCCF",
                    "DCCCD",
                    "~DSD~")
                .aisle(
                    "~GGG~",
                    "G~~~G",
                    "G~O~G",
                    "G~~~G",
                    "~GGG~")
                .aisle(
                    "~GGG~",
                    "G~~~G",
                    "G~O~G",
                    "G~~~G",
                    "~GGG~")

                .aisle(
                    "~GGG~",
                    "G~~~G",
                    "G~O~G",
                    "G~~~G",
                    "~GGG~")
                .aisle(
                    "~DFD~",
                    "DCCCD",
                    "FCCCF",
                    "DCCCD",
                    "~DFD~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:quantumcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:contenttweaker:fieldgeneratorcasing>)
                .where("D", <metastate:contenttweaker:dimensionalcasing>)
                .where("O", <metastate:contenttweaker:coil>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    " DFD ",
                    " GGG ",
                    " GGG ",
                    " GGG ",
                    " DFD ")
                .aisle(
                    "DCCCD",
                    "G   G",
                    "G   G",
                    "G   G",
                    "DCCCD")
                .aisle(
                    "SCCCD",
                    "G O G",
                    "G O G",
                    "G O G",
                    "DCCCD")
                .aisle(
                    "DCCCD",
                    "G   G",
                    "G   G",
                    "G   G",
                    "DCCCD")
                .aisle(
                    " DFD ",
                    " GGG ",
                    " GGG ",
                    " GGG ",
                    " DFD ")
                .where("D", <metastate:contenttweaker:dimensionalcasing>)
                .where("F", <metastate:contenttweaker:fieldgeneratorcasing>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:quantumcasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/quantumcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;