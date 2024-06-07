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


var loc = "dissolution_tank";
var meta = 10028;
val dissolution_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("F~~~F","~~~~~","~~~~~","~~~~~","F~~~F")
                .aisle("FFFFF","F~~~F","F~~~F","F~~~F","FFFFF")
                .aisle("FCCCF","CCCCC","CCCCC","CCCCC","FCCCF")
                .aisle("CCCCC","C~~~C","C~~~C","C~~~C","CCSCC")
                .aisle("CGGGC","G~~~G","G~~~G","G~~~G","CGGGC")
                .aisle("CGGGC","G~~~G","G~~~G","G~~~G","CGGGC")
                .aisle("CGGGC","G~~~G","G~~~G","G~~~G","CGGGC")
                .aisle("CGGGC","G~~~G","G~~~G","G~~~G","CGGGC")
                .aisle("~CCC~","CCCCC","CCCCC","CCCCC","~CCC~")
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
"F   F",
"FFFFF",
"FCCCF",
"CCCCC",
"CGGGC",
"CGGGC",
"CGGGC",
"CGGGC",
" CCC ")
                .aisle(
"     ",
"F   F",
"CCCCC",
"C   C",
"G   G",
"G   G",
"G   G",
"G   G",
"CCCCC")
                .aisle(
"     ",
"F   F",
"CCCCE",
"S   C",
"G   G",
"G   G",
"G   G",
"G   G",
"CCCCC")
                .aisle(
"     ",
"F   F",
"CCCCC",
"C   C",
"G   G",
"G   G",
"G   G",
"G   G",
"CCCCC")
                .aisle(
"F   F",
"FFFFF",
"FCCCF",
"CCCCC",
"CGGGC",
"CGGGC",
"CGGGC",
"CGGGC",
" CCC ")
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
                        .maxFluidInputs(2)
                        .maxFluidOutputs(1)
                        .maxOutputs(4)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:xenon>*2000)
    .inputs(<gtadditions:ga_meta_item:32316>)
    .outputs(<gregtech:meta_item_1:1814>*2,<gregtech:meta_item_1:2>*2,<gregtech:meta_item_1:2555>)
    .duration(200)
    .EUt(180)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:dissolvingfluid>*1000)
    .inputs(<contenttweaker:purified2thorium>)
    .outputs(<contenttweaker:purified3thorium>)
    .duration(400)
    .EUt(2180)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrocrackedthoriumsolution>*1000)
    .fluidOutputs(<liquid:thoriumleachsolution>*500)
    .outputs(<gregtech:meta_item_1:2065>*3)
    .duration(400)
    .EUt(2180)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:conditionedbastnasitemud>*5000)
    .fluidOutputs(<liquid:dilutedbastnasitemud>*5000)
    .duration(400)
    .EUt(2180)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:muddy_monazite_solution>*1000,<liquid:water>*1000)
    .outputs(<gtadditions:ga_dust:32212>)
    .fluidOutputs(<liquid:monazite_solution>*2000)
    .duration(400)
    .EUt(2180)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:purified_draconium_slurry>*1000)
    .fluidOutputs(<liquid:draconiumsolution>*1000)
    .duration(200)
    .EUt(90000)
    .buildAndRegister();

dissolution_tank.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2373>*3)
    .fluidInputs(<liquid:lanthanum_leach_solution>*2000)
    .outputs(<gregtech:meta_item_1:2063>,<gtadditions:ga_dust:8>*2,<gregtech:meta_item_1:2906>*2,<gtadditions:ga_dust:22>*2)
    .duration(299)
    .EUt(80)
    .buildAndRegister();