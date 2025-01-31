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


var loc = "electrowinning_cell";
var meta = 10129;
val electrowinning_cell = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCCCCCC~",
                    "~CCCCCCCP",
                    "PCCCCCCC~",
                    "~CCCCCCC~")
                .aisle(
                    "~CCCCCCC~",
                    "~C~F~F~CP",
                    "PC~F~F~CP",
                    "~PPSPPPP~")
                .aisle(
                    "~CCCCCCC~",
                    "~C~Z~Z~C~",
                    "~C~Z~Z~C~",
                    "~CCCCCCC~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 20)
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
                .where("Z", <metastate:gregtech:wire_coil>)
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" P  "," P  ","    ")
                .aisle("CCCC","PCCC","CCCC")
                .aisle("CCCC","P  C","C  C")
                .aisle("CCCC","SFFC","CZZC")
                .aisle("CCCC","P  C","C  C")
                .aisle("CCCC","PFFC","CZZC")
                .aisle("CCCC","P  C","C  C")
                .aisle("CCCC","PCCC","CCCC")
                .aisle("  P "," PP ","    ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("Z", <metastate:gregtech:wire_coil>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(2)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

electrowinning_cell.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:cadmium_rich_solution>*1000)
    .notConsumable(<contenttweaker:carbon_electrode>)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gtadditions:ga_dust:32264>)
    .duration(500)
    .EUt(12)
    .buildAndRegister();

