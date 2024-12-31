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

var loc = "naquadah_fuel_refinery";
var meta = 10024;
val naquadah_fuel_refinery = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~~~~~~~~~~~",
                    "~~~~~~GGG~~~~~~",
                    "~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~GHG~~~~~~",
                    "~~~~GGCCCGG~~~~",
                    "~~~~~~GSG~~~~~~")
                .aisle(
                    "~~~~GG~~~GG~~~~",
                    "~~~GCCGGGCCG~~~",
                    "~~~~GG~~~GG~~~~")
                .aisle(
                    "~~~G~~~~~~~G~~~",
                    "~~GCGG~~~GGCG~~",
                    "~~~G~~~~~~~G~~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~G~~~~~~~~~~~G~",
                    "GCG~~~~~~~~~GCG",
                    "~G~~~~~~~~~~~G~")
                .aisle(
                    "~H~~~~~~~~~~~H~",
                    "GCG~~~~~~~~~GCG",
                    "~H~~~~~~~~~~~H~")
                .aisle(
                    "~G~~~~~~~~~~~G~",
                    "GCG~~~~~~~~~GCG",
                    "~G~~~~~~~~~~~G~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~G~~~~~~~~~G~~",
                    "~GCG~~~~~~~GCG~",
                    "~~G~~~~~~~~~G~~")
                .aisle(
                    "~~~G~~~~~~~G~~~",
                    "~~GCGG~~~GGCG~~",
                    "~~~G~~~~~~~G~~~")
                .aisle(
                    "~~~~GG~~~GG~~~~",
                    "~~~GCCGGGCCG~~~",
                    "~~~~GG~~~GG~~~~")
                .aisle(
                    "~~~~~~GHG~~~~~~",
                    "~~~~GGCCCGG~~~~",
                    "~~~~~~GHG~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~",
                    "~~~~~~GGG~~~~~~",
                    "~~~~~~~~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("G", 
                <metastate:contenttweaker:naquadahfuelrefinerycasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('G', 110)
                .where("C", <metastate:contenttweaker:fieldrestrictioncoil>)
                .where("H", <metastate:contenttweaker:fieldrestrictionglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "HCH",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~")
                .aisle(
                    "~G~",
                    "SCH",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "HCH",
                    "~G~")
                .aisle(
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "GCG",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "GCG",
                    "HCH",
                    "GCG",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~G~",
                    "~G~",
                    "~G~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~",
                    "~~~")

                .where("H", <metastate:contenttweaker:fieldrestrictionglass>)
                .where("G", <metastate:contenttweaker:naquadahfuelrefinerycasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:fieldrestrictioncoil>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/naquadahfuelrefinerycasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_heavy_enriched_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:heavy_e_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();

naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_light_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:light_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();

naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_heavy_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:heavy_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();

naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_medium_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:medium_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();

naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_medium_enriched_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:medium_e_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();

naquadah_fuel_refinery.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:unpreperated_light_enriched_naquadah_fuel>*1000)
    .fluidOutputs(<liquid:light_e_naquadah_fuel>*1000)
    .duration(400)
    .EUt(2000000)
    .buildAndRegister();