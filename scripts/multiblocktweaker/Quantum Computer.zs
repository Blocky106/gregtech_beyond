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


var loc = "quantum_computer";
var meta = 10012;
val quantum_computer = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCHCC",
                    "CCHCC",
                    "HHHHH",
                    "CCHCC",
                    "CCSCC")
                .aisle(
                    "HHHHH",
                    "H~~~H",
                    "H~T~H",
                    "H~~~H",
                    "HHHHH")
                .aisle(
                    "HMMMH",
                    "M~~~M",
                    "M~T~M",
                    "M~~~M",
                    "HGGGH")
                .aisle(
                    "HMMMH",
                    "M~~~M",
                    "M~T~M",
                    "M~~~M",
                    "HGGGH")
                .aisle(
                    "HMMMH",
                    "M~~~M",
                    "M~T~M",
                    "M~~~M",
                    "HGGGH")
                .aisle(
                    "HMMMH",
                    "M~~~M",
                    "M~T~M",
                    "M~~~M",
                    "HGGGH")
                .aisle(
                    "HHHHH",
                    "H~~~H",
                    "H~T~H",
                    "H~~~H",
                    "HHHHH")
                .aisle(
                    "CCHCC",
                    "CCHCC",
                    "HHHHH",
                    "CCHCC",
                    "CCHCC")
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
                .setAmountAtLeast('C', 20)
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:6>)
                .where("T", <metastate:gregtech:multiblock_casing:5>)
                .where("M", <metastate:gtadditions:ga_nuclear_casing:11>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCHCC",
                    "HHHHH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HHHHH",
                    "CCHCC")
                .aisle(
                    "CCHCE",
                    "H   H",
                    "G   M",
                    "G   M",
                    "G   M",
                    "G   M",
                    "H   H",
                    "CCHCC")
                .aisle(
                    "SHHHH",
                    "H T H",
                    "G T M",
                    "G T M",
                    "G T M",
                    "G T M",
                    "H T H",
                    "HHHHH")
                .aisle(
                    "CCHCC",
                    "H   H",
                    "G   M",
                    "G   M",
                    "G   M",
                    "G   M",
                    "H   H",
                    "CCHCC")
                .aisle(
                    "CCHCC",
                    "HHHHH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HHHHH",
                    "CCHCC")
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:6>)
                .where("T", <metastate:gregtech:multiblock_casing:5>)
                .where("M", <metastate:gtadditions:ga_nuclear_casing:11>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:7>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/highpowercasing"))

.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


quantum_computer.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>)
    .EUt(200000)
    .outputs(<contenttweaker:computation>)
    .duration(3000)
    .buildAndRegister();