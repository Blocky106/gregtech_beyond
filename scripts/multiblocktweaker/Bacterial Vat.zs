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


var loc = "bacterial_vat";
var meta = 10009;
val bacterial_vat = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCCCC","CCCCC","CCCCC","CCCCC","CCSCC")
                .aisle("GGGGG","G~~~G","G~~~G","G~~~G","GGGGG")
                .aisle("GGGGG","G~~~G","G~~~G","G~~~G","GGGGG")
                .aisle("CCCCC","CCCCC","CCCCC","CCCCC","CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:contenttweaker:soulariumreinforcedglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCCCC","GGGGG","GGGGG","CCCCC")
                .aisle("CCCCC","G   G","G   G","CCCCC")
                .aisle("SCCCE","G   G","G   G","CCCCC")
                .aisle("CCCCC","G   G","G   G","CCCCC")
                .aisle("CCCCC","GGGGG","GGGGG","CCCCC")
                .where("G", <metastate:contenttweaker:soulariumreinforcedglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(3)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



bacterial_vat.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:xenoxene>*25000)
    .inputs(<gregtech:meta_item_1:2047>*16,<gregtech:meta_item_1:2032>*16)
    .fluidInputs(<liquid:oil_heavy>*4000)
    .EUt(8000)
    .duration(900)
    .buildAndRegister();

bacterial_vat.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:xenoxene>*250)
    .notConsumable(<contenttweaker:radox_catalyst>)
    .inputs(<gregtech:meta_item_1:2047>*16,<gregtech:meta_item_1:2032>*16)
    .fluidInputs(<liquid:oil_heavy>*4000)
    .EUt(8000)
    .duration(900)
    .buildAndRegister();