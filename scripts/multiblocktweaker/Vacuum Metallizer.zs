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


var loc = "vacuum_metallizer";
var meta = 10007;
val vacuum_metallizer = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCC~~~CC",
                    "CCCCGGGCC",
                    "CSCC~~~CC")
                .aisle(
                    "CGGCGGGCC",
                    "C~~CPPPCC",
                    "CGGCGGGCC")
                .aisle(
                    "~~~~~~~CC",
                    "CGGCGGGCC",
                    "~~~~~~~CC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 12)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCC","CCC"," C ")
                .aisle("SCC","G G"," G ")
                .aisle("CCC","G G"," G ")
                .aisle("CCC","CCC"," C ")
                .aisle(" G ","GPG"," G ")
                .aisle(" G ","GPG"," G ")
                .aisle(" G ","GPG"," G ")
                .aisle("CCC","CCC","CCC")
                .aisle("CCC","CCC","CCC")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[1], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

vacuum_metallizer.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32174>,<gregtech:cable:237>,<contenttweaker:gold_electrode>,<contenttweaker:silver_electrode>)
    .outputs(<contenttweaker:electrode_pasted_ceramic_plate>)
    .duration(400)
    .EUt(80)
    .buildAndRegister();