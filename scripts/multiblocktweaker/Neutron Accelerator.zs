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


var loc = "neutron_accelerator";
var meta = 10002;
val neutron_accelerator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CNMNC","CCCCC","CCCCC","CCCCC","CCSCC")
                .aisle("F~~~F","~~~~~","~~P~~","~~~~~","F~~~F")
                .aisle("F~~~F","~~~~~","~~P~~","~~~~~","F~~~F")
                .aisle("F~~~F","~~~~~","~~P~~","~~~~~","F~~~F")
                .aisle("CCCCC","CCCCC","CCCCC","CCCCC","CCCCC")

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
                .where("N", <metastate:contenttweaker:neutronaccelerator>)
                .where("M", <metastate:contenttweaker:neutronsensor>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
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
"CCCCN",
"     ",
"     ",
"     ",
"CCCCC")
                .aisle(
"SCCCM",
"  P  ",
"  P  ",
"  P  ",
"CCCCC")
                .aisle(
"CCCCN",
"     ",
"     ",
"     ",
"CCCCC")
                .aisle(
"CCCCC",
"F   F",
"F   F",
"F   F",
"CCCCC")
                                   
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("S", IBlockInfo.controller(loc))
                .where("N", <metastate:contenttweaker:neutronaccelerator>)
                .where("M", <metastate:contenttweaker:neutronsensor>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;





neutron_accelerator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:uraniumbasedliquidfuel>*1000)
    .fluidOutputs(<liquid:uraniumbasedliquidfuele>*1000)
    .notConsumable(<gregtech:meta_item_1:12311>)
    .EUt(12000)
    .duration(500)
    .buildAndRegister();
    
neutron_accelerator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:plutoniumbasedliquidfuel>*1000)
    .fluidOutputs(<liquid:plutoniumbasedliquidfuele>*1000)
    .notConsumable(<gregtech:meta_item_1:12002>)
    .EUt(12000)
    .duration(500)
    .buildAndRegister();
    
neutron_accelerator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:naquadahactivationliquid>*1000)
    .fluidOutputs(<liquid:naquadah_sulfate>*800,<liquid:chlorine>*200)
    .EUt(4000)
    .duration(300)
    .buildAndRegister();
    
neutron_accelerator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:enderium_molten>*1000)
    .fluidOutputs(<liquid:moltenenhancedenderium>*500)
    .EUt(42000)
    .duration(200)
    .buildAndRegister();
    
neutron_accelerator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:moltenceriumlanthanum>*1000)
    .fluidOutputs(<liquid:moltenceriumdopedlanthanum>*1000)
    .EUt(82000)
    .duration(800)
    .buildAndRegister();
    
neutron_accelerator.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:purified4thorium>)
    .outputs(<gtadditions:ga_dust:32104>)
    .fluidOutputs(<liquid:low_thorium_solution>*288)
    .EUt(82000)
    .duration(800)
    .buildAndRegister();

neutron_accelerator.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32199>)
    .chancedOutput(<gregtech:meta_item_1:307>, 700, 0)
    .chancedOutput(<gregtech:meta_item_1:54>, 1000, 0)
    .outputs(<gtadditions:ga_dust:32200>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

