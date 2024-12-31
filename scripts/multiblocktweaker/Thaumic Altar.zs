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


var loc = "altar";
var meta = 10050;
val altar = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CCC~")
                .aisle(
                    "~H~H~",
                    "H~~~H",
                    "~~S~~",
                    "H~~~H",
                    "~H~H~")
                .aisle(
                    "~H~H~",
                    "H~~~H",
                    "~~~~~",
                    "H~~~H",
                    "~H~H~")
                .aisle(
                    "~G~G~",
                    "G~~~G",
                    "~~~~~",
                    "G~~~G",
                    "~G~G~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:thaumic_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 12)
                .where("G", <metastate:thaumcraft:metal_alchemical_advanced>)
                .where("H", <metastate:thaumcraft:metal_thaumium>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC "," H H "," H H "," G G ")
                .aisle("CCCCC","H   H","H   H","G   G")
                .aisle("CCCCE","  S  ","     ","     ")
                .aisle("CCCCC","H   H","H   H","G   G")
                .aisle(" CCC "," H H "," H H "," G G ")
                .where("C", <metastate:contenttweaker:thaumic_casing>)
                .where("S", IBlockInfo.controller(loc))
                .where("G", <metastate:thaumcraft:metal_alchemical_advanced>)
                .where("H", <metastate:thaumcraft:metal_thaumium>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(24)
                        .maxFluidInputs(0)
                        .maxFluidOutputs(0)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/thaumic_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

