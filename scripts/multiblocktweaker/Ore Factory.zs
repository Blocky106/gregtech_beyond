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
                .setAmountAtLeast('C', 85)
                .whereOr("C", 
                <metastate:contenttweaker:ore_factory_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("G", <metastate:qmd:containment_glass>)
                .where("Q", <metastate:contenttweaker:core_processing_casing>)
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

                .where("C", <metastate:contenttweaker:ore_factory_casing>)
                .where("G", <metastate:qmd:containment_glass>)
                .where("Q", <metastate:contenttweaker:core_processing_casing>)
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


ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_nickel_0>*10)
    .outputs(<gregtech:meta_item_1:2044>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_kyanite_0>*10)
    .outputs(<gregtech:meta_item_1:2292>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_platinum_metallic_powder_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2900>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_prasiolite_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2910>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_dolomite_0>*10)
    .outputs(<gregtech:meta_item_1:2289>*64)
    .fluidInputs(<liquid:water>*32000)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_banded_iron_0>*10)
    .outputs(<gregtech:meta_item_1:2090>*64)
    .fluidInputs(<liquid:water>*32000)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_alumina_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2524>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_zinc_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2079>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_brown_limonite_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2096>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .inputs(<gregtech:ore_yellow_limonite_0>*10)
    .fluidInputs(<liquid:water>*32000)
    .outputs(<gregtech:meta_item_1:2199>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_witherite_0>*10)
    .outputs(<gregtech:meta_item_1:2669>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_titanium_0>*10)
    .outputs(<gregtech:meta_item_1:2072>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_aikinite_0>*10)
    .outputs(<gregtech:meta_item_1:2601>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_uranium_0>*10)
    .outputs(<gregtech:meta_item_1:2075>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_iron_0>*10)
    .outputs(<gregtech:meta_item_1:2033>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lithium_0>*10)
    .outputs(<gregtech:meta_item_1:2036>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_chromite_0>*10)
    .outputs(<gregtech:meta_item_1:2102>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tetrahedrite_0>*10)
    .outputs(<gregtech:meta_item_1:2188>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bauxite_0>*10)
    .outputs(<gregtech:meta_item_1:2123>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_opal_0>*10)
    .outputs(<gregtech:meta_item_1:2213>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_ardite_0>*10)
    .outputs(<gregtech:meta_item_1:2518>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_apatite_0>*10)
    .outputs(<gregtech:meta_item_1:2226>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_silver_0>*10)
    .outputs(<gregtech:meta_item_1:2062>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_triniite_0>*10)
    .outputs(<gregtech:meta_item_1:2836>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_iridium_0>*10)
    .outputs(<gregtech:meta_item_1:2032>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pollucite_0>*10)
    .outputs(<gregtech:meta_item_1:2273>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_glauconite_sand_0>*10)
    .outputs(<gregtech:meta_item_1:2276>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_aluminiumsalt_0>*10)
    .outputs(<gregtech:meta_item_1:2525>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_uvarovite_0>*10)
    .outputs(<gregtech:meta_item_1:2194>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_powellite_0>*10)
    .outputs(<gregtech:meta_item_1:2146>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_saltpeter_0>*10)
    .outputs(<gregtech:meta_item_1:2156>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tenorite_0>*10)
    .outputs(<gregtech:meta_item_1:2358>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pentlandite_0>*10)
    .outputs(<gregtech:meta_item_1:2271>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_phosphate_0>*10)
    .outputs(<gregtech:meta_item_1:2139>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cobaltite_0>*10)
    .outputs(<gregtech:meta_item_1:2107>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_fullers_earth_0>*10)
    .outputs(<gregtech:meta_item_1:2279>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_nether_star_0>*10)
    .outputs(<gregtech:meta_item_1:2331>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_talc_0>*10)
    .outputs(<gregtech:meta_item_1:2294>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bornite_0>*10)
    .outputs(<gregtech:meta_item_1:2360>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_aluminium_0>*10)
    .outputs(<gregtech:meta_item_1:2001>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_chalcopyrite_0>*10)
    .outputs(<gregtech:meta_item_1:2100>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_stannite_0>*10)
    .outputs(<gregtech:meta_item_1:2608>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lazurite_0>*10)
    .outputs(<gregtech:meta_item_1:2128>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_ilmenite_0>*10)
    .outputs(<gregtech:meta_item_1:2121>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bismuth_0>*10)
    .outputs(<gregtech:meta_item_1:2008>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pitchblende_0>*10)
    .outputs(<gregtech:meta_item_1:2280>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_garnierite_0>*10)
    .outputs(<gregtech:meta_item_1:2115>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_uranium_radioactive_0>*10)
    .outputs(<gregtech:meta_item_1:2076>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_amethyst_0>*10)
    .outputs(<gregtech:meta_item_1:2214>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_chrome_0>*10)
    .outputs(<gregtech:meta_item_1:2016>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_barytocalcite_0>*10)
    .outputs(<gregtech:meta_item_1:2670>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_thorite_0>*10)
    .outputs(<gregtech:meta_item_1:2610>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_topaz_0>*10)
    .outputs(<gregtech:meta_item_1:2190>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_granitic_mineral_sand_0>*10)
    .outputs(<gregtech:meta_item_1:2267>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pyrope_0>*10)
    .outputs(<gregtech:meta_item_1:2150>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_gypsum_0>*10)
    .outputs(<gregtech:meta_item_1:2287>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_beryllium_0>*10)
    .outputs(<gregtech:meta_item_1:2007>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pyrolusite_0>*10)
    .outputs(<gregtech:meta_item_1:2149>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cinnabar_0>*10)
    .outputs(<gregtech:meta_item_1:2103>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_wolframite_0>*10)
    .outputs(<gregtech:meta_item_1:2615>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_arsenopyrite_0>*10)
    .outputs(<gregtech:meta_item_1:2668>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_molybdenum_0>*10)
    .outputs(<gregtech:meta_item_1:2041>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cassiterite_0>*10)
    .outputs(<gregtech:meta_item_1:2098>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_spessartine_0>*10)
    .outputs(<gregtech:meta_item_1:2181>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_blackopal_0>*10)
    .outputs(<gregtech:meta_item_1:2562>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tellurite_0>*10)
    .outputs(<gregtech:meta_item_1:2538>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_soapstone_0>*10)
    .outputs(<gregtech:meta_item_1:2295>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bentonite_0>*10)
    .outputs(<gregtech:meta_item_1:2278>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lignite_0>*10)
    .outputs(<gregtech:meta_item_1:2211>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_grossular_0>*10)
    .outputs(<gregtech:meta_item_1:2118>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_rarest_metal_residue_0>*10)
    .outputs(<gregtech:meta_item_1:2878>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_sphalerite_0>*10)
    .outputs(<gregtech:meta_item_1:2182>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_almandine_0>*10)
    .outputs(<gregtech:meta_item_1:2085>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_stibnite_0>*10)
    .outputs(<gregtech:meta_item_1:2185>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_infusedgold_0>*10)
    .outputs(<gregtech:meta_item_1:2578>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_quantium_0>*10)
    .outputs(<gregtech:meta_item_1:2543>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_diamond_0>*10)
    .outputs(<gregtech:meta_item_1:2111>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_xenotime_0>*10)
    .outputs(<gregtech:meta_item_1:2622>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bertrandite_0>*10)
    .outputs(<gregtech:meta_item_1:2602>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_platinum_0>*10)
    .outputs(<gregtech:meta_item_1:2051>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_spodumene_0>*10)
    .outputs(<gregtech:meta_item_1:2272>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_basaltic_mineral_sand_0>*10)
    .outputs(<gregtech:meta_item_1:2266>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_carnotite_0>*10)
    .outputs(<gregtech:meta_item_1:2604>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_green_sapphire_0>*10)
    .outputs(<gregtech:meta_item_1:2117>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cooperite_0>*10)
    .outputs(<gregtech:meta_item_1:2108>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_quartzite_0>*10)
    .outputs(<gregtech:meta_item_1:2203>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_vanadinite_0>*10)
    .outputs(<gregtech:meta_item_1:2613>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pyrochlore_0>*10)
    .outputs(<gregtech:meta_item_1:2701>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_jasper_0>*10)
    .outputs(<gregtech:meta_item_1:2206>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_diatomite_0>*10)
    .outputs(<gregtech:meta_item_1:2221>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_sapphire_0>*10)
    .outputs(<gregtech:meta_item_1:2157>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_fluoroapatite_0>*10)
    .outputs(<gregtech:meta_item_1:2689>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_graphite_0>*10)
    .outputs(<gregtech:meta_item_1:2204>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_alunite_0>*10)
    .outputs(<gregtech:meta_item_1:2288>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_caliche_0>*10)
    .outputs(<gregtech:meta_item_1:2712>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_trona_0>*10)
    .outputs(<gregtech:meta_item_1:2285>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tennantite_0>*10)
    .outputs(<gregtech:meta_item_1:2363>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_magnesite_0>*10)
    .outputs(<gregtech:meta_item_1:2130>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_calcite_0>*10)
    .outputs(<gregtech:meta_item_1:2097>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_naquadah_enriched_0>*10)
    .outputs(<gregtech:meta_item_1:2309>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_diamandine_0>*10)
    .outputs(<gregtech:meta_item_1:2566>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_precious_metal_0>*10)
    .outputs(<gregtech:meta_item_1:2827>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_redstone_0>*10)
    .outputs(<minecraft:redstone>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_gadolinite_0>*10)
    .outputs(<gregtech:meta_item_1:2621>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_ruby_0>*10)
    .outputs(<gregtech:meta_item_1:2154>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_mythril_0>*10)
    .outputs(<gregtech:meta_item_1:2548>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_rheniite_0>*10)
    .outputs(<gregtech:meta_item_1:2611>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tantalite_0>*10)
    .outputs(<gregtech:meta_item_1:2224>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lapis_0>*10)
    .outputs(<gregtech:meta_item_1:2216>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_blue_topaz_0>*10)
    .outputs(<gregtech:meta_item_1:2092>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tin_0>*10)
    .outputs(<gregtech:meta_item_1:2071>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_malachite_0>*10)
    .outputs(<gregtech:meta_item_1:2282>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_emerald_0>*10)
    .outputs(<gregtech:meta_item_1:2113>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_naquadriatic_compound_0>*10)
    .outputs(<gregtech:meta_item_1:2113>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_zeolite_0>*10)
    .outputs(<gregtech:meta_item_1:2291>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_deshite_0>*10)
    .outputs(<gregtech:meta_item_1:2788>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_perlite_0>*10)
    .outputs(<gregtech:meta_item_1:2210>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_garnet_red_0>*10)
    .outputs(<gregtech:meta_item_1:2243>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_trinium_0>*10)
    .outputs(<gregtech:meta_item_1:2719>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_galena_0>*10)
    .outputs(<gregtech:meta_item_1:2114>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_glauconite_0>*10)
    .outputs(<gregtech:meta_item_1:2275>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_uraninite_0>*10)
    .outputs(<gregtech:meta_item_1:2193>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_amblygonite_0>*10)
    .outputs(<gregtech:meta_item_1:2600>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_coal_0>*10)
    .outputs(<gregtech:meta_item_1:2106>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cobalt_0>*10)
    .outputs(<gregtech:meta_item_1:2017>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tellurium_0>*10)
    .outputs(<gregtech:meta_item_1:2067>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tungstate_0>*10)
    .outputs(<gregtech:meta_item_1:2191>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_vinteum_0>*10)
    .outputs(<gregtech:meta_item_1:2247>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_naquadric_compound_0>*10)
    .outputs(<gregtech:meta_item_1:2748>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_sodalite_0>*10)
    .outputs(<gregtech:meta_item_1:2161>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_neodymium_0>*10)
    .outputs(<gregtech:meta_item_1:2042>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cuprite_0>*10)
    .outputs(<gregtech:meta_item_1:2359>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_niobium_0>*10)
    .outputs(<gregtech:meta_item_1:2045>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bastnasite_0>*10)
    .outputs(<gregtech:meta_item_1:2270>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tanzanite_0>*10)
    .outputs(<gregtech:meta_item_1:2187>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_neodymium_monazite_0>*10)
    .outputs(<gregtech:meta_item_1:2606>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_barite_0>*10)
    .outputs(<gregtech:meta_item_1:2286>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_thorium_0>*10)
    .outputs(<gregtech:meta_item_1:2069>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_fluorite_0>*10)
    .outputs(<gregtech:meta_item_1:2703>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_garnet_sand_0>*10)
    .outputs(<gregtech:meta_item_1:2268>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_gold_0>*10)
    .outputs(<gregtech:meta_item_1:2026>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_andradite_0>*10)
    .outputs(<gregtech:meta_item_1:2086>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_nether_quartz_0>*10)
    .outputs(<gregtech:meta_item_1:2201>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_columbite_0>*10)
    .outputs(<gregtech:meta_item_1:2702>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_copper_0>*10)
    .outputs(<gregtech:meta_item_1:2018>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lead_0>*10)
    .outputs(<gregtech:meta_item_1:2035>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_vermiculite_0>*10)
    .outputs(<gregtech:meta_item_1:2277>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_wulfenite_0>*10)
    .outputs(<gregtech:meta_item_1:2198>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_monazite_0>*10)
    .outputs(<gregtech:meta_item_1:2281>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_lepidolite_0>*10)
    .outputs(<gregtech:meta_item_1:2274>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_scheelite_0>*10)
    .outputs(<gregtech:meta_item_1:2158>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_garnet_yellow_0>*10)
    .outputs(<gregtech:meta_item_1:2244>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_olivine_0>*10)
    .outputs(<gregtech:meta_item_1:2212>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_enargite_0>*10)
    .outputs(<gregtech:meta_item_1:2362>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_molybdenite_0>*10)
    .outputs(<gregtech:meta_item_1:2132>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_salt_0>*10)
    .outputs(<gregtech:meta_item_1:2155>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_palladium_metallic_powder_0>*10)
    .outputs(<gregtech:meta_item_1:2894>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_naquadah_0>*10)
    .outputs(<gregtech:meta_item_1:2307>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_mica_0>*10)
    .outputs(<gregtech:meta_item_1:2284>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_platinumsalt_0>*10)
    .outputs(<gregtech:meta_item_1:2537>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cerium_monazite_0>*10)
    .outputs(<gregtech:meta_item_1:2605>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_niter_0>*10)
    .outputs(<gregtech:meta_item_1:2223>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_enriched_naquadric_compound_0>*10)
    .outputs(<gregtech:meta_item_1:2747>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_certus_quartz_0>*10)
    .outputs(<gregtech:meta_item_1:2202>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_zircon_0>*10)
    .outputs(<gregtech:meta_item_1:2713>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_palladium_0>*10)
    .outputs(<gregtech:meta_item_1:2049>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_sulfur_0>*10)
    .outputs(<gregtech:meta_item_1:2065>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_osmium_0>*10)
    .outputs(<gregtech:meta_item_1:2047>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_kaolinite_0>*10)
    .outputs(<gregtech:meta_item_1:2293>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_rhodocrosite_0>*10)
    .outputs(<gregtech:meta_item_1:2704>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_phosphor_0>*10)
    .outputs(<gregtech:meta_item_1:2050>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_uranium235_0>*10)
    .outputs(<gregtech:meta_item_1:2076>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_vanadium_magnetite_0>*10)
    .outputs(<gregtech:meta_item_1:2255>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_pyrite_0>*10)
    .outputs(<gregtech:meta_item_1:2148>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_magnetite_0>*10)
    .outputs(<gregtech:meta_item_1:2131>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_chalcocite_0>*10)
    .outputs(<gregtech:meta_item_1:2361>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_celestine_0>*10)
    .outputs(<gregtech:meta_item_1:2665>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_realgar_0>*10)
    .outputs(<gregtech:meta_item_1:2254>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bowieite_0>*10)
    .outputs(<gregtech:meta_item_1:2666>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_cassiterite_sand_0>*10)
    .outputs(<gregtech:meta_item_1:2099>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_oilsands_0>*10)
    .outputs(<gregtech:meta_item_1:2324>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_rutile_0>*10)
    .outputs(<gregtech:meta_item_1:2122>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_gallite_0>*10)
    .outputs(<gregtech:meta_item_1:2667>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_asbestos_0>*10)
    .outputs(<gregtech:meta_item_1:2088>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_rock_salt_0>*10)
    .outputs(<gregtech:meta_item_1:2151>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_wollastonite_0>*10)
    .outputs(<gregtech:meta_item_1:2290>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_sylvanite_0>*10)
    .outputs(<gregtech:meta_item_1:2609>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_carrolite_0>*10)
    .outputs(<gregtech:meta_item_1:2614>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_zirkelite_0>*10)
    .outputs(<gregtech:meta_item_1:2904>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_iridium_metal_residue_0>*10)
    .outputs(<gregtech:meta_item_1:2877>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_bismite_0>*10)
    .outputs(<gregtech:meta_item_1:2603>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
    .inputs(<gregtech:ore_tourmaline_0>*10)
    .outputs(<gregtech:meta_item_1:2612>*64)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

ore_factory.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:water>*32000)
	.inputs(<gregtech:meta_item_1:2128>*10)
	.outputs(<gtadditions:ga_dust:32007>*64)
	.duration(12)
	.EUt(6)
	.buildAndRegister();