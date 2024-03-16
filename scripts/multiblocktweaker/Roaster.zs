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


var loc = "roaster";
var meta = 1009;
val roaster = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CSC~")
                .aisle(
                    "F~~~F",
                    "~HHH~",
                    "~H~H~",
                    "~HHH~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~HHH~",
                    "~H~H~",
                    "~HHH~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~HHH~",
                    "~H~H~",
                    "~HHH~",
                    "F~~~F")
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CCC~")
                .where("H", <metastate:gregtech:metal_casing:2>)
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
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " HHH ",
                    " HHH ",
                    " HHH ",
                    "CCCCC")
                .aisle(
                    "SCCCE",
                    " HHH ",
                    " HHH ",
                    " HHH ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " HHH ",
                    " HHH ",
                    " HHH ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;




roaster.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:diketene>*1000,<liquid:methane>*2000)  
    .fluidInputs(<liquid:acetone>*2000,<liquid:carbon_sulfide>*500)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32085>)
    .outputs(<contenttweaker:crackingcatalyst>)
    .duration(50)
    .EUt(120)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()  
    .inputs(<ore:dustCalcite>,<ore:crushedBastnasite>)
    .outputs(<gtadditions:ga_dust:32083>)
    .EUt(2000)
    .duration(500)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:wetbastnasiterareearthconcentrate>*1000)
    .fluidOutputs(<liquid:oxygen>*500)
    .outputs(<gtadditions:ga_dust:32084>*2)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32077>*2,<gregtech:meta_item_1:2011>)
    .outputs(<gregtech:meta_item_1:2027>,<gtadditions:ga_dust:32077>,<gregtech:meta_item_1:2155>,<gtadditions:ga_dust:32077>)
    .EUt(2800)
    .duration(400)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:192>*2)
    .fluidOutputs(<liquid:sulfur_trioxide>*1000,<liquid:sulfur_dioxide>*1000)
    .EUt(22)
    .duration(80)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2865>*30,<gregtech:meta_item_1:2604>*9)
    .outputs(<gregicalityoreaddon:gaoe_oredict_item:2012>*42,<gtadditions:ga_dust:356>*6)
    .duration(200)
    .EUt(1000)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:rarer_earth_concentrate>*1000,<liquid:oxygen>*2000)
    .fluidOutputs(<liquid:rarest_earth_mixture>*200,<liquid:neodymium_oxide_solution>*800)
    .duration(600)
    .EUt(420)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:rarest_earth_mixture>*1000)
    .outputs(<gtadditions:ga_dust:18>*2,<gtadditions:ga_dust:11>*3,<gtadditions:ga_dust:16>)
    .fluidOutputs(<liquid:steam>*2000)
    .duration(2000)
    .EUt(12)
    .buildAndRegister();

roaster.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*1000)
    .fluidOutputs(<liquid:hydrochloric_acid>*1000)
    .inputs(<gregtech:meta_item_1:2155>*2)
    .outputs(<gregtech:meta_item_1:2382>*7)
    .duration(20)
    .EUt(12)
    .buildAndRegister();