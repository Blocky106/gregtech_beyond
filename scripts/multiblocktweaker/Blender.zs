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


var loc = "blender";
var meta = 10130;
val blender = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~CCC~","CCCCC","CCCCC","CCCCC","~CSC~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~CCC~","C~~~C","C~O~C","C~~~C","~CCC~")
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
                .where("O", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC "," CCC "," CCC "," CCC "," CCC ")
                .aisle("CCCCC","C   C","C   C","C   C","C   C")
                .aisle("SCCCC","C O C","C O C","C O C","C O C")
                .aisle("CCCCC","C   C","C   C","C   C","C   C")
                .aisle(" CCC "," CCC "," CCC "," CCC "," CCC ")
                .where("O", <metastate:gregtech:boiler_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(4)
                        .maxOutputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

blender.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:chlorine>*2000,<liquid:argon>*1000,<liquid:boron_trichloride>*1000)
    .fluidOutputs(<liquid:bcl3_cl2_ar_etchant>*1000)
    .duration(400)
    .EUt(70)
    .buildAndRegister();