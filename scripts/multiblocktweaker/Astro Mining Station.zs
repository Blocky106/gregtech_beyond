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


var loc = "astro_mining_station";
var meta = 10018;
val astro_mining_station = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~CCCCC~","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","~CCSCC~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~C~P~C~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~CPPPC~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCPPPCF","~CPPPC~","~CPPPC~","~CPPPC~","~C~P~C~","FC~~~CF","~C~~~C~")
                .aisle("~CCCCC~","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","FCCCCCF","~CCCCC~")
                .aisle("~~~~~~~","~FFFFF~","~F~~~F~","~F~~~F~","~F~~~F~","~F~~~F~","~FFFFF~","~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:climateproofcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" FFFFFF "," F    F "," F    F "," F    F "," FFFFFF ","        ")
                .aisle("CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC"," FFFFFF ")
                .aisle("CCCCCCCC","   PPPPC","  PPPPPC","   PPPPC","CCCCCCCC"," F    F ")
                .aisle("SCCCCCCE","  PPPPPC"," PPPPPPC","  PPPPPC","CCCCCCCC"," F    F ")
                .aisle("CCCCCCCC","   PPPPC","  PPPPPC","   PPPPC","CCCCCCCC"," F    F ")
                .aisle("CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC","CCCCCCCC"," FFFFFF ")
                .aisle(" FFFFFF "," F    F "," F    F "," F    F "," FFFFFF ","        ")
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:climateproofcasing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(1)
                        .maxOutputs(9)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/climateproofcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:moon>)
    .outputs(<gregtech:ore_rutile_0>*16,<gregtech:ore_ruby_0>*16,<gregtech:ore_bauxite_0>*16)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .notConsumable(<contenttweaker:mars>)
    .outputs(<gregtech:ore_deshite_0>*5,<gregtech:ore_platinumsalt_0>*5)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:moon>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<gregtech:ore_quartzite_0>*8,<appliedenergistics2:quartz_ore>*8,<appliedenergistics2:charged_quartz_ore>*8,<gregtech:ore_certus_quartz_0>*8)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:moon>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:ore_calcite_0>*16,<gregtech:ore_fluorite_0>*16)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:asteroids>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<contenttweaker:dense_ice>*4,<contenttweaker:titaniumcontainingice>*2)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();


astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:ceres>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<gregtech:ore_blackopal_0>*4,<gregtech:ore_sapphire_0>*4)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:ceres>)
    .outputs(<gregtech:ore_mythril_0>)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:mercury>)
    .outputs(<gregtech:ore_uranium_radioactive_0>,<gregtech:ore_uranium_0>)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:mercury>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
    .outputs(<gregtech:ore_platinum_metallic_powder_0>,<gregtech:ore_cooperite_0>)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(200)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:mars>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:ore_wolframite_0>*2,<gregtech:ore_molybdenite_0>*2,<gregtech:ore_scheelite_0>*2)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(300)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:io>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:platinumsaltore>*2,<gregtech:ore_platinum_0>*2)
    .fluidInputs(<liquid:drilling_fluid>*16000)
    .EUt(1200)
    .duration(300)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:ganymede>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:ore_columbite_0>*4)
    .fluidInputs(<liquid:drilling_fluid>*32000)
    .EUt(1200)
    .duration(300)
    .buildAndRegister();

astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:asteroids>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:naquadah_deposit_block>)
    .fluidInputs(<liquid:drilling_fluid>*32000)
    .EUt(1200)
    .duration(300)
    .buildAndRegister();
    
astro_mining_station.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:astro_miner>)
    .notConsumable(<contenttweaker:ganymede>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs(<gregtech:ore_naquadriatic_compound_0>)
    .fluidInputs(<liquid:drilling_fluid>*32000)
    .EUt(1200)
    .duration(300)
    .buildAndRegister();
