
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

assembler.recipeBuilder()
    .inputs( <gtadditions:ga_meta_item:32032>, <contenttweaker:fuel_tank>, 
    <contenttweaker:heavydutyplatet1>*4, <ore:frameGtCupronickel>)
    .outputs(<contenttweaker:rocket_fuel_tank>)
    .duration(120)
    .EUt(120)
    .buildAndRegister();

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:rocket_thruster_top>, [
	[<ore:plateCurvedMolybdenum>, null, null, null, <ore:plateCurvedMolybdenum>], 
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, null, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, <contenttweaker:nozzle>, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, null, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:plateCurvedMolybdenum>, null, null, null, <ore:plateCurvedMolybdenum>]
]);

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:rocket_thruster_bottom>, [
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, null, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, null, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:pipeSmallPlastic>, <ore:plateCurvedMolybdenum>, <contenttweaker:nozzle>, <ore:plateCurvedMolybdenum>, <ore:pipeSmallPlastic>], 
	[<ore:plateCurvedMolybdenum>, null, null, null, <ore:plateCurvedMolybdenum>], 
	[<ore:plateCurvedMolybdenum>, null, null, null, <ore:plateCurvedMolybdenum>]
]);

assembler.recipeBuilder()
    .inputs( <contenttweaker:oxidizer_tank>, <contenttweaker:propellant_tank>, <ore:pipeMediumStainlessSteel>*5, 
	<contenttweaker:heavydutyplatet1>*6, <gtadditions:ga_pump_casing:2>, <gregtech:machine:2542>, 
	<ore:platePlastic>*4, <ore:frameGtCupronickel>, <contenttweaker:rocket_combustion_chamber>)
    .outputs(<contenttweaker:turbopump>)
    .duration(2400)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs( <contenttweaker:aluminium_item_casing>*4, <ore:plateDenseStainlessSteel>*4, <contenttweaker:nozzle>, 
	<contenttweaker:oxidizer_tank>, <contenttweaker:propellant_tank>, <contenttweaker:rocket_combustion_chamber>, 
	<ore:circuitAdvanced>, <ore:pipeLargeStainlessSteel>*5, <contenttweaker:heavydutyplatet1>*6)
    .outputs(<contenttweaker:t1_rocket_combustion_engine>)
    .duration(1200)
    .EUt(120)
    .buildAndRegister();