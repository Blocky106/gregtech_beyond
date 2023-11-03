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


var loc = "primordial_forge";
var meta = 10008;
val primordial_forge = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCSCCC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:computercasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gtadditions:ga_fusion_casing:5>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCCCC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G     G",
                    "G     G",
                    "G     G",
                    "G     G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "CCCCCCC")
                .aisle(
                    "SCCCCCE",
                    "G F F G",
                    "G F F G",
                    "G F F G",
                    "G F F G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G     G",
                    "G     G",
                    "G     G",
                    "G     G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CCCCCCC")
                .where("F", <metastate:gtadditions:ga_fusion_casing:5>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:computercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/computercasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;