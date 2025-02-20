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


var loc = "fluidizied_bed_reactor";
var meta = 10131;
val fluidizied_bed_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("F~F","~~~","F~F")
                .aisle("CCC","CCC","CSC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","CCC","CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 20)
                .whereOr("C", 
                <metastate:gtadditions:ga_multiblock_casing:1>,
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
                .aisle("F F","CCC","CCC","CCC")
                .aisle("   ","SCE","C C","CCC")
                .aisle("F F","CCC","CCC","CCC")
                .where("F", <metastate:gregtech:frame_steel>)
                .where("C", <metastate:gtadditions:ga_multiblock_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(3)
                        .maxInputs(2)
                        .maxFluidOutputs(3)
                        .maxOutputs(2)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:carbon_dioxide>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .inputs(<gregtech:meta_item_1:2373>*6)
    .outputs(<gregtech:meta_item_1:2403>*6)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:mesityl_oxide>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:methyl_isobutyl_ketone>*1000,<liquid:carbon_monoxide>*1000)
    .notConsumable(<gregtech:meta_item_1:2012>)
    .duration(4000)
    .EUt(380)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:oxalic_acid>*2000,<liquid:oxygen>*2000)
    .inputs(<gregtech:meta_item_1:2765>)
    .outputs(<gtadditions:ga_dust:210>*13)
    .fluidOutputs(<liquid:water>*2000)
    .duration(200)
    .EUt(380)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:methanol>*1000,<liquid:ammonia>*1000)
    .notConsumable(<gregtech:meta_item_1:2044>)
    .fluidOutputs(<liquid:amine_mixture>*1000)
    .duration(150)
    .EUt(20)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2182>)
    .fluidInputs(<liquid:oxygen>*2000)
    .fluidOutputs(<liquid:sulfur_dioxide>*1000)
    .outputs(<gregtech:meta_item_1:2957>*2)
    .duration(150)
    .EUt(20)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*3000)
    .inputs(<gregtech:meta_item_1:2012>,<gregtech:meta_item_1:2121>)
    .outputs(<gregtech:meta_item_1:2122>*3)
    .fluidOutputs(<liquid:carbon_monoxide>*1000,<liquid:iron_chloride>*800)
    .duration(150)
    .EUt(20)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:methanol>*2000,<liquid:naphtalene>*1000)
    .fluidOutputs(<liquid:water>*2000,<liquid:dimethylnaphthalene>*1000)
    .duration(150)
    .EUt(320)
    .buildAndRegister();

fluidizied_bed_reactor.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrochloric_acid>*2000,<liquid:aniline>*1000)
    .inputs(<gtadditions:ga_dust:237>*4,<gtadditions:ga_dust:236>*2)
    .fluidOutputs(<liquid:nitrogen>*2000,<liquid:water>*2000,<liquid:iodobenzene>*1000)
    .outputs(<gregtech:meta_item_1:2155>*4)
    .duration(450)
    .EUt(520)
    .buildAndRegister();