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


var loc = "hyper_chemical_plant";
var meta = 10027;
val hyper_chemical_plant = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCSCC")
                .aisle(
                    "F~~~F",
                    "~PPP~",
                    "~P~P~",
                    "~PPP~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~PPP~",
                    "~P~P~",
                    "~PPP~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~PPP~",
                    "~P~P~",
                    "~PPP~",
                    "F~~~F")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:pbistrengthenedtetrixcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_fullerenepolymertetrix>)
                .where("P", <metastate:gtadditions:ga_multiblock_casing:14>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    "CCCCC")
                .aisle(
                    "SCCCE",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " PPP ",
                    " PPP ",
                    " PPP ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "F   F",
                    "F   F",
                    "F   F",
                    "CCCCC")
                .where("F", <metastate:gregtech:frame_fullerenepolymertetrix>)
                .where("P", <metastate:gtadditions:ga_multiblock_casing:14>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:pbistrengthenedtetrixcasing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/pbistrengthenedtetrixcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;