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
                .aisle("~CCC~","C~~~C","C~O~C","C~~~C","~CCC~")
                .aisle("~CCC~","C~~~C","C~O~C","C~~~C","~CCC~")
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
                .where("O", <metastate:contenttweaker:blade_assembly>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC "," CCC "," CCC "," CCC ")
                .aisle("CCCCC","C   C","C   C","C   C")
                .aisle("SCCCE","C O C","C O C","C O C")
                .aisle("CCCCC","C   C","C   C","C   C")
                .aisle(" CCC "," CCC "," CCC "," CCC ")
                .where("O", <metastate:contenttweaker:blade_assembly>)
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


blender.recipeMap.recipeBuilder()
	.fluidInputs(<liquid:dimethylacetamide>*1000, <liquid:triton_x100>*1000, <liquid:acetic_anhydride>*1000)
	.fluidOutputs(<liquid:pbi_preparation_mixture_precurser>*5000)
	.EUt(5000)
	.duration(880)
	.buildAndRegister();

blender.recipeMap.recipeBuilder()
	.fluidInputs(<liquid:pbi_preparation_mixture_precurser>*1000, <liquid:phosphoric_acid>*1000, <liquid:n-methylpyrrolidone>*1000)
	.fluidOutputs(<liquid:pbi_preparation_mixture>*5000)
	.EUt(5000)
	.duration(880)
	.buildAndRegister();
