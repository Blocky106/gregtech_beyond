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


var loc = "manufactory";
var meta = 10059;
val manufactory = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCFCFCC",
                    "CPPPPPC",
                    "CCFSFCC")
                .aisle(
                    "CGGGGGC",
                    "C~~~~~C",
                    "CGGGGGC")
                .aisle(
                    "CCCCCCC",
                    "CPPPPPC",
                    "CCCCCCC")
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
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:boiler_firebox_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCC","CCC","CCC")
                .aisle("CPC","G~G","CPC")
                .aisle("FPF","G~G","CPC")
                .aisle("SPE","G~G","CPC")
                .aisle("FPF","G~G","CPC")
                .aisle("CPC","G~G","CPC")
                .aisle("CCC","CCC","CCC")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(1)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


manufactory.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:etched_sapphire_substrate>,<gregtech:meta_item_1:14135>,<gregtech:meta_item_1:12001>)
    .outputs(<contenttweaker:manufactured_superconductor_circuit>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();
