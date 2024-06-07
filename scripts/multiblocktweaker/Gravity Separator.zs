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


var loc = "gravity_separator";
var meta = 10040;
val gravity_separator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~P~P","~~~~","CCCC","CCCC","CCCC","CCCC","CCCC")
                .aisle("~PPP","~P~P","CCCC","C~~C","CDDC","C~~C","CCSC")
                .aisle("~~~~","~~~~","CCCC","CDDC","C~~C","CDDC","CCCC")
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
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("D", <metastate:contenttweaker:gravity_separator_rotor_block>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"CCCCC  ",
"CCCCC  ",
"CCCCC  ")
                .aisle(
"CCCCE P",
"C G CPP",
"CG GC  ")
                .aisle(
"CCCCC  ",
"S G C P",
"CG GC  ")
                .aisle(
"CCCCC P",
"CCCCCPP",
"CCCCC  ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:contenttweaker:gravity_separator_rotor_block>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(3)
                        .maxOutputs(6)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


var dirty_dirt = [<thaumcraft:taint_soil>] as IItemStack[];
var dirty_stone = [<thaumicaugmentation:stone:2>] as IItemStack[];

gravity_separator.recipeMap.recipeBuilder()
    .inputs(dirty_dirt)
    .outputs(<minecraft:dirt>)
    .fluidOutputs(<liquid:oil>*125)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

gravity_separator.recipeMap.recipeBuilder()
    .inputs(dirty_stone)
    .outputs(<minecraft:stone>)
    .fluidOutputs(<liquid:oil>*125)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

gravity_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:draconium_extraction_mixture>*4000)
    .fluidOutputs(<liquid:draconium_extract>*4000)
    .inputs(<gtadditions:ga_dust:32187>)
    .outputs(<gtadditions:ga_dust:32188>)
    .duration(200)
    .EUt(7800)
    .buildAndRegister();

gravity_separator.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2701>*6)
    .outputs(<gtadditions:ga_dust:186>*6)
    .fluidOutputs(<liquid:reethu_sulfate_solution>*1000,<liquid:alkalineearth_sulfate>*16000)
    .duration(100)
    .EUt(600)
    .buildAndRegister();