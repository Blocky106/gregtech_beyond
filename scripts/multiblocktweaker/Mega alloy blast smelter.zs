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
import mods.gregtech.multiblock.IControllerTile;+

var loc = "mega_alloy_blast_smelter";
var meta = 10035;
val mega_alloy_blast_smelter = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~CCCCC~~",
                    "~CCCCCCC~",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "~CCCCCCC~",
                    "~~CCSCC~~")
                .aisle(
                    "~~VVVVV~~",
                    "~VVVVVVV~",
                    "VVVVVVVVV",
                    "VVVVVVVVV",
                    "VVVVVVVVV",
                    "VVVVVVVVV",
                    "VVVVVVVVV",
                    "~VVVVVVV~",
                    "~~VVVVV~~")
                .aisle(
                    "~~CCCCC~~",
                    "~CCCCCCC~",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    "~CCCCCCC~",
                    "~~CCCCC~~")
                .aisle(
                    "~~~CCC~~~",
                    "~~CCCCC~~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~~CCCCC~~",
                    "~~~CCC~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~~GGG~~~",
                    "~~GRRRG~~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~GR~~~RG~",
                    "~~GRRRG~~",
                    "~~~GGG~~~",
                    "~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~",
                    "~~CCCCC~~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~CCCCCCC~",
                    "~~CCCCC~~",
                    "~~~~~~~~~")
                                    .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_1:14>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("V", <metastate:gtadditions:ga_metal_casing_2>)
                .where("R", <metastate:gregtech:wire_coil>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build());
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "  CCCCC  ",
                    "  VVVVV  ",
                    "  CCCCC  ",
                    "   CCC   ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ")
                .aisle(
                    " CCCCCCC ",
                    " VVVVVVV ",
                    " CCCCCCC ",
                    "  CCCCC  ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "  CCCCC  ")
                .aisle(
                    "CCCCCCCCC",
                    "VVVVVVVVV",
                    "CCCCCCCCC",
                    " CCCCCCC ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    " CCCCCCC ")
                .aisle(
                    "CCCCCCCCC",
                    "VVVVVVVVV",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " CCCCCCC ")
                .aisle(
                    "SCCCCCCCE",
                    "VVVVVVVVV",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " CCCCCCC ")
                .aisle(
                    "CCCCCCCCC",
                    "VVVVVVVVV",
                    "CCCCCCCCC",
                    "CCCCCCCCC",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " GR   RG ",
                    " CCCCCCC ")
                .aisle(
                    "CCCCCCCCC",
                    "VVVVVVVVV",
                    "CCCCCCCCC",
                    " CCCCCCC ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    "  GRRRG  ",
                    " CCCCCCC ")
                .aisle(
                    " CCCCCCC ",
                    " VVVVVVV ",
                    " CCCCCCC ",
                    "  CCCCC  ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "   GGG   ",
                    "  CCCCC  ")
                .aisle(
                    "  CCCCC  ",
                    "  VVVVV  ",
                    "  CCCCC  ",
                    "   CCC   ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ",
                    "         ")
                .where("V", <metastate:gtadditions:ga_metal_casing_2>)
                .where("R", <metastate:gregtech:wire_coil>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_metal_casing_1:14>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
    .withRecipeMap(<recipemap:blastalloy>)
    .buildAndRegister();

.withTexture(ICubeRenderer.sided("contenttweaker:blocks/zirconium_carbide"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

