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
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
import mods.gregtech.recipe.IRecipeLogic;

var loc = "rocket_four";
var meta = 10065;
val rocket_four = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~~~~~","~T~T~","~~T~~","~T~T~","~~~~~")
                .aisle("~~~~~","~R~R~","~~R~~","~R~R~","~~~~~")
                .aisle("~~~~~","~CCC~","~CCC~","~CSC~","~~~~~")
                .aisle("~~F~~","~CCC~","FCCCF","~CCC~","~~F~~")
                .aisle("~~F~~","~CCC~","FCCCF","~CCC~","~~F~~")
                .aisle("~~~~~","~CFC~","~FCF~","~CFC~","~~~~~")
                .aisle("~~~~~","~CCC~","~CQC~","~CCC~","~~~~~")
                .aisle("~~~~~","~CCC~","~C~C~","~CCC~","~~~~~")
                .aisle("~~~~~","~CCC~","~C~C~","~CCC~","~~~~~")
                .aisle("~~~~~","~~C~~","~C~C~","~~C~~","~~~~~")
                .aisle("~~~~~","~~C~~","~C~C~","~~C~~","~~~~~")
                .aisle("~~~~~","~~C~~","~COC~","~~C~~","~~~~~")
                .aisle("~~~~~","~~~~~","~~C~~","~~~~~","~~~~~")
                .aisle("~~~~~","~~~~~","~~C~~","~~~~~","~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <blockstate:contenttweaker:extreme_protective_outer_wall>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("O", <blockstate:contenttweaker:guidance_system>)
                .where("Q", <blockstate:contenttweaker:rocket_equipment>)
                .where("F", <blockstate:contenttweaker:advanced_stabilization_fin>)
                .where("T", <blockstate:contenttweaker:extreme_rocket_thruster>)
                .where("R", <blockstate:contenttweaker:t4_rocket_engine>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("     ","     ","     ","  F  ","  F  ","     ","     ","     ","     ","     ","     ","     ","     ","     ")
                .aisle(" T T "," R R "," CCC "," CCC "," CCC "," CFC "," CCC "," CCC "," CCC ","  C  ","  C  ","  C  ","     ","     ")
                .aisle("  T  ","  R  "," SCE ","FCCCF","FCCCF"," FCF "," CQC "," C C "," C C "," C C "," C C "," COC ","  C  ","  C  ")
                .aisle(" T T "," R R "," CCC "," CCC "," CCC "," CFC "," CCC "," CCC "," CCC ","  C  ","  C  ","  C  ","     ","     ")
                .aisle("     ","     ","     ","  F  ","  F  ","     ","     ","     ","     ","     ","     ","     ","     ","     ")
                .where("C", <blockstate:contenttweaker:extreme_protective_outer_wall>)
                .where("S", IBlockInfo.controller(loc))
                .where("O", <blockstate:contenttweaker:guidance_system>)
                .where("Q", <blockstate:contenttweaker:rocket_equipment>)
                .where("F", <blockstate:contenttweaker:advanced_stabilization_fin>)
                .where("T", <blockstate:contenttweaker:extreme_rocket_thruster>)
                .where("R", <blockstate:contenttweaker:t4_rocket_engine>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[3], IFacing.east())
                .build())
.withRecipeMap(
            FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/advanced_outer_protective_wall"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

