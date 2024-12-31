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


var loc = "tube_furnace";
var meta = 10117;
val tube_furnace = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F")
                .aisle(
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F",
                    "~~~",
                    "~~~",
                    "F~F")
                .aisle(
                    "FHF",
                    "~H~",
                    "~H~",
                    "CCC",
                    "CCC",
                    "CCC",
                    "CCC",
                    "~H~",
                    "~H~",
                    "FHF")
                .aisle("HHH","H~H","H~H","CCC","C~C","C~C","CCC","H~H","H~H","HSH")
                .aisle("~H~","~H~","~H~","CCC","CCC","CCC","CCC","~H~","~H~","~H~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:2>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 36)
                .where("H", <metastate:gregtech:metal_casing:4>)
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("F  F   F  F","F  F   F  F","F  CCCCC  F","HHHCCCCCHHH","   CCCCC   ")
                .aisle("           ","           ","HHHCCCCCHHH","S  C   C  H","HHHCCCCCHHH")
                .aisle("F  F   F  F","F  F   F  F","F  CCCCC  F","HHHCCCCCHHH","   CCCCC   ")
                .where("C", <metastate:gregtech:metal_casing:2>)
                .where("H", <metastate:gregtech:metal_casing:4>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

tube_furnace.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:lafeaso1_pellets>*2)
    .fluidInputs(<liquid:argon>*100)
    .outputs(<gtadditions:ga_dust:32239>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();