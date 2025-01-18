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


var loc = "reactive_ion_etcher";
var meta = 10120;
val reactive_ion_etcher = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~CCC~~",
                    "~CCCCC~",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "~CCCCC~",
                    "~~CSC~~")
                .aisle(
                    "~~CGC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "G~~~~~G",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CGC~~")
                .aisle(
                    "~~CGC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "G~~~~~G",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CGC~~")
                .aisle(
                    "~~PGP~~",
                    "~C~~~C~",
                    "P~~~~~P",
                    "G~~~~~G",
                    "P~~~~~P",
                    "~C~~~C~",
                    "~~PGP~~")
                .aisle(
                    "~~PPP~~",
                    "~PCCCP~",
                    "PCCCCCP",
                    "PCCCCCP",
                    "PCCCCCP",
                    "~PCCCP~",
                    "~~PPP~~")
                .aisle(
                    "~~P~P~~",
                    "~~P~P~~",
                    "PPP~PPP",
                    "~~P~P~~",
                    "PPP~PPP",
                    "~~P~P~~",
                    "~~P~P~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:10>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("  CCC  ","  CGC  ","  CGC  ","  PGP  ","  PPP  ","  P P  ")
                .aisle(" CCCCC "," C   C "," C   C "," C   C "," PCCCP ","  P P  ")
                .aisle("CCCCCCC","C     C","C     C","P     P","PCCCCCP","PPPPPPP")
                .aisle("SCCCCCE","G     G","G     G","G     G","PCCCCCP","       ")
                .aisle("CCCCCCC","C     C","C     C","P     P","PCCCCCP","PPPPPPP")
                .aisle(" CCCCC "," C   C "," C   C "," C   C "," PCCCP ","  P P  ")
                .aisle("  CCC  ","  CGC  ","  CGC  ","  PGP  ","  PPP  ","  P P  ")
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_metal_casing_2:10>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

reactive_ion_etcher.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:bcl3_cl2_ar_etchant>*1000)
    .inputs(<contenttweaker:engraved_ga_as_wafer>)
    .outputs(<contenttweaker:etched_ga_as_wafer>)
    .duration(400)
    .EUt(240)
    .buildAndRegister();

reactive_ion_etcher.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:bcl3_cl2_ar_etchant>*1000)
    .inputs(<contenttweaker:spincoated_ga_as_wafer>)
    .outputs(<contenttweaker:etched_spincoated_ga_as_wafer>)
    .duration(400)
    .EUt(240)
    .buildAndRegister();

