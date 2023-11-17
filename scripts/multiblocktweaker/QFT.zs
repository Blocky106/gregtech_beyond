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


var loc = "intelligent_multi_tank";
var meta = 10036;
val intelligent_multi_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~CCCCC~~~~~",
                    "~~~CCCCCCCCC~~~",
                    "~~CCCCCCCCCCC~~",
                    "~CCCCCCCCCCCCC~",
                    "~CCCCCCCCCCCCC~",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "~CCCCCCCCCCCCC~",
                    "~CCCCCCCCCCCCC~",
                    "~~CCCCCCCCCCC~~",
                    "~~~CCCCCCCCC~~~",
                    "~~~~~CCCCC~~~~~")
                .aisle(
                    "~~~~~~~A~~~~~~~",
                    "~~~~~~AAA~~~~~~",
                    "~~~A~~~A~~~A~~~",
                    "~~AAA~~~~~AAA~~",
                    "~~~A~~~~~~~A~~~",
                    "~~~~~~~A~~~~~~~",
                    "~A~~~~AAA~~~~A~",
                    "AAA~~AAAAA~~AAA",
                    "~A~~~~AAA~~~~A~",
                    "~~~~~~~S~~~~~~~",
                    "~~~A~~~~~~~A~~~",
                    "~~AAA~~~~~AAA~~",
                    "~~~A~~~A~~~A~~~",
                    "~~~~~~AAA~~~~~~",
                    "~~~~~~~A~~~~~~~")
                .aisle(
                    "~~~~~~~G~~~~~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~G~~~G~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~~~~~G~~~",
                    "~~~~~~~~~~~~~~~",
                    "~G~~~~GGG~~~~G~",
                    "GLG~~~GLG~~~GLG",
                    "~G~~~~GGG~~~~G~",
                    "~~~~~~~~~~~~~~~",
                    "~~~G~~~~~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~G~~~G~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~~~~~G~~~~~~~")
                .aisle(
                    "~~~~~~~G~~~~~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~G~~~G~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~~~~~G~~~",
                    "~~~~~~~~~~~~~~~",
                    "~G~~~~GGG~~~~G~",
                    "GLG~~~GLG~~~GLG",
                    "~G~~~~GGG~~~~G~",
                    "~~~~~~~~~~~~~~~",
                    "~~~G~~~~~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~G~~~G~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~~~~~G~~~~~~~")
                .aisle(
                    "~~~~~~~G~~~~~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~G~~~G~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~~~~~G~~~",
                    "~~~~~~~~~~~~~~~",
                    "~G~~~~GGG~~~~G~",
                    "GLG~~~GLG~~~GLG",
                    "~G~~~~GGG~~~~G~",
                    "~~~~~~~~~~~~~~~",
                    "~~~G~~~~~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~G~~~G~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~~~~~G~~~~~~~")
                .aisle(
                    "~~~~~~~G~~~~~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~G~~~G~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~~~~~G~~~",
                    "~~~~~~~~~~~~~~~",
                    "~G~~~~GGG~~~~G~",
                    "GLG~~~GLG~~~GLG",
                    "~G~~~~GGG~~~~G~",
                    "~~~~~~~~~~~~~~~",
                    "~~~G~~~~~~~G~~~",
                    "~~GLG~~~~~GLG~~",
                    "~~~G~~~G~~~G~~~",
                    "~~~~~~GLG~~~~~~",
                    "~~~~~~~G~~~~~~~")
                .aisle(
                    "~~~~~~~A~~~~~~~",
                    "~~~~~~AAA~~~~~~",
                    "~~~A~~~A~~~A~~~",
                    "~~AAA~~~~~AAA~~",
                    "~~~A~~~~~~~A~~~",
                    "~~~~~~~A~~~~~~~",
                    "~A~~~~AAA~~~~A~",
                    "AAA~~AAAAA~~AAA",
                    "~A~~~~AAA~~~~A~",
                    "~~~~~~~A~~~~~~~",
                    "~~~A~~~~~~~A~~~",
                    "~~AAA~~~~~AAA~~",
                    "~~~A~~~A~~~A~~~",
                    "~~~~~~AAA~~~~~~",
                    "~~~~~~~A~~~~~~~")
                .aisle(
                    "~~~~~CCCCC~~~~~",
                    "~~~CCCCCCCCC~~~",
                    "~~CCCCCCCCCCC~~",
                    "~CCCCCCCCCCCCC~",
                    "~CCCCCCCCCCCCC~",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "CCCCCCCCCCCCCCC",
                    "~CCCCCCCCCCCCC~",
                    "~CCCCCCCCCCCCC~",
                    "~~CCCCCCCCCCC~~",
                    "~~~CCCCCCCCC~~~",
                    "~~~~~CCCCC~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("A", 
                <metastate:contenttweaker:advcomputercasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("L", <metastate:contenttweaker:lasercasing>)
                .where("C", <metastate:contenttweaker:computercasing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:5>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "     CCCCC     ",
                    "       A       ",
                    "       G       ",
                    "       G       ",
                    "       G       ",
                    "       G       ",
                    "       A       ",
                    "     CCCCC     ")
                .aisle(
                    "   CCCCCCCCC   ",
                    "   A  AAA  A   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   A  AAA  A   ",
                    "   CCCCCCCCC   ")
                .aisle(
                    "  CCCCCCCCCCC  ",
                    "  AAA  A  AAA  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  AAA  A  AAA  ",
                    "  CCCCCCCCCCC  ")
                .aisle(
                    " CCCCCCCCCCCCC ",
                    "   A       A   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   A       A   ",
                    " CCCCCCCCCCCCC ")
                .aisle(
                    "CCCCCCCCCCCCCCC",
                    "      AAA      ",
                    "               ",
                    "               ",
                    "               ",
                    "               ",
                    "      AAA      ",
                    " CCCCCCCCCCCCC ")
                .aisle(
                    "CCCCCCCCCCCCCCC",
                    " A   AAAAA   A ",
                    " G           G ",
                    " G           G ",
                    " G           G ",
                    " G           G ",
                    " A   AAAAA   A ",
                    "CCCCCCCCCCCCCCC")
                .aisle(
                    "CCCCCCCCCCCCCCC",
                    "AAA  SAAAE  AAA",
                    "GLG    L    GLG",
                    "GLG    L    GLG",
                    "GLG    L    GLG",
                    "GLG    L    GLG",
                    "AAA  AAAAA  AAA",
                    "CCCCCCCCCCCCCCC")
                .aisle(
                    "CCCCCCCCCCCCCCC",
                    " A   AAAAA   A ",
                    " G           G ",
                    " G           G ",
                    " G           G ",
                    " G           G ",
                    " A   AAAAA   A ",
                    "CCCCCCCCCCCCCCC")
                .aisle(
                    "CCCCCCCCCCCCCCC",
                    "      AAA      ",
                    "               ",
                    "               ",
                    "               ",
                    "               ",
                    "      AAA      ",
                    " CCCCCCCCCCCCC ")
                .aisle(
                    " CCCCCCCCCCCCC ",
                    "   A       A   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   G       G   ",
                    "   A       A   ",
                    " CCCCCCCCCCCCC ")
                .aisle(
                    "  CCCCCCCCCCC  ",
                    "  AAA  A  AAA  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  GLG  G  GLG  ",
                    "  AAA  A  AAA  ",
                    "  CCCCCCCCCCC  ")
                .aisle(
                    "   CCCCCCCCC   ",
                    "   A  AAA  A   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   G  GLG  G   ",
                    "   A  AAA  A   ",
                    "   CCCCCCCCC   ")
                .aisle(
                    "     CCCCC     ",
                    "       A       ",
                    "       G       ",
                    "       G       ",
                    "       G       ",
                    "       G       ",
                    "       A       ",
                    "     CCCCC     ")
                .where("L", <metastate:contenttweaker:lasercasing>)
                .where("C", <metastate:contenttweaker:computercasing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("A", <metastate:contenttweaker:advcomputercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/advcomputercasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;