
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


var loc = "fermentation_vat";
var meta = 10016;
val fermentation_vat = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~",
                    "~F~F~",
                    "~~~~~",
                    "~F~F~",
                    "~~~~~")
                .aisle(
                    "~~P~~",
                    "~WWW~",
                    "PWWWP",
                    "~WWW~",
                    "~~S~~")
                .aisle(
                    "~~P~~",
                    "~GGG~",
                    "PG~GP",
                    "~GGG~",
                    "~~P~~")
                .aisle(
                    "~~P~~",
                    "~GGG~",
                    "PG~GP",
                    "~GGG~",
                    "~~P~~")
                .aisle(
                    "~~P~~",
                    "~GGG~",
                    "PG~GP",
                    "~GGG~",
                    "~~P~~")
                .aisle(
                    "~~P~~",
                    "~WWW~",
                    "PWWWP",
                    "~WWW~",
                    "~~P~~")
                .aisle(
                    "~~~~~",
                    "~~P~~",
                    "~PPP~",
                    "~~P~~",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("P", 
                <metastate:gregtech:boiler_casing:1>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("W", <metastate:gregtech:machine_casing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "     ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "     ")
                .aisle(
                    " F F ",
                    " WWW ",
                    " GGG ",
                    " GGG ",
                    " GGG ",
                    " WWW ",
                    "  P  ")
                .aisle(
                    "     ",
                    "SWWWE",
                    "PG GP",
                    "PG GP",
                    "PG GP",
                    "PWWWP",
                    " PPP ")
                .aisle(
                    " F F ",
                    " WWW ",
                    " GGG ",
                    " GGG ",
                    " GGG ",
                    " WWW ",
                    "  P  ")
                .aisle(
                    "     ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "  P  ",
                    "     ")
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("W", <metastate:gregtech:machine_casing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



fermentation_vat.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:grain_solution>*1000,<liquid:water>*16000)
    .fluidOutputs(<liquid:impure_ethanol>*16000)
    .inputs(<minecraft:sugar>*24)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .EUt(200)
    .duration(5000)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:impure_ethanol>*16000,<liquid:oxygen>*4000)
    .fluidOutputs(<liquid:vinegar>*16000)
    .EUt(20)
    .duration(5000)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:biomass>*16000)
    .fluidOutputs(<liquid:fermented_biomass>*16000)
    .EUt(200)
    .duration(5000)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:wort>*1000)
    .fluidOutputs(<liquid:malt_extract>*1000)
    .duration(8000)
    .EUt(12)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .inputs(<minecraft:pumpkin_seeds>)
    .fluidOutputs(<liquid:pumpkin_oil>*25)
    .duration(8000)
    .EUt(12)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .inputs(<minecraft:melon_seeds>)
    .fluidOutputs(<liquid:melon_oil>*25)
    .duration(8000)
    .EUt(12)
    .buildAndRegister();

fermentation_vat.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:superlubricenttincture>*25,<liquid:water>*1000)
    .fluidOutputs(<liquid:fermented_superlubricenttincture_solution>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

