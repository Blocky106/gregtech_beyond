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


var loc = "pvd_unit";
var meta = 10036;
val pvd_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "SCCCC")
                .aisle(
                    "PPPPP",
                    "P~~~P",
                    "~GGG~")
                .aisle(
                    "~CCC~",
                    "~GGG~",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:8>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "SCE",
                    " PP",
                    "   ")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    " PP",
                    "   ")
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("C", <metastate:gtadditions:ga_metal_casing_2:8>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/hss_g"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

pvd_unit.recipeMap.recipeBuilder()
    .inputs(<gregtech:cable:968>*2,<gregtech:meta_item_1:19001>,<gregtech:meta_item_1:12157>,<gregtech:meta_item_1:19840>)
    .fluidInputs(<liquid:methane>*1000)
    .outputs(<contenttweaker:sputtered_sapphire_substrate>)
    .duration(200)
    .EUt(2000)
    .buildAndRegister();





