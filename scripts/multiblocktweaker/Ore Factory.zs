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

var loc = "ore_factory";
var meta = 10101;
val ore_factory = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCCCCC~",
                    "CCCCCCCC",
                    "CCCCCCC~",
                    "CCCCCCCC",
                    "~CSCCCC~")
                .aisle(
                    "CGGGQQQ~",
                    "C~~~Q~QC",
                    "C~~~Q~QC",
                    "C~~~Q~QC",
                    "CGGGQQQ~")
                .aisle(
                    "CGGGQQQC",
                    "C~~~Q~QC",
                    "C~~~Q~Q~",
                    "C~~~Q~QC",
                    "CGGGQQQC")
                .aisle(
                    "CGGGQQQ~",
                    "C~~~Q~QC",
                    "C~~~Q~Q~",
                    "C~~~Q~QC",
                    "CGGGQQQ~")
                .aisle(
                    "~CCCCCC~",
                    "CCCCCCCC",
                    "CCCCCCC~",
                    "CCCCCCCC",
                    "~CCCCCC~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:qmd:containment_glass>)
                .where("Q", <metastate:gtadditions:ga_metal_casing_2:3>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("~CCC~","CCCCC","CCCCC","CCCCC","~CCC~")
                .aisle("CCCCC","G   G","G   G","G   G","CCCCC")
                .aisle("SCCCE","G   G","G   G","G   G","CCCCC")
                .aisle("CCCCC","G   G","G   G","G   G","CCCCC")
                .aisle("CCCCC","QQQQQ","QQQQQ","QQQQQ","CCCCC")
                .aisle("CCCCC","QQQQQ","Q   Q","QQQQQ","CCCCC")
                .aisle("CCCCC","QQQQQ","QQQQQ","QQQQQ","CCCCC")
                .aisle(" C C "," CCC ","CC CC"," CCC "," C C ")

                .where("C", <metastate:gtadditions:ga_metal_casing_2:4>)
                .where("G", <metastate:qmd:containment_glass>)
                .where("Q", <metastate:gtadditions:ga_metal_casing_2:3>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(16)
                        .maxFluidInputs(4)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/perciseelectronicunitcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;








