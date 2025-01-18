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


var loc = "electron_beam_lithographer";
var meta = 10121;
val electron_beam_lithographer = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CSC~")
                .aisle(
                    "~~F~~",
                    "~ZZZ~",
                    "FZPZF",
                    "~ZZZ~",
                    "~~F~~")
                .aisle(
                    "~~F~~",
                    "~~~~~",
                    "F~P~F",
                    "~~~~~",
                    "~~F~~")
                .aisle(
                    "~~F~~",
                    "~~~~~",
                    "F~P~F",
                    "~~~~~",
                    "~~F~~")
                .aisle(
                    "~~F~~",
                    "~~~~~",
                    "F~P~F",
                    "~~~~~",
                    "~~F~~")
                .aisle(
                    "~~F~~",
                    "~~~~~",
                    "F~P~F",
                    "~~~~~",
                    "~~F~~")
                .aisle(
                    "~~F~~",
                    "~ZZZ~",
                    "FZPZF",
                    "~ZZZ~",
                    "~~F~~")
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CCC~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 12)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("Z", <metastate:gregtech:multiblock_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC ","  F  ","  F  ","  F  ","  F  ","  F  ","  F  "," CCC ")
                .aisle("CCCCC"," ZZZ ","     ","     ","     ","     "," ZZZ ","CCCCC")
                .aisle("SCCCC","FZPZF","F P F","F P F","F P F","F P F","FZPZF","CCCCC")
                .aisle("CCCCC"," ZZZ ","     ","     ","     ","     "," ZZZ ","CCCCC")
                .aisle(" CCC ","  F  ","  F  ","  F  ","  F  ","  F  ","  F  "," CCC ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("Z", <metastate:gregtech:multiblock_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
                .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(3)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

electron_beam_lithographer.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:au_ge_ni_alloy_stack>,<contenttweaker:etched_ga_as_wafer>)
    .outputs(<contenttweaker:passivated_epitaxial_ga_as_wafer>)
    .duration(400)
    .EUt(100)
    .buildAndRegister();

electron_beam_lithographer.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:silver_electrode>,<contenttweaker:gold_electrode>,<contenttweaker:coated_ga_as_substrate>)
    .outputs(<contenttweaker:electrode_deposited_ga_as_substrate>)
    .duration(400)
    .EUt(100)
    .buildAndRegister();

electron_beam_lithographer.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:chromium_shadow_mask>)
    .inputs(<contenttweaker:dried_ga_as_substrate>)
    .outputs(<contenttweaker:exposed_ga_as_substrate>)
    .duration(400)
    .EUt(800)
    .buildAndRegister();