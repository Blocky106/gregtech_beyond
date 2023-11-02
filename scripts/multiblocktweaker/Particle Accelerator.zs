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


var loc = "particle_accelerator";
var meta = 10023;
val particle_accelerator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~~~~~~~~~~~",
                    "~~~~~~GGG~~~~~~",
                    "~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~GGG~~~~~~",
                    "~~~~GGCCCGG~~~~",
                    "~~~~~~GSG~~~~~~")
                .aisle(
                    "~~~~GG~~~GG~~~~",
                    "~~~GCCGGGCCG~~~",
                    "~~~~GG~~~GG~~~~")
                .aisle(
                    "~~~G~~~~~~~G~~~",
                    "~~GCGG~~~GGCG~~",
                    "~~~G~~~~~~~G~~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~G~~~~~~~~~~~G~",
                    "GCG~~~~~~~~~GCG",
                    "~G~~~~~~~~~~~G~")
                .aisle(
                    "~G~~~~~~~~~~~G~",
                    "GCG~~~~~~~~~GCG",
                    "~G~~~~~~~~~~~G~")
                .aisle(
                    "~G~~~~~~~~~~~G~",
                    "GCG~~~~~~~~~GCG",
                    "~G~~~~~~~~~~~G~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~~G~~~~~~~G~~~",
                    "~~GCGG~~~GGCG~~",
                    "~~~G~~~~~~~G~~~")
                .aisle(
                    "~~~~GG~~~GG~~~~",
                    "~~~GCCGGGCCG~~~",
                    "~~~~GG~~~GG~~~~")
                .aisle(
                    "~~~~~~GGG~~~~~~",
                    "~~~~GGCCCGG~~~~",
                    "~~~~~~GGG~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~",
                    "~~~~~~GGG~~~~~~",
                    "~~~~~~~~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("G", 
                <metastate:contenttweaker:particleprotectioncasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("C", <metastate:gregtech:wire_coil:7>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~")
                .aisle(
                    "~G~",
                    "SCE",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~")
                .aisle(
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .where("G", <metastate:contenttweaker:particleprotectioncasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:wire_coil:7>)
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
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/particleprotectioncasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;