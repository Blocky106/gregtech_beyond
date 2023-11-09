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


var loc = "matter_dissolver";
var meta = 10005;
val matter_dissolver = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~CCC~~",
                    "~~CCC~~",
                    "~~CSC~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~H~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~FFF~~",
                    "~F~~~F~",
                    "F~~~~~F",
                    "F~~H~~F",
                    "F~~~~~F",
                    "~F~~~F~",
                    "~~FFF~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~H~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~FFF~~",
                    "~F~~~F~",
                    "F~~~~~F",
                    "F~~H~~F",
                    "F~~~~~F",
                    "~F~~~F~",
                    "~~FFF~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~H~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~FFF~~",
                    "~F~~~F~",
                    "F~~~~~F",
                    "F~~H~~F",
                    "F~~~~~F",
                    "~F~~~F~",
                    "~~FFF~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~H~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~FFF~~",
                    "~F~~~F~",
                    "F~~~~~F",
                    "F~~H~~F",
                    "F~~~~~F",
                    "~F~~~F~",
                    "~~FFF~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~H~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~CCC~~",
                    "~~CCC~~",
                    "~~CCC~~",
                    "~~~~~~~",
                    "~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:electroniccasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gtadditions:ga_fusion_casing>)
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "       ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "       ")
                .aisle(
                    "       ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    "       ")
                .aisle(
                    "  CCC  ",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "  CCC  ")
                .aisle(
                    "  SCE  ",
                    "   H   ",
                    "F  H  F",
                    "   H   ",
                    "F  H  F",
                    "   H   ",
                    "F  H  F",
                    "   H   ",
                    "F  H  F",
                    "   H   ",
                    "  CCC  ")
                .aisle(
                    "  CCC  ",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "F     F",
                    "       ",
                    "  CCC  ")
                .aisle(
                    "       ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    " F   F ",
                    "       ",
                    "       ")
                .aisle(
                    "       ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "  FFF  ",
                    "       ",
                    "       ")
                .where("F", <metastate:gtadditions:ga_fusion_casing>)
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:electroniccasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/electroniccasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


   
matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<enderio:item_alloy_ingot:6> *64)
    .outputs(<contenttweaker:elementds>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10856>*64)
    .outputs(<contenttweaker:selementts>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10786>*64)
    .outputs(<contenttweaker:elementfm>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<thermalfoundation:material:166>*64)
    .outputs(<contenttweaker:elementlu>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10072>*64)
    .outputs(<contenttweaker:elementti>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10311>*64)
    .outputs(<contenttweaker:elementtr>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10692>*64)
    .outputs(<contenttweaker:selementp>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10074>*64)
    .outputs(<contenttweaker:elementw>) 
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();

matter_dissolver.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10517>*64)
    .outputs(<contenttweaker:elementdr>)
    .duration(800)
    .EUt(512800000)
    .buildAndRegister();