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

var loc = "rocket_one";
var meta = 10060;
val rocket_one = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~~~~~","~T~T~","~~T~~","~T~T~","~~~~~")
                .aisle("~~~~~","~R~R~","~~R~~","~R~R~","~~~~~")
                .aisle("~~~~~","~CCC~","~CCC~","~CSC~","~~~~~")
                .aisle("~~F~~","~CCC~","FCCCF","~CCC~","~~F~~")
                .aisle("~~~~~","~CFC~","~FCF~","~CFC~","~~~~~")
                .aisle("~~~~~","~CCC~","~CQC~","~CCC~","~~~~~")
                .aisle("~~~~~","~~C~~","~C~C~","~~G~~","~~~~~")
                .aisle("~~~~~","~~C~~","~G~G~","~~G~~","~~~~~")
                .aisle("~~~~~","~~C~~","~COC~","~~G~~","~~~~~")
                .aisle("~~~~~","~~~~~","~~C~~","~~~~~","~~~~~")
                .aisle("~~~~~","~~~~~","~~C~~","~~~~~","~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <blockstate:contenttweaker:protective_outer_wall>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("O", <blockstate:contenttweaker:guidance_system>)
                .where("G", <blockstate:extrautils2:decorativeglass>)
                .where("Q", <blockstate:contenttweaker:rocket_equipment>)
                .where("F", <blockstate:contenttweaker:stabilization_fin>)
                .where("T", <blockstate:contenttweaker:rocket_thruster>)
                .where("R", <blockstate:contenttweaker:t1_rocket_engine>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("     ","     ","     ","  F  ","     ","     ","     ","     ","     ","     ","     ")
                .aisle(" T T "," R R "," CCC "," CCC "," CFC "," CCC ","  C  ","  G  ","  C  ","     ","     ")
                .aisle("  T  ","  R  "," SCE ","FCCCF"," FCF "," CQC "," G C "," G C "," GOC ","  C  ","  C  ")
                .aisle(" T T "," R R "," CCC "," CCC "," CFC "," CCC ","  C  ","  G  ","  C  ","     ","     ")
                .aisle("     ","     ","     ","  F  ","     ","     ","     ","     ","     ","     ","     ")
                .where("C", <blockstate:contenttweaker:protective_outer_wall>)
                .where("S", IBlockInfo.controller(loc))
                .where("O", <blockstate:contenttweaker:guidance_system>)
                .where("Q", <blockstate:contenttweaker:rocket_equipment>)
                .where("G", <blockstate:extrautils2:decorativeglass>)
                .where("F", <blockstate:contenttweaker:stabilization_fin>)
                .where("T", <blockstate:contenttweaker:rocket_thruster>)
                .where("R", <blockstate:contenttweaker:t1_rocket_engine>)
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
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/protective_outer_wall"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

rocket_one.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:researchpapermoon>)
    .fluidInputs(<liquid:rocket_fuel>*1000)
    .outputs(<contenttweaker:moon>)
    .duration(20)
    .EUt(120)
    .buildAndRegister();
