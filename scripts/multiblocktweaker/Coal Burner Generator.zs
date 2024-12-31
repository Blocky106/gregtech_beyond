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


var loc = "coal_burner_generator";
var meta = 10054;
val coal_burner_generator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCCC",
                    "CCCCCCCC",
                    "CCCCCCCC")
                .aisle(
                    "CCCCCCCC",
                    "C~~~~C~C",
                    "CGGGGCSC")
                .aisle(
                    "CCCCCCCC",
                    "CGGGGCCC",
                    "~~~~~CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <blockstate:contenttweaker:lq_steel_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.OUTPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 48)
                .where("G", <metastate:minecraft:glass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCC","CCC"," CC")
                .aisle("CCC","G C"," GC")
                .aisle("CCC","G C"," GC")
                .aisle("CCC","G C"," GC")
                .aisle("CCC","G C"," GC")
                .aisle("CCC","CCC","CCC")
                .aisle("CCC","S E","CCC")
                .aisle("CCC","CCC","CCC")
                .where("C", <blockstate:contenttweaker:lq_steel_casing>)
                .where("G", <metastate:minecraft:glass>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_OUTPUT_HATCH[1], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/lq_steel_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

coal_burner_generator.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal>*2)
    .fluidInputs(<liquid:water>*100)
    .fluidOutputs(<liquid:sulfur_carbon_mixture>*200,<liquid:steam>*16000)
    .duration(20)
    .buildAndRegister();

coal_burner_generator.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal:1>*2)
    .fluidInputs(<liquid:water>*100)
    .fluidOutputs(<liquid:sulfur_carbon_mixture>*200,<liquid:steam>*16000)
    .duration(40)
    .buildAndRegister();

coal_burner_generator.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2991>)
    .fluidInputs(<liquid:water>*100)
    .fluidOutputs(<liquid:sulfur_carbon_mixture>*200,<liquid:steam>*16000)
    .duration(5)
    .buildAndRegister();