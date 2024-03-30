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
import mods.gregtech.recipe.functions.IUpdateFunction;
import mods.gregtech.recipe.IRecipeLogic;

var loc = "mega_chemical_reactor";
var meta = 10049;
val mega_chemical_reactor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "G~H~G",
                    "G~H~G",
                    "G~H~G",
                    "G~H~G",
                    "G~H~G",
                    "G~H~G",
                    "G~H~G",
                    "CCSCC")
                .aisle(
                    "CCCCC",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "G~~~G",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_multiblock_casing:1>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("H", <metastate:gregtech:wire_coil:8>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCCCCCCCC","CGGGGGGGC","CGGGGGGGC","CGGGGGGGC","CCCCCCCCC")
                .aisle("CCCCCCCCC","C       C","C       C","C       C","CCCCCCCCC")
                .aisle("CCCCCCCCC","C       C","SHHHHHHHC","C       C","CCCCCCCCC")
                .aisle("CCCCCCCCC","C       C","C       C","C       C","CCCCCCCCC")
                .aisle("CCCCCCCCC","CGGGGGGGC","CGGGGGGGC","CGGGGGGGC","CCCCCCCCC")
                .where("H", <metastate:gregtech:wire_coil:8>)
                .where("C", <metastate:gtadditions:ga_multiblock_casing:1>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(6)
                        .maxOutputs(3)
                        .maxFluidOutputs(4)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/thaumic_casing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

mega_chemical_reactor.recipeMap.copyAll(RecipeMap.getByName("large_chemical_reactor"));

mega_chemical_reactor.update = function(recipeLogic as IRecipeLogic) {
    var oldProgress = recipeLogic.recipeProgress;
    recipeLogic.recipeProgress = oldProgress + 1;
} as IUpdateFunction;


