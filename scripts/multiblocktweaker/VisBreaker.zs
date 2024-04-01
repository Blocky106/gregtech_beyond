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


var loc = "vis_breaker";
var meta = 1007;
val vis_breaker = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~~~~~~~","~~CCC~~","~CCCCC~","~CCCCC~","~CCCCC~","~~CSC~~","~~~~~~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~FFF~~","~FFFFF~","FFCCCFF","FFCCCFF","FFCCCFF","~FFFFF~","~~FFF~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~FFF~~","~FFFFF~","FFCCCFF","FFCCCFF","FFCCCFF","~FFFFF~","~~FFF~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~FFF~~","~FFFFF~","FFCCCFF","FFCCCFF","FFCCCFF","~FFFFF~","~~FFF~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~~~~~~","~~CCC~~","~C~~~C~","~C~~~C~","~C~~~C~","~~CCC~~","~~~~~~~")
                .aisle("~~~~~~~","~~~~~~~","~~CCC~~","~~CCC~~","~~CCC~~","~~~~~~~","~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
               <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("       ","       ","  FFF  ","       ","       ","  FFF  ","       ","       ","  FFF  ","       ","       ","       ")
                .aisle("  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  ","       ")
                .aisle(" CCCCC "," C   X ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","  CCC  ")
                .aisle(" SCCCC "," C   E ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","  CCC  ")
                .aisle(" CCCCC "," C   L ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","FFCCCFF"," C   C "," C   C ","  CCC  ")
                .aisle("  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  "," FFFFF ","  CCC  ","  CCC  ","       ")
                .aisle("       ","       ","  FFF  ","       ","       ","  FFF  ","       ","       ","  FFF  ","       ","       ","       ")
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.east())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.east())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[1], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(2)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



vis_breaker.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:heavyoilresidues>*1000)
    .fluidOutputs(<liquid:fractionatedoil>*600,<liquid:desaltedoil>*400)
    .duration(250)
    .EUt(80)
    .buildAndRegister();

vis_breaker.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:fuel_oil>*1000)
    .fluidOutputs(<liquid:heavyoilresidues>*400)
    .outputs(<contenttweaker:stackwax>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();