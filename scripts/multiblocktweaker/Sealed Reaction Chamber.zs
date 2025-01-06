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


var loc = "sealed_reaction_chamber";
var meta = 10005;
val sealed_reaction_chamber = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~CCC~~~~",
                    "~~~CCCCC~~~",
                    "~~~CCCCC~~~",
                    "~~~CCCCC~~~",
                    "~~~~CCC~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~~CCC~~~~",
                    "~~CCPPPCC~~",
                    "~~CP~~~PC~~",
                    "~CP~~~~~PC~",
                    "~CP~~~~~PC~",
                    "~CP~~~~~PC~",
                    "~~CP~~~PC~~",
                    "~~CCPPPCC~~",
                    "~~~~CCC~~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~CCC~~~~",
                    "~~CC~~~CC~~",
                    "~C~~~~~~~C~",
                    "~C~~~~~~~C~",
                    "C~~~TTT~~~C",
                    "C~~~TTT~~~C",
                    "C~~~TTT~~~C",
                    "~C~~~~~~~C~",
                    "~C~~~~~~~C~",
                    "~~CC~~~CC~~",
                    "~~~~CCC~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~",
                    "~F~~TTT~~F~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~F~~TST~~F~",
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~",
                    "~F~~TTT~~F~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~F~~TTT~~F~",
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~",
                    "~F~~TTT~~F~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~F~~TTT~~F~",
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~",
                    "~F~~TTT~~F~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~~~T~~~T~~~",
                    "~F~~TTT~~F~",
                    "~~~~~~~~~~~",
                    "~~~F~~~F~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~CCC~~~~",
                    "~~CC~~~CC~~",
                    "~C~~~~~~~C~",
                    "~C~~~~~~~C~",
                    "C~~~TTT~~~C",
                    "C~~~TTT~~~C",
                    "C~~~TTT~~~C",
                    "~C~~~~~~~C~",
                    "~C~~~~~~~C~",
                    "~~CC~~~CC~~",
                    "~~~~CCC~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~~CCC~~~~",
                    "~~CCPPPCC~~",
                    "~~CP~~~PC~~",
                    "~CP~~~~~PC~",
                    "~CP~~~~~PC~",
                    "~CP~~~~~PC~",
                    "~~CP~~~PC~~",
                    "~~CCPPPCC~~",
                    "~~~~CCC~~~~",
                    "~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~CCC~~~~",
                    "~~~CCCCC~~~",
                    "~~~CCCCC~~~",
                    "~~~CCCCC~~~",
                    "~~~~CCC~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~",
                    "~~~~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('T', 36)
                .whereOr("T", 
                <metastate:contenttweaker:perfectlysealedvacuumcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("           ","           ","    CCC    ","           ","           ","           ","           ","    CCC    ","           ","           ")
                .aisle("           ","    CCC    ","  CC   CC  ","   F   F   ","   F   F   ","   F   F   ","   F   F   ","  CC   CC  ","    CCC    ","           ")
                .aisle("           ","  CCPPPCC  "," C       C ","           ","           ","           ","           "," C       C ","  CCPPPCC  ","           ")
                .aisle("    CCC    ","  CP   PC  "," C       C "," F  TTT  F "," F  TTT  F "," F  TTT  F "," F  TTT  F "," C       C ","  CP   PC  ","    CCC    ")
                .aisle("   CCCCC   "," CP     PC ","C   TTT   C","   T   T   ","   T   T   ","   T   T   ","   T   T   ","C   TTT   C"," CP     PC ","   CCCCC   ")
                .aisle("   CCCCC   "," CP     PC ","C   TTT   C","   S   T   ","   T   T   ","   T   T   ","   T   T   ","C   TTT   C"," CP     PC ","   CCCCC   ")
                .aisle("   CCCCC   "," CP     PC ","C   TTT   C","   T   T   ","   T   T   ","   T   T   ","   T   T   ","C   TTT   C"," CP     PC ","   CCCCC   ")
                .aisle("    CCC    ","  CP   PC  "," C       C "," F  TTT  F "," F  TTT  F "," F  TTT  F "," F  TTT  F "," C       C ","  CP   PC  ","    CCC    ")
                .aisle("           ","  CCPPPCC  "," C       C ","           ","           ","           ","           "," C       C ","  CCPPPCC  ","           ")
                .aisle("           ","    CCC    ","  CC   CC  ","   F   F   ","   F   F   ","   F   F   ","   F   F   ","  CC   CC  ","    CCC    ","           ")
                .aisle("           ","           ","    CCC    ","           ","           ","           ","           ","    CCC    ","           ","           ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("T", <metastate:contenttweaker:perfectlysealedvacuumcasing>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/perfectlysealedvacuumcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

sealed_reaction_chamber.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2794>)
    .fluidInputs(<liquid:chlorine>*3000)
    .outputs(<gtadditions:ga_dust:908>)
    .duration(2000)
    .EUt(800)
    .buildAndRegister();

