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


var loc = "trickle_bed_reactor";
var meta = 10122;
val trickle_bed_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "F~F",
                    "~~~",
                    "F~F")
                .aisle(
                    "F~F",
                    "~~~",
                    "F~F")
                .aisle(
                    "FCF",
                    "CCC",
                    "FCF")
                .aisle(
                    "CCC",
                    "S~C",
                    "CCC")
                .aisle(
                    "~C~",
                    "CCC",
                    "~C~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 10)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("F F","F F","FCF","CCC"," C ")
                .aisle("   ","   ","CCC","SCC","CCC")
                .aisle("F F","F F","FCF","CCC"," C ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(3)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*6000,<liquid:nitrotoluene>*1000)
    .notConsumable(<liquid:sulfuric_acid>)
    .notConsumable(<gregtech:meta_item_1:2049>)
    .fluidOutputs(<liquid:toluidine>*1000,<liquid:water>*2000)
    .EUt(500)
    .duration(400)
    .buildAndRegister();

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:air>*1000,<liquid:1_butene>*1000)
    .fluidOutputs(<liquid:methyl_isobutyl_carbonyl>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:divinylbenzene>*1000,<liquid:chloromethylstyrene>*1000)
    .fluidOutputs(<liquid:poly_styrene_co_chloromethylstyrene_copolymeris>*1000)
    .EUt(100)
    .duration(100)
    .buildAndRegister();

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:nitric_acid>*2000)
    .inputs(<gregtech:meta_item_1:2835>)
    .outputs(<gtadditions:ga_dust:172>*2)
    .fluidOutputs(<liquid:water>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gtadditions:ga_dust:32261>)
    .notConsumable(<gregtech:meta_item_1:2524>)
    .fluidOutputs(<liquid:borane_mixture>*1000)
    .duration(80)
    .EUt(12)
    .buildAndRegister();

trickle_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:acetic_acid>*1000,<liquid:ethylene>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:vinyl_acetate>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();