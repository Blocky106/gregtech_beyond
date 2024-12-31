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


var loc = "bedrock_pump";
var meta = 10037;
val bedrock_pump = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~~~~~","~F~F~","~~~~~","~F~F~","~~~~~")
                .aisle("~~~~~","~F~F~","~~~~~","~F~F~","~~~~~")
                .aisle("~~~~~","~F~F~","~~~~~","~F~F~","~~~~~")
                .aisle("~~C~~","~HCH~","CCCCC","~HCH~","~~S~~")
                .aisle("~CGC~","C~~~C","G~~~G","C~~~C","~CGC~")
                .aisle("~CGC~","C~~~C","G~~~G","C~~~C","~CGC~")
                .aisle("~CGC~","C~~~C","G~~~G","C~~~C","~CGC~")
                .aisle("~~C~~","~HCH~","CCCCC","~HCH~","~~C~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:7>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 30)
                .where("H", <metastate:gregtech:boiler_firebox_casing:3>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("     ","     ","     ","  C  "," CGC "," CGC "," CGC ","  C  ")
                .aisle(" F F "," F F "," F F "," HCH ","C   C","C   C","C   C"," HCH ")
                .aisle("     ","     ","     ","SCCCE","G   G","G   G","G   G","CCCCC")
                .aisle(" F F "," F F "," F F "," HCH ","C   C","C   C","C   C"," HCH ")
                .aisle("     ","     ","     ","  C  "," CGC "," CGC "," CGC ","  C  ")
                .where("H", <metastate:gregtech:boiler_firebox_casing:3>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:7>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_robust_tungstensteel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

bedrock_pump.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .fluidOutputs(<liquid:bedrock_contaminated_oil>*12)
    .duration(200)
    .EUt(900)
    .buildAndRegister();