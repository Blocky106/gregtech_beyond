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


var loc = "transcendant_plasma_mixer";
var meta = 10003;
val transcendant_plasma_mixer = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CMMMC",
                    "CMMMC",
                    "CMMMC",
                    "~CSC~")
                .aisle(
                    "~MHM~",
                    "M~~~M",
                    "H~O~H",
                    "M~~~M",
                    "~MHM~")
                .aisle(
                    "~MHM~",
                    "M~~~M",
                    "H~O~H",
                    "M~~~M",
                    "~MHM~")
                .aisle(
                    "~MHM~",
                    "M~~~M",
                    "H~O~H",
                    "M~~~M",
                    "~MHM~")
                .aisle(
                    "~MHM~",
                    "M~~~M",
                    "H~O~H",
                    "M~~~M",
                    "~MHM~")
                .aisle(
                    "~MHM~",
                    "M~~~M",
                    "H~O~H",
                    "M~~~M",
                    "~MHM~")
                .aisle(
                    "~CCC~",
                    "CMMMC",
                    "CMMMC",
                    "CMMMC",
                    "~CCC~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:dimensionalcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("M", <metastate:contenttweaker:quantumcasing>)
                .where("O", <metastate:contenttweaker:coil>)
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    " CCC ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " CCC ")
                .aisle(
                    "CMMMC",
                    "M   M",
                    "M   M",
                    "M   M",
                    "M   M",
                    "M   M",
                    "CMMMC")
                .aisle(
                    "SMMME",
                    "H O H",
                    "H O H",
                    "H O H",
                    "H O H",
                    "H O H",
                    "CMMMC")
                .aisle(
                    "CMMMC",
                    "M   M",
                    "M   M",
                    "M   M",
                    "M   M",
                    "M   M",
                    "CMMMC")
                .aisle(
                    " CCC ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " MHM ",
                    " CCC ")
                .where("C", <metastate:contenttweaker:dimensionalcasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("M", <metastate:contenttweaker:quantumcasing>)
                .where("O", <metastate:contenttweaker:coil>)
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/dimensionalcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;