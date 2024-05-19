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


var loc = "textile_factory";
var meta = 10058;
val textile_factory = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~C~",
                    "~C~",
                    "~C~",
                    "~C~",
                    "~C~")
                .aisle(
                    "CCC",
                    "GMG",
                    "GMG",
                    "GMG",
                    "CCC")
                .aisle(
                    "CCC",
                    "GMG",
                    "GMG",
                    "GMG",
                    "CSC")
                .aisle(
                    "CCC",
                    "GMG",
                    "GMG",
                    "GMG",
                    "CCC")
                .aisle(
                    "~C~",
                    "~C~",
                    "~C~",
                    "~C~",
                    "~C~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_1:3>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("M", <metastate:gregtech:turbine_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("     ","CGGGC","CGGGC","CGGGC","     ")
                .aisle("CCCCC","CMMMC","SGGGE","CMMMC","CCCCC")
                .aisle("     ","CGGGC","CGGGC","CGGGC","     ")
                .where("M", <metastate:gregtech:turbine_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_metal_casing_1:3>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


textile_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:polyurethaneresin>*288)
    .outputs(<contenttweaker:reinfrocedkevlarcloth>)
    .inputs(<contenttweaker:wovenkevlar>,<gregtech:meta_item_2:16301>*4)
    .duration(800)
    .EUt(920000)
    .buildAndRegister();

textile_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:19580>*16)
    .outputs(<contenttweaker:wovenkevlar>)
    .duration(512)
    .EUt(9000)
    .buildAndRegister();

textile_factory.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:cotton_sheet>)
    .outputs(<contenttweaker:cheese_cloth>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

textile_factory.recipeMap.recipeBuilder()
    .outputs(<contenttweaker:cotton_sheet>)
    .inputs(<contenttweaker:cotton>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

textile_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:pre_nylon_mix>*1000)
    .notConsumable(<gregtech:meta_item_1:32301>)
    .outputs(<gregtech:meta_item_1:12630>)
    .duration(700)
    .EUt(180)
    .buildAndRegister();