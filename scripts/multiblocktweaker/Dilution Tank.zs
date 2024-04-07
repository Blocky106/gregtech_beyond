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


var loc = "dilution_tank";
var meta = 1008;
val dilution_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "F~F",
                    "~~~",
                    "F~F")
                .aisle(
                    "CCC",
                    "CCC",
                    "CSC")
                .aisle(
                    "GGG",
                    "G~G",
                    "GGG")
                .aisle(
                    "GGG",
                    "G~G",
                    "GGG")
                .aisle(
                    "GGG",
                    "G~G",
                    "GGG")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC")
                .aisle(
                    "~C~",
                    "CCC",
                    "~C~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "F F",
                    "CXC",
                    "GGG",
                    "GGG",
                    "GGG",
                    "CCC",
                    " C ")
                .aisle(
                    "   ",
                    "SCE",
                    "G G",
                    "G G",
                    "G G",
                    "CCC",
                    "CCC")
                .aisle(
                    "F F",
                    "CLC",
                    "GGG",
                    "GGG",
                    "GGG",
                    "CCC",
                    " C ")
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
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
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

dilution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*6000)
    .inputs(<gtadditions:ga_dust:32065>)
    .fluidOutputs(<liquid:diluted_monazite_sulfate>*3000)
    .duration(80)
    .EUt(2000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:1008>, [	[<gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32613>], 	[<gregtech:machine:1021>, <gregtech:machine:504>, <gregtech:machine:1021>], 	[<ore:circuitElite>, <ore:circuitMaster>, <ore:circuitElite>]]);

dilution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:neodymium_rich_monazite_solution>*1000,<liquid:water>*3000)
    .fluidOutputs(<liquid:diluted_neodymium_rich_monazite_solution>*4000)
    .duration(80)
    .EUt(2000)
    .buildAndRegister();