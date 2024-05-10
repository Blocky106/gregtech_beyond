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


var loc = "engraving_unit";
var meta = 10057;
val engraving_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~C~",
                    "CCC",
                    "CCC",
                    "~C~",
                    "~C~",
                    "~~~")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "~C~")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC",
                    "H~H",
                    "CPC",
                    "~C~")
                .aisle(
                    "CCC",
                    "C~C",
                    "CSC",
                    "~~~",
                    "~~~",
                    "~~~")
                .aisle(
                    "CCC",
                    "C~C",
                    "CCC",
                    "H~H",
                    "CPC",
                    "~C~")
                .aisle(
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "~C~")
                .aisle(
                    "~C~",
                    "CCC",
                    "CCC",
                    "~C~",
                    "~C~",
                    "~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("H", <metastate:gregtech:boiler_firebox_casing:3>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("   CC "," CCCCC"," CHCCC","   CCC"," CHCCC"," CCCCC","   CC ")
                .aisle(" CCCCC","CCCCCC","CP C C","   S E","CP C C","CCCCCC"," CCCCC")
                .aisle("   CC "," CCCCC"," CHCCC","   CCC"," CHCCC"," CCCCC","   CC ")
                .where("C", <metastate:gtadditions:ga_metal_casing_2:4>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("H", <metastate:gregtech:boiler_firebox_casing:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_robust_tungstensteel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


engraving_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:barium_titanate_substrate_wafer>)
    .notConsumable(<contenttweaker:uhpic_lithography_mask>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .outputs(<contenttweaker:engraved_barium_titanate_substrate_wafer>)
    .duration(200)
    .EUt(9000)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:superconductor_coated_substrate_wafer>)
    .notConsumable(<contenttweaker:uhpic_lithography_mask>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .outputs(<contenttweaker:wired_substrate_wafer>)
    .duration(200)
    .EUt(9000)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:flerovium_layered_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .outputs(<contenttweaker:spinorial_memory_wafer>)
    .duration(900)
    .EUt(8000)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:hasoc_lithography_mask>)
    .inputs(<contenttweaker:doped_oganesson_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .outputs(<contenttweaker:engraved_hasoc_wafer>)
    .duration(900)
    .EUt(8000)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:soc_lithography_mask>)
    .inputs(<contenttweaker:soc_wafer_base>)
    .outputs(<contenttweaker:engraved_soc_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:uhasoc_lithography_mask>)
    .inputs(<contenttweaker:doped_oganesson_wafer>)
    .outputs(<contenttweaker:pre_engraved_uhasoc_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:relayered_uhasoc_wafer>)
    .inputs(<contenttweaker:uhasoc_post_engraving_mask>)
    .outputs(<contenttweaker:fully_connected_uhasoc_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:optical_lithography_mask>)
    .inputs(<contenttweaker:zblan_layered_inp_wafer>)
    .outputs(<contenttweaker:interconnected_inp_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:optical_lithography_mask>)
    .inputs(<contenttweaker:insulated_inp_wafer>)
    .outputs(<contenttweaker:re_exposed_inp_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:recoated_inp_wafer>)
    .outputs(<contenttweaker:contact_ready_inp_wafer>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();

engraving_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:insulated_optical_soc>)
    .outputs(<contenttweaker:contactless_optical_soc>)
    .fluidInputs(<liquid:superfluid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .duration(900)
    .EUt(800)
    .buildAndRegister();