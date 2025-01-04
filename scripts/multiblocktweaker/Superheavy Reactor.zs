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


var loc = "superheavy_reactor";
var meta = 10113;
val superheavy_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCSCC")
                .aisle(
                    "F   F",
                    " XXX ",
                    " XXX ",
                    " XXX ",
                    "F   F")
                .aisle(
                    "F   F",
                    " TTT ",
                    " TRT ",
                    " TTT ",
                    "F   F")
                .aisle(
                    "F   F",
                    " TTT ",
                    " TRT ",
                    " TTT ",
                    "F   F")
                .aisle(
                    "F   F",
                    " XXX ",
                    " XXX ",
                    " XXX ",
                    "F   F")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:contenttweaker:atomic_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("X", <metastate:gregtech:metal_casing:2>)
                .where("R", <metastate:contenttweaker:reactor_core_stabilizer>)
                .where("T", <metastate:gregtech:wire_coil:6>)
                .where("F", <metastate:gregtech:frame_enriched_naquadah_alloy>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCCCC","F   F","F   F","F   F","F   F","CCCCC")
                .aisle("CCCCC"," XXX "," TTT "," TTT "," XXX ","CCCCC")
                .aisle("SCCCE"," XXX "," TRT "," TRT "," XXX ","CCCCC")
                .aisle("CCCCC"," XXX "," TTT "," TTT "," XXX ","CCCCC")
                .aisle("CCCCC","F   F","F   F","F   F","F   F","CCCCC")
                .where("X", <metastate:gregtech:metal_casing:2>)
                .where("R", <metastate:contenttweaker:reactor_core_stabilizer>)
                .where("T", <metastate:gregtech:wire_coil:6>)
                .where("F", <metastate:gregtech:frame_enriched_naquadah_alloy>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:atomic_casing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/atomic_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

superheavy_reactor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2310>)
    .outputs(<gtadditions:ga_dust:32235>*4)
    .fluidInputs(<liquid:xenic_acid>*1000)
    .duration(400)
    .EUt(120000)
    .buildAndRegister();