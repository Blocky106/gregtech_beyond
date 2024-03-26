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


var loc = "planar_research_plant";
var meta = 10019;
val planar_research_plant = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CSC~")
                .aisle(
                    "~CCC~",
                    "C~~~C",
                    "C~~~C",
                    "C~~~C",
                    "~CCC~")
                .aisle(
                    "~~C~~",
                    "~GGG~",
                    "CG~GC",
                    "~GGG~",
                    "~~C~~")
                .aisle(
                    "~~~~~",
                    "~~G~~",
                    "~GGG~",
                    "~~G~~",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing_bismuth_bronze>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    " CCC ",
                    " CCC ",
                    "  C  ",
                    "     ")
                .aisle(
                    "CCCCC",
                    "C   C",
                    " GGG ",
                    "  G  ")
                .aisle(
                    "SCCCE",
                    "C   C",
                    "CG GC",
                    " GGG ")
                .aisle(
                    "CCCCC",
                    "C   C",
                    " GGG ",
                    "  G  ")
                .aisle(
                    " CCC ",
                    " CCC ",
                    "  C  ",
                    "     ")
                .where("G", <metastate:gtadditions:ga_transparent_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing_bismuth_bronze>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/bismuth_bronze"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .chancedOutput(<contenttweaker:researchpapermoon>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .chancedOutput(<contenttweaker:researchpapermars>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .chancedOutput(<contenttweaker:researchpaperasteroids>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .chancedOutput(<contenttweaker:researchpaperceres>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .chancedOutput(<contenttweaker:researchpaperhaumea>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .chancedOutput(<contenttweaker:researchpapermercury>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .chancedOutput(<contenttweaker:researchpapereris>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();

planar_research_plant.recipeMap.recipeBuilder()
    .inputs(<minecraft:paper>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .chancedOutput(<contenttweaker:researchpaperjupiter>, 100, 0)
    .duration(800)
    .EUt(250)
    .buildAndRegister();