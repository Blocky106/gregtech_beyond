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

var loc = "cvd_unit";
var meta = 10038;
val cvd_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "SCCCC")
                .aisle(
                    "PPPPP",
                    "P~~~P",
                    "~GGG~")
                .aisle(
                    "~CCC~",
                    "~GGG~",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:9>,
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
                .aisle(
                    "SCE",
                    " PP",
                    "   ")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    "G P",
                    " GC")
                .aisle(
                    "CCC",
                    " PP",
                    "   ")
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("C", <metastate:gtadditions:ga_metal_casing_2:9>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(3)
                        .maxFluidInputs(1)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/hss_s"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2204>*3)
    .fluidInputs(<liquid:graphene_oxidation_solution>*100)
    .outputs(<gtadditions:ga_dust:358>)
    .chancedOutput(<gtadditions:ga_dust:107>, 8000, 100)
    .duration(200)
    .EUt(2000)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:358>)
    .notConsumable(<contenttweaker:nickel_breeding_bed>)
    .fluidInputs(<liquid:methane>*1000)
    .outputs(<gtadditions:ga_dust:357>)
    .duration(200)
    .EUt(2000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10038>, [	[<ore:plateHsss>, <gregtech:meta_item_1:32693>, <ore:plateHsss>], 	[<ore:circuitMaster>, <gregtech:machine:504>, <ore:circuitMaster>], 	[<ore:plateHsss>, <gregtech:meta_item_1:32673>, <ore:plateHsss>]]);

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_barium_titanate_substrate_wafer>,<gregtech:meta_item_1:2744>*2)
    .fluidInputs(<liquid:silicon_carbide_vapor>*144)
    .outputs(<contenttweaker:superconductor_coated_substrate_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

var PDopant as IItemStack[] = [
<gregtech:meta_item_1:2001>,
<gregtech:meta_item_1:2009>,
<gregtech:meta_item_1:2025>,
<gregtech:meta_item_1:2031>,
<gregtech:meta_item_1:2761>,
<gregtech:meta_item_1:2678>,
];

var NDopant as IItemStack[] = [
<gtadditions:ga_dust:32203>,
<gregtech:meta_item_1:2005>,
<gregtech:meta_item_1:2003>,
<gregtech:meta_item_1:2008>,
<gregtech:meta_item_1:2679>,
];

for i in NDopant {
for I in PDopant {

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_power_ic_wafer>,i,I)
    .outputs(<contenttweaker:raw_power_ic_wafer>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_ram_wafer>,i,I)
    .outputs(<contenttweaker:raw_ram_wafer>)
    .duration(800)
    .EUt(50)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_cpu_wafer>,i,I)
    .outputs(<contenttweaker:raw_cpu_wafer>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_ic_wafer>,i,I)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32463>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_wafer>,i)
    .outputs(<contenttweaker:n_doped_silicon_dioxide_wafer>)
    .duration(800)
    .EUt(120)
    .buildAndRegister();

cvd_unit.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:engraved_asoc_wafer>,i,I)
    .outputs(<contenttweaker:raw_asoc_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

	}
    }


cvd_unit.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2421>,<gtadditions:ga_dust:32210>,<gregtech:meta_item_2:32469>)
    .outputs(<contenttweaker:raw_high_power_ic_wafer>)
    .duration(400)
    .EUt(200)
    .buildAndRegister();