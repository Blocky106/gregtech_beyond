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


var loc = "coker";
var meta = 10031;
val coker = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~CP~PCCCP~PC~",
                    "C~CFCCCCCFC~C",
                    "~CP~PCCCP~PC~",
                    "~~~~~CSC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~CPPP~~~PPPC~",
                    "C~CFC~~~CFC~C",
                    "~CPPP~~~PPPC~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~C~~P~~~P~~C~",
                    "C~CFP~~~PFC~C",
                    "~C~~P~~~P~~C~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~C~~P~~~P~~C~",
                    "C~CFP~~~PFC~C",
                    "~C~~P~~~P~~C~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~C~~P~~~P~~C~",
                    "C~CFP~~~PFC~C",
                    "~C~~P~~~P~~C~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~C~~P~~~P~~C~",
                    "C~CFP~~~PFC~C",
                    "~C~~P~~~P~~C~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~CCC~~~~~",
                    "~C~~PC~CP~~C~",
                    "C~CFP~~~PFC~C",
                    "~C~~PC~CP~~C~",
                    "~~~~~CCC~~~~~")
                .aisle(
                    "~~~~~~F~~~~~~",
                    "~C~~~FCF~~~C~",
                    "C~CFFCCCFFC~C",
                    "~C~~~FCF~~~C~",
                    "~~~~~~F~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~",
                    "~C~~~~~~~~~C~",
                    "C~C~~~~~~~C~C",
                    "~C~~~~~~~~~C~",
                    "~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~",
                    "~C~~~~~~~~~C~",
                    "~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "     ")
                .aisle(
                    " CCC ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    "  C  ")
                .aisle(
                    " PCP ",
                    " PCP ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "     ")
                .aisle(
                    "  F  ",
                    " PFP ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "     ",
                    "     ")
                .aisle(
                    " PCP ",
                    " PCP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    "  F  ",
                    "     ",
                    "     ")
                .aisle(
                    "CCCCC",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "CC CC",
                    " FCF ",
                    "     ",
                    "     ")
                .aisle(
                    "SCCCE",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "FCCCF",
                    "     ",
                    "     ")
                .aisle(
                    "CCCCC",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "CC CC",
                    " FCF ",
                    "     ",
                    "     ")
                .aisle(
                    " PCP ",
                    " PCP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    "  F  ",
                    "     ",
                    "     ")
                .aisle(
                    "  F  ",
                    " PFP ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "  F  ",
                    "     ",
                    "     ")
                .aisle(
                    " PCP ",
                    " PCP ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "     ")
                .aisle(
                    " CCC ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    " C C ",
                    "  C  ")
                .aisle(
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "  C  ",
                    "     ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


coker.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:vacuumflashedtar>*1000)
    .fluidOutputs(<liquid:tar>*600)
    .outputs(<contenttweaker:petreulumcoke>*2)
    .EUt(80)
    .duration(120)
    .buildAndRegister();

coker.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:bitominousresidue>*2)
    .outputs(<gregtech:meta_item_1:2357>)
    .EUt(290)
    .fluidOutputs(<liquid:desaltedoil>*144)
    .duration(320)
    .buildAndRegister();