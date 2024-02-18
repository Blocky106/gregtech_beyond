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



var loc = "advanced_assembly_line";
var meta = 10056; 
var advanced_assembly_line = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
            .aisle(
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",  
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC",
            "CCC")
            .aisle(
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG",
            "GAG")
            .aisle(
            "LSL",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML",
            "LML")
            .aisle(
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~",
            "~C~")
            .whereOr("C",
                <metastate:gregtech:metal_casing:4>,
                <metastate:gregtech:machine:4016>,
                <metastate:gregtech:machine:700>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.INPUT_ENERGY,
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.EXPORT_ITEMS,
                    MultiblockAbility.EXPORT_FLUIDS))
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
            .where("~", IBlockMatcher.ANY)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle("CCCCCCCCCCCCCCCC","GGGGGGGGGGGGGGGG","LLLLLLLLLLLLLLLL","                ")
            .aisle("CCCCCCCCCCCCCCCC","AAAAAAAAAAAAAAAA","SMMMMMMMMMMMMMMM","CCCCCCCCCCCCCCCC")
            .aisle("CCCCCCCCCCCCCCCC","GGGGGGGGGGGGGGGG","LLLLLLLLLLLLLLLL","                ")
            .where("G", <metastate:gtadditions:ga_transparent_casing>)
            .where("C", <metastate:gregtech:metal_casing:4>)
            .where("L", <metastate:gregtech:multiblock_casing:1>)
            .where("A", <metastate:gtadditions:ga_multiblock_casing>)
            .where("M", <metastate:gregtech:multiblock_casing:2>)
            .where("S", IBlockInfo.controller(loc))
            .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[6], IFacing.west())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(16)
                        .maxFluidInputs(4)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

advanced_assembly_line.recipeMap.copyAll(RecipeMap.getByName("assembly_line"));