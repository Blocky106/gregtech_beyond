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


var loc = "digester";
var meta = 10030;
val digester = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~CCCCC~","CHHHHHC","CHHHHHC","CHHHHHC","CHHHHHC","CHHHHHC","~CCSCC~")
                .aisle("~C~~~C~","CHGGGHC","~GTTTG~","~GT TG~","~GTTTG~","CHGGGHC","~C~~~C~")
                .aisle("~C~~~C~","CHGGGHC","~GTTTG~","~GT TG~","~GTTTG~","CHGGGHC","~C~~~C~")
                .aisle("~~~~~~~","~~HHH~~","~HTTTH~","~HT TH~","~HTTTH~","~~HHH~~","~~~~~~~")
                .aisle("~~~~~~~","~~~~~~~","~~HHH~~","~~HHH~~","~~HHH~~","~~~~~~~","~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:7>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("T", <metastate:gregtech:wire_coil:3>)
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
" CCCCC ",
" C   C ",
" C   C ", 
"       ",
"       ")
                .aisle(
"CHHHHHC",
"CHGGGHC",
"CHGGGHC", 
"  HHH  ",
"       ")
                .aisle(
"CHHHHHC",
" GTTTG ",
" GTTTG ", 
" HTTTH ",
"  HHH  ")
                .aisle(
"SHHHHHE",
" GT TG ",
" GT TG ", 
" HT TH ",
"  HHH  ")
                .aisle(
"CHHHHHC",
" GTTTG ",
" GTTTG ", 
" HTTTH ",
"  HHH  ")
                .aisle(
"CHHHHHC",
"CHGGGHC",
"CHGGGHC", 
"  HHH  ",
"       ")
                .aisle(
" CCCCC ",
" C   C ",
" C   C ", 
"       ",
"       ")
                .where("T", <metastate:gregtech:wire_coil:3>)
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gregtech:metal_casing:7>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_robust_tungstensteel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

digester.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32083>)
    .fluidInputs(<liquid:nitric_acid> * 1000)
    .fluidOutputs(<liquid:muddybastnasitesolution>*1000)
    .outputs(<gregtech:meta_item_1:2159>)
    .EUt(2000)
    .duration(280)
    .buildAndRegister();

digester.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:5281>)
    .fluidInputs(<liquid:nitric_acid> * 1000)
    .fluidOutputs(<liquid:muddy_monazite_solution>*1000)
    .outputs(<gregtech:meta_item_1:2159>)
    .EUt(2000)
    .duration(280)
    .buildAndRegister();

digester.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:mithril_fluoride>*1000)
    .inputs(<gregtech:meta_item_1:2036>)
    .outputs(<gregtech:meta_item_1:2774>,<gtadditions:ga_dust:32196>*2)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

digester.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32205>)
    .outputs(<gtadditions:ga_dust:32206>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();