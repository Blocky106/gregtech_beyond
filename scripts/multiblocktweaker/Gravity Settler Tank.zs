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


var loc = "gravity_settler_tank";
var meta = 10004;
val gravity_settler_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~",
                    "~CC~",
                    "~CC~",
                    "~CC~",
                    "~CC~",
                    "~CC~",
                    "~~~~")
                .aisle(
                    "~CC~",
                    "CPPC",
                    "C~~C",
                    "CFFC",
                    "CFFC",
                    "CFFC",
                    "~SC~")
                .aisle(
                    "~CC~",
                    "CPPC",
                    "C~~C",
                    "CFFC",
                    "CFFC",
                    "CFFC",
                    "~CC~")
                .aisle(
                    "~~~~",
                    "~GG~",
                    "~GG~",
                    "~GG~",
                    "~GG~",
                    "~GG~",
                    "~~~~")
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
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:multiblock_casing:1>)
                .where("G", <metastate:thermalfoundation:glass:2>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("       "," CCCCC "," CCCCC ","       ")
                .aisle(" CCCCC ","SFFF PE","CFFF PC"," GGGGG ")
                .aisle(" CCCCC ","CFFF PC","CFFF PC"," GGGGG ")
                .aisle("       "," CCCCC "," CCCCC ","       ")
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("F", <metastate:gregtech:multiblock_casing:1>)
                .where("G", <metastate:thermalfoundation:glass:2>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

gravity_settler_tank.recipeMap.recipeBuilder()
    .inputs(<appliedenergistics2:charged_quartz_ore>)
    .outputs(<appliedenergistics2:material:1>*2)
    .fluidInputs(<liquid:lava>*200)
    .duration(40)
    .EUt(50)
    .buildAndRegister();