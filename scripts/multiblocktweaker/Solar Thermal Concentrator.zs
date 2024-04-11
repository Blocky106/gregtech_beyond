
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


var loc = "solar_thermal_concentrator";
var meta = 10055;
val solar_thermal_concentrator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "FFFFF",
                    "FCCCF",
                    "FCCCF",
                    "FFSFF")
                .aisle(
                    "CBPBC",
                    "CBPBC",
                    "CBPBC",
                    "CBPBC")
                .aisle(
                    "Z~~~Z",
                    "~~~~~",
                    "~~~~~",
                    "Z~~~Z")
                .aisle(
                    "Z~~~Z",
                    "~~~~~",
                    "~~~~~",
                    "Z~~~Z")
                .aisle(
                    "GGGGG",
                    "GGGGG",
                    "GGGGG",
                    "GGGGG")
                .aisle(
                    "~GGG~",
                    "~GGG~",
                    "~GGG~",
                    "~GGG~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("B", <metastate:gregtech:boiler_casing>)
                .where("G", <metastate:minecraft:glass>)
                .where("F", <metastate:gregtech:boiler_firebox_casing>)
                .where("Z", <metastate:gregtech:frame_bronze>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("FFFF","CCCC","Z  Z","Z  Z","GGGG","    ")
                .aisle("FCCF","BBBB","    ","    ","GGGG","GGGG")
                .aisle("SCCF","PPPP","    ","    ","GGGG","GGGG")
                .aisle("FCCF","BBBB","    ","    ","GGGG","GGGG")
                .aisle("FFFF","CCCC","Z  Z","Z  Z","GGGG","    ")
                .where("B", <metastate:gregtech:boiler_casing>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("C", <metastate:gregtech:metal_casing>)
                .where("G", <metastate:minecraft:glass>)
                .where("F", <metastate:gregtech:boiler_firebox_casing>)
                .where("Z", <metastate:gregtech:frame_bronze>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_bronze_plated_bricks"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;
solar_thermal_concentrator.noEnergy = true;

solar_thermal_concentrator.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .fluidInputs(<liquid:water>*2)
    .fluidOutputs(<liquid:steam>*640)
    .duration(20)
    .buildAndRegister();

solar_thermal_concentrator.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:water>*10)
    .fluidOutputs(<liquid:steam>*5000)
    .duration(40)
    .buildAndRegister();
