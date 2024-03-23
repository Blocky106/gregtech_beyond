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
            "LML",
            "LSL")
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
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.INPUT_ENERGY,
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.EXPORT_ITEMS,
                    MultiblockAbility.EXPORT_FLUIDS))
            .where("G", <metastate:gtadditions:ga_transparent_casing>)
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

advanced_assembly_line.update = function(recipeLogic as IRecipeLogic) {
    var oldProgress = recipeLogic.recipeProgress;
    recipeLogic.recipeProgress = oldProgress + 1;
} as IUpdateFunction;

