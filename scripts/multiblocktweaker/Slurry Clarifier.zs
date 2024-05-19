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


var loc = "slurry_clarifier";
var meta = 10034;
val slurry_clarifier = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~~~~~","~CCC~","~CCC~","~CCC~","~~~~~")
                .aisle("~CCC~","C~~~C","C~~~C","C~~~C","~CSC~")
                .aisle("~CCC~","C~~~C","C~~~C","C~~~C","~CCC~")
                .aisle("~CCC~","CGGGC","CGGGC","CGGGC","~CCC~")
                .aisle("~CCC~","C~~~C","C~~~C","C~~~C","~CCC~")
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
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"     ",
" CCC ",
" CCC ",
" CCC ",
" CCC ")
                .aisle(
" CCC ",
"C   C",
"C   C",
"CGGGC",
"C   C")
                .aisle(
" CCC ",
"S   E",
"C   C",
"CGGGC",
"C   C")
                .aisle(
" CCC ",
"C   C",
"C   C",
"CGGGC",
"C   C")
                .aisle(
"     ",
" CCC ",
" CCC ",
" CCC ",
" CCC ")
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(2)
                        .maxOutputs(6)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:wolframiteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2074>*2,<nuclearcraft:dust:15>*8,<gregtech:meta_item_1:2033>)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cinnabarslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .chancedOutput(<gregtech:meta_item_1:2016>, 2000, 100)
    .outputs(<gregtech:meta_item_1:2065>*2,<minecraft:redstone>*4)
    .fluidOutputs(<liquid:wastewater>*200,<liquid:mercury>*576)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sphaleriteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .chancedOutput(<gregtech:meta_item_1:2244>, 2000, 100)
    .outputs(<gregtech:meta_item_1:2025>*3,<gregtech:meta_item_1:2182>,<gregtech:meta_item_1:2079>*2,<gregtech:meta_item_1:2013>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:aikiniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2601>*3,<gregtech:meta_item_1:2114>,<gregtech:meta_item_1:2100>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:chalcopyriteslurry>*2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2827>*3,<gregtech:meta_item_1:2017>*2,<gregtech:meta_item_1:2148>*2,<gregtech:meta_item_1:2100>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:borniteslurry>*2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2827>*2,<gregtech:meta_item_1:2148>,<gregtech:meta_item_1:2017>*2,<gregtech:meta_item_1:2360>)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:molybdeniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2041>*2,<gregtech:meta_item_1:2132>*4,<gtadditions:ga_dust:192>)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:pyriteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2065>*2,<gregtech:meta_item_1:2148>,<gregtech:meta_item_1:2239>*3,<gtadditions:ga_dust:192>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:enargiteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2148>*2,<gregtech:meta_item_1:2079>,<gregtech:meta_item_1:2362>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:stibniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2003>*2,<gregtech:meta_item_1:2185>,<gregtech:meta_item_1:2065>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:carroliteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2271>*2,<gregtech:meta_item_1:2079>*2,<gregtech:meta_item_1:2614>*3,<gregtech:meta_item_1:2018>)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:arsenopyriteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2107>*2,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2668>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cobaltiteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2017>*2,<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2107>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:rheniiteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2108>*5,<gregtech:meta_item_1:2132>,<gregtech:meta_item_1:2611>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sheldoniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2894>,<gregtech:meta_item_1:2877>*2,<gregtech:meta_item_1:2044>,<gregtech:meta_item_1:2108>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sylvaniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .chancedOutput(<gregtech:meta_item_1:2067>, 2000, 0)
    .outputs(<gregtech:meta_item_1:2609>*2,<gregtech:meta_item_1:2062>,<gregtech:meta_item_1:2827>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:galliteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:2065>*2,<gregtech:meta_item_1:2667>,<gregtech:meta_item_1:2025>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:bowieiteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2900>*2,<gregtech:meta_item_1:2666>*3,<gregtech:meta_item_1:2868>,<gregtech:meta_item_1:2044>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:stanniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2182>*5,<gregtech:meta_item_1:2188>*3,<gregtech:meta_item_1:2071>,<gregtech:meta_item_1:2608>*2)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:tennaniteslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:2363>*4,<gregtech:meta_item_1:2003>*2,<gregtech:meta_item_1:2033>*3)
    .fluidOutputs(<liquid:wastewater>*200)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:bedrock_slurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:purified_bedrock_slurry>*900,<liquid:wastewater>*100)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:draconiumslurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:purified_draconium_slurry>*900,<liquid:wastewater>*100)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:andesite_leach_slurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gtadditions:ga_dust:105>*4,<gtadditions:ga_dust:28>*4)
    .fluidOutputs(<liquid:wastewater>*100)
    .duration(800)
    .EUt(240)
    .buildAndRegister();

slurry_clarifier.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:monazite_ore_byproduct_slurry>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:wastewater>*100)
    .outputs(<gtadditions:ga_dust:32070>*2,<gtadditions:ga_dust:32066>*2,<gregtech:meta_item_1:2743>*2)
    .chancedOutput(<gtadditions:ga_dust:32065>*2, 5000, 0)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();


