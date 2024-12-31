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


var loc = "vulcanized_press";
var meta = 1006;
val vulcanized_press = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("PCP","CCC","PSP")
                .aisle("VVV","V~V","VVV")
                .aisle("PCP","CCC","PCP")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:boiler_firebox_casing:1>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 3)
                .where("V", <metastate:gregtech:wire_coil>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("PCP","VVV","PCP")
                .aisle("SCC","V V","CLC")
                .aisle("PCP","VVV","PEP")
                .where("C", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("V", <metastate:gregtech:wire_coil>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[1], IFacing.south())
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_firebox_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;





vulcanized_press.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2397>*9,<gregtech:meta_item_1:2065>)
    .fluidOutputs(<liquid:styrene_butadiene_rubber>*1296)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vulcanized_press.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2392>*9,<gregtech:meta_item_1:2065>)
    .fluidOutputs(<liquid:silicon_rubber>*1296)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vulcanized_press.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2153>*9,<gregtech:meta_item_1:2065>)
    .fluidOutputs(<liquid:rubber>*1296)
    .EUt(12)
    .duration(50)
    .buildAndRegister();