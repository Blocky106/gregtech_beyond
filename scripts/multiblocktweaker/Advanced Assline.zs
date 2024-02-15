import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import crafttweaker.world.IFacing;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.InputIngredient;
import mods.gregtech.recipe.RecipeMap;

function makeIIngredient (ii as InputIngredient) as IIngredient {
    var ret as IIngredient = null;
    for stack in ii.matchingItems {
        if (isNull(ret)) { ret = stack; }
        else { ret |= stack; }
    }
  return ret.only(function(stack) { return ii.matches(stack); }) * ii.amount;
}

function multiplyFluids (inputsFluids as [ILiquidStack]) as ILiquidStack[] {
    var retFluids = [] as ILiquidStack[];
    for input in inputsFluids {
        retFluids += input * 4;
    }
return retFluids;
}

function multiplyIIng (inputsItems as [IIngredient]) as IIngredient[] {
    var retItems = [] as IIngredient[];
    for input in inputsItems {
        retItems += input * 4;
    }
return retItems;
}

function multiplyIItem (inputsItems as [IItemStack]) as IItemStack[] {
    var retItems = [] as IItemStack[];
    for input in inputsItems {
        retItems += input * 4;
    }
return retItems;
}

function inIng_to_IIng (inputs as [InputIngredient]) as IIngredient[] {
    var retItems = [] as IIngredient[];
    for input in inputs {
        retItems += makeIIngredient(input);
    }
return retItems;
}

var loc = "advanced_assembly_line";
var meta = 10056; 

val aal as RecipeMap = 
    FactoryRecipeMap.start(loc)
		    .maxInputs(16)
		    .maxOutputs(1)
		    .maxFluidInputs(4)
		    .build();

for recipe in RecipeMap.getByName("assembly_line").recipes {
    
    aal.recipeBuilder()
        .inputs(multiplyIIng(inIng_to_IIng(recipe.inputs)))
        .fluidInputs(multiplyFluids(recipe.fluidInputs))
        .outputs(multiplyIItem(recipe.outputs))
        .fluidOutputs(multiplyFluids(recipe.fluidOutputs))
//.property("qubit", recipe.getProperty("qubit") as Integer as int)
        .duration(recipe.duration)
        .EUt(recipe.EUt)
        .buildAndRegister();
}

var advanced_assembly_line = Builder.start(loc, meta)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle("CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CCC","CSC")
            .aisle("GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG","GAG")
            .aisle("LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML","LML")
            .aisle("~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~","~C~")
            .whereOr("C",
                <metastate:gregtech:metal_casing:4>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.INPUT_ENERGY,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.EXPORT_ITEMS,
                    MultiblockAbility.EXPORT_FLUIDS
                    ))
            .whereOr("G",
                <metastate:gtadditions:ga_transparent_casing>,
                <metastate:gtadditions:ga_transparent_casing:1>,
                <metastate:gtadditions:ga_transparent_casing:2>,
                <metastate:gtadditions:ga_transparent_casing:3>,
                <metastate:gtadditions:ga_transparent_casing:4>,
                <metastate:gtadditions:ga_transparent_casing:5>,
                <metastate:gtadditions:ga_transparent_casing:6>)
            .where("L", <metastate:gregtech:multiblock_casing:1>)
            .where("A", <metastate:gtadditions:ga_multiblock_casing>)
            .where("M", <metastate:gregtech:multiblock_casing:2>)
            .where("S", IBlockMatcher.controller(loc))
            .where(" ", IBlockMatcher.ANY)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle("CCCCCCCCCCCCCCCC","GGGGGGGGGGGGGGGG","LLLLLLLLLLLLLLLL","                ")
            .aisle("ECCCCCCCCCCCCCCC","AAAAAAAAAAAAAAAA","SMMMMMMMMMMMMMMM","CCCCCCCCCCCCCCCC")
            .aisle("CCCCCCCCCCCCCCCC","GGGGGGGGGGGGGGGG","LLLLLLLLLLLLLLLL","                ")
            .where("G", <metastate:gtadditions:ga_transparent_casing:3>)
            .where("C", <metastate:gregtech:metal_casing:4>)
            .where("L", <metastate:gregtech:multiblock_casing:1>)
            .where("A", <metastate:gtadditions:ga_multiblock_casing>)
            .where("M", <metastate:gregtech:multiblock_casing:2>)
            .where("S", IBlockInfo.controller(loc))
            .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[6], IFacing.north())
            .where(" ", IBlockInfo.EMPTY)
            .build())
    .withRecipeMap(aal)
    .buildAndRegister();