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


var loc = "atomic_layer_deposition_system";
var meta = 10132;
val atomic_layer_deposition_system = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "F~F~F~F",
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~~~~~~",
                    "F~F~F~F")
                .aisle(
                    "F~F~F~F",
                    "CCC~CCC",
                    "CCC~CCC",
                    "CCC~CCC",
                    "F~F~F~F")
                .aisle(
                    "CCC~CCC",
                    "M~~~~~M",
                    "M~~~~~M",
                    "M~~~~~M",
                    "CSC~CCC")
                .aisle(
                    "CCC~CCC",
                    "M~~~~~M",
                    "MPPPPPM",
                    "M~~~~~M",
                    "CCC~CCC")
                .aisle(
                    "CCC~CCC",
                    "M~~~~~M",
                    "M~~~~~M",
                    "M~~~~~M",
                    "CCC~CCC")
                .aisle(
                    "~~~~~~~",
                    "CCC~CCC",
                    "CCC~CCC",
                    "CCC~CCC",
                    "~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 40)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_stainless_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("M", <metastate:gregtech:machine_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("F   F","FCCCF","CMMMC","CMMMC","CMMMC"," CCC ")
                .aisle("     "," CCC ","S   E","C P C","C   C"," CCC ")
                .aisle("F   F","FCCCF","C   C","C P C","C   C"," CCC ")
                .aisle("     ","     ","     ","  P  ","     ","     ")
                .aisle("F   F","FCCCF","C   C","C P C","C   C"," CCC ")
                .aisle("     "," CCC ","C   C","C P C","C   C"," CCC ")
                .aisle("F   F","FCCCF","CMMMC","CMMMC","CMMMC"," CCC ")
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_stainless_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("M", <metastate:gregtech:machine_casing:4>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(2)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

atomic_layer_deposition_system.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:118>,<contenttweaker:etched_substrate>)
    .outputs(<contenttweaker:gated_substrate>)
    .duration(200)
    .EUt(1200)
    .buildAndRegister();

atomic_layer_deposition_system.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:graphene_electrode_substrate>,<gtadditions:ga_dust:118>)
    .outputs(<contenttweaker:dielectric_electrode_substrate>)
    .duration(400)
    .EUt(2000)
    .buildAndRegister();

atomic_layer_deposition_system.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:etched_exposed_substrate>,<gtadditions:ga_dust:248>,<gregtech:meta_item_1:2906>)
    .outputs(<contenttweaker:atomic_layered_substrate>)
    .duration(560)
    .EUt(1300)
    .buildAndRegister();