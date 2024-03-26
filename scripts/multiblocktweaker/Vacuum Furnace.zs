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


var loc = "vacuum_furnace";
var meta = 1004;
val vacuum_furnace = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "PAP",
                    "FCF",
                    "~C~",
                    "~C~",
                    "WCW",
                    "WCW")
                .aisle(
                    "WAW",
                    "P~P",
                    "G~G",
                    "G~G",
                    "P~P",
                    "CSC")
                .aisle(
                    "PAP",
                    "FCF",
                    "~C~",
                    "~C~",
                    "WCW",
                    "WCW")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:vacuumfurnacecasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("W", <metastate:gregtech:machine_casing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("A", <metastate:gregtech:boiler_firebox_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("WW  FP","CPGGPW","WW  FP")
                .aisle("ICCCCA","S    A","OCCCEA")
                .aisle("WW  FP","CPGGPW","WW  FP")

                .where("C", <metastate:contenttweaker:vacuumfurnacecasing>)
                .where("S", IBlockInfo.controller(loc))
                .where("W", <metastate:gregtech:machine_casing>)
                .where("G", <metastate:gtadditions:ga_transparent_casing>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("A", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[1], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/vacuumfurnacecasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2109>)
    .outputs(<gregtech:meta_item_1:10109>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2577>)
    .outputs(<gregtech:meta_item_1:10577>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2126>)
    .outputs(<gregtech:meta_item_1:10126>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2580>)
    .outputs(<gregtech:meta_item_1:10580>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2581>)
    .outputs(<gregtech:meta_item_1:10581>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2141>)
    .outputs(<gregtech:meta_item_1:10141>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2144>)
    .outputs(<gregtech:meta_item_1:10144>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2145>)
    .outputs(<gregtech:meta_item_1:10145>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2395>)
    .outputs(<gregtech:meta_item_1:10395>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2575>)
    .outputs(<gregtech:meta_item_1:10575>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2411>)
    .outputs(<gregtech:meta_item_1:10411>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2700>)
    .outputs(<gregtech:meta_item_1:10700>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2728>)
    .outputs(<gregtech:meta_item_1:10728>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2840>)
    .outputs(<gregtech:meta_item_1:10840>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2965>)
    .outputs(<gregtech:meta_item_1:10965>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2391>)
    .outputs(<gregtech:meta_item_1:10391>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2142>)
    .outputs(<gregtech:meta_item_1:10142>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2992>)
    .outputs(<gregtech:meta_item_1:10992>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2981>)
    .outputs(<gregtech:meta_item_1:10981>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2729>)
    .outputs(<gregtech:meta_item_1:10729>)
    .EUt(12)
    .duration(50)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2205>)
    .outputs(<gregtech:meta_item_1:10205>)
    .EUt(1800)
    .duration(120)
    .buildAndRegister();

vacuum_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2470>)
    .outputs(<gregtech:meta_item_1:10470>)
    .EUt(120)
    .duration(20)
    .buildAndRegister();