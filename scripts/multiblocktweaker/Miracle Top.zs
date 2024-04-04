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


var loc = "miracle_top";
var meta = 10048;
val miracle_top = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~")
                .aisle(
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~")
                .aisle(
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~")
                .aisle(
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~")
                .aisle(
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQTQG~~~~GQC",
                    "~C~~~~~CCTCC~~~~~C~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~C~~~~~CCTCC~~~~~C~",
                    "CQG~~~~GQTQG~~~~GQC",
                    "~C~~~~~CCTCC~~~~~C~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~C~~~~~CCTCC~~~~~C~",
                    "CQG~~~~GQTQG~~~~GQC",
                    "~C~~~~~CCTCC~~~~~C~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~~~~~~~~GTG~~~~~~~~",
                    "~C~~~~~CCTCC~~~~~C~",
                    "CQG~~~~GQTQG~~~~GQC",
                    "~C~~~~~CCSCC~~~~~C~")
                .aisle(
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~~~~~~~~GGG~~~~~~~~",
                    "~C~~~~~CCCCC~~~~~C~",
                    "CQG~~~~GQQQG~~~~GQC",
                    "~C~~~~~CCCCC~~~~~C~")
                .aisle(
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~CCC~~~~~C~~",
                    "~CQG~~~~GGG~~~~GQC~",
                    "~~C~~~~~CCC~~~~~C~~")
                .aisle(
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~CQG~~~~~~~~~~~GQC~",
                    "~~C~~~~~~~~~~~~~C~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~C~~~~~~~~~~~~~C~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~GG~~~GG~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~CC~~~CC~~~~~~",
                    "~~~~~CQQGGGQQC~~~~~",
                    "~~~~~~CC~~~CC~~~~~~")
                .aisle(
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~CCQQQCC~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~CCC~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~")
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
                .where("Q", <metastate:contenttweaker:coil>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .where("T", <metastate:contenttweaker:quantumcomputercasing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C "," C       C       C       C "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C "," C       C       C       C ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," C       C       C       C "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           "," C       C       C       C ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," G       G       G       G "," G       G       G       G "," G       G       G       G ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           "," G       G       G       G "," G       G       G       G ","                           ","                           ","                           "," G       G       G       G "," G       G       G       G ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C ","                           ","                           ")
                .aisle("                           "," C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ")
                .aisle("                           "," C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ")
                .aisle(" C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","                           ","CGC     CGC     CGC     CGC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CGC     CGC     CGC     CGC","                           ","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ")
                .aisle(" C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","                           ","CGC     CGC     CGC     CGC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","STTTTTTTTTTTTTTTTTTTTTTTTTE","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CGC     CGC     CGC     CGC","                           ","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ")
                .aisle(" C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","                           ","CGC     CGC     CGC     CGC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CQCGGGGGCQCGGGGGCQCGGGGGCQC","CGC     CGC     CGC     CGC","                           ","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ")
                .aisle("                           "," C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","CGC     CGC     CGC     CGC","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ")
                .aisle("                           "," C       C       C       C ","CQC     CQC     CQC     CQC"," G       G       G       G ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," G       G       G       G ","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ")
                .aisle("                           ","                           "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           "," G       G       G       G "," G       G       G       G ","                           ","                           ","                           "," G       G       G       G "," G       G       G       G ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           "," C       C       C       C ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," G       G       G       G "," G       G       G       G "," G       G       G       G ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," C       C       C       C ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C "," C       C       C       C ","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC","CQC     CQC     CQC     CQC"," C       C       C       C "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ")
                .aisle("                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           "," C       C       C       C "," C       C       C       C "," C       C       C       C ","                           ","                           ","                           ","                           ","                           ","                           ","                           ","                           ")

                .where("C", <metastate:contenttweaker:quantumcasing>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("Q", <metastate:contenttweaker:coil>)
                .where("T", <metastate:contenttweaker:quantumcomputercasing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(9)
                        .maxFluidInputs(3)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/quantumcasing"))
.withZoom(0.3f)
.buildAndRegister() as Multiblock;




#Refined
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16189>*32,<gtadditions:ga_meta_item:32031>*4,<gregtech:meta_item_2:32486>*4)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32203>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();

#Micro
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32459>*16,<gregtech:meta_item_2:16237>*8,<gtadditions:ga_meta_item:32032>*4,<gregtech:meta_item_2:32478>*8,<gregtech:meta_item_2:32458>*16,<gregtech:meta_item_2:32460>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32207>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();

#Nano
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32481>*48,<gtadditions:ga_meta_item:32245>*16,<gregtech:meta_item_2:16001>*8,<gtadditions:ga_meta_item:32033>*4,<gtadditions:ga_meta_item:32246>*16,<gtadditions:ga_meta_item:32244>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gregtech:meta_item_2:32492>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Quantum
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32253>*16,<gtadditions:ga_meta_item:32252>*16,<gregtech:meta_item_2:32484>*4,<gtadditions:ga_meta_item:32034>*4,<gregtech:meta_item_2:16051>*16,<gregtech:meta_item_2:32481>*4)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gregtech:meta_item_2:32494>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Crystal
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32585>*4,<gregtech:meta_item_2:32474>*4,<gregtech:meta_item_2:32481>*4,<gtadditions:ga_meta_item:32248>*16,<gtadditions:ga_meta_item:32249>*8,<gregtech:meta_item_2:16135>*8)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32213>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Wetware
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32475>*4,<gtadditions:ga_meta_item:32411>*4,<gregtech:meta_item_2:32484>*4,<gregtech:meta_item_2:16200>*8,<gtadditions:ga_meta_item:32256>*16,<gtadditions:ga_meta_item:32257>*16,<gregtech:meta_item_2:16200>*8)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gregtech:meta_item_2:32498>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Bioware
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32015>*4,<gregtech:meta_item_2:16308>*8,<gregtech:meta_item_2:32484>*8,<gtadditions:ga_meta_item:32406>*8,<gtadditions:ga_meta_item:32420>*8,<gtadditions:ga_meta_item:32405>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32401>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Optical
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32500>*4,<gregtech:meta_item_2:32484>*8,<gtadditions:ga_meta_item:32494>*16,<gregtech:meta_item_2:16852>*8,<gtadditions:ga_meta_item:32499>*8,<gtadditions:ga_meta_item:32497>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32501>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Exotic
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32595>*8,<gregtech:meta_item_2:32484>*8,<gtadditions:ga_meta_item:32600>*4,<gregtech:meta_item_2:16721>*8,<gtadditions:ga_meta_item:32604>*16,<gtadditions:ga_meta_item:32601>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32605>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Cosmic
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32595>*8,<gregtech:meta_item_2:32484>*8,<gtadditions:ga_meta_item:32600>*4,<gregtech:meta_item_2:16721>*8,<gtadditions:ga_meta_item:32604>*16,<gtadditions:ga_meta_item:32601>*16)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32605>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();
#Supra-Casual
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12675>*4,<gtadditions:ga_meta_item:32554>*4,<gtadditions:ga_meta_item:32516>*4,<gtadditions:ga_meta_item:32555>*4,<gregtech:ga_cable:724>*8,<gtadditions:ga_meta_item:32538>*32)
    .fluidInputs(<liquid:soldering_alloy>*288)
    .outputs(<gtadditions:ga_meta_item:32605>*32)
    .duration(400)
    .EUt(800000)
    .buildAndRegister();

#Space Time Circuit
miracle_top.recipeMap.recipeBuilder()
    .inputs(<gregtech:cable:1354>*8,<contenttweaker:spacetime_bending_processing_core>*4,<contenttweaker:spacetimebendingsmdcapacitor>*16,<contenttweaker:xontopic>*16,<contenttweaker:spacetimebendingsmdtransistor>*16,<contenttweaker:cosmic_circuit_board>*4)
    .fluidInputs(<liquid:radoxpolymer>*5000)
    .outputs(<contenttweaker:spacetimebendingprocessor>*4)
    .duration(2400)
    .EUt(800000000)
    .buildAndRegister();

#Nano Circuit
#Pico Circuit
#Quantum Circuit