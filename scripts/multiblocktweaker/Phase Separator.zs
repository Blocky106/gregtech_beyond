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


var loc = "phase_separator";
var meta = 10044;
val phase_separator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("FCF","~C~","~C~","~C~","FCF")
                .aisle("CCC","C~C","C~C","C~C","CSC")
                .aisle("~C~","~C~","~C~","~C~","~C~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
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
                .aisle(
"F   F",
"CCCCC",
"     ")
                .aisle(
"CCCCC",
"S   E",
"CCCCC")
                .aisle(
"F   F",
"CCCCC",
"     ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

phase_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:partially_liquid_argon>*1000)
    .fluidOutputs(<liquid:liquid_argon>*1000)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

phase_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:partially_liquid_helium>*1000)
    .fluidOutputs(<liquid:liquid_helium>*1000)
    .duration(200)
    .EUt(70)
    .buildAndRegister();
    
phase_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:partially_liquid_neon>*1000)
    .fluidOutputs(<liquid:liquid_neon>*1000)
    .duration(200)
    .EUt(70)
    .buildAndRegister();
    
phase_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:partially_liquid_krypton>*1000)
    .fluidOutputs(<liquid:liquid_krypton>*1000)
    .duration(200)
    .EUt(70)
    .buildAndRegister();
    
phase_separator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:partially_liquid_xenon>*1000)
    .fluidOutputs(<liquid:liquid_xenon>*1000)
    .duration(200)
    .EUt(70)
    .buildAndRegister();