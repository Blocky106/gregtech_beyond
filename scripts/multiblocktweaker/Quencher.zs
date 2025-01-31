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
import mods.gregtech.recipe.functions.IUpdateFunction;
import mods.gregtech.recipe.IRecipeLogic;


var loc = "quencher";
var meta = 10128;
val quencher = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~~ZZ",
                    "CCCCC~ZZ",
                    "CCCCC~~~",
                    "CCCCC~ZZ",
                    "~CCC~~ZZ")
                .aisle(
                    "~CCC~~PP",
                    "C~~~C~PP",
                    "C~~~C~~~",
                    "C~~~C~PP",
                    "~CSC~~PP")
                .aisle(
                    "~CCC~~PP",
                    "C~~~C~PP",
                    "C~~~C~~~",
                    "C~~~C~PP",
                    "~CCC~~PP")
                .aisle(
                    "~CCCPPPP",
                    "C~~~C~PP",
                    "C~~~C~~~",
                    "C~~~C~PP",
                    "~CCCPPPP")
                .aisle(
                    "~~C~~~HH",
                    "~C~C~~HH",
                    "C~~~C~~~",
                    "~C~C~~HH",
                    "~~C~~~HH")
                .aisle(
                    "~~~~~~~~",
                    "~~C~~~~~",
                    "~CCC~~~~",
                    "~~C~~~~~",
                    "~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 50)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:3>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("Z", <metastate:gregtech:metal_casing:4>)
                .where("H", <metastate:gregtech:boiler_firebox_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC "," CCC "," CCC "," CCC ","  C  ","     ")
                .aisle("CCCCC","C   C","C   C","C   C"," C C ","  C  ")
                .aisle("CCCCC","S   E","C   C","C   C","C   C"," CCC ")
                .aisle("CCCCC","C   C","C   C","C   C"," C C ","  C  ")
                .aisle(" CCC "," CCC "," CCC ","PCCCP","  C  ","     ")
                .aisle("     ","     ","     ","P   P","     ","     ")
                .aisle("ZZ ZZ","PP PP","PP PP","PP PP","HH HH","     ")
                .aisle("ZZ ZZ","PP PP","PP PP","PP PP","HH HH","     ")
                .where("C", <metastate:gregtech:metal_casing:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("Z", <metastate:gregtech:metal_casing:4>)
                .where("H", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
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

quencher.recipeMap.copyAll(RecipeMap.getByName("vacuum_freezer"));