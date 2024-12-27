
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


var loc = "sonicator";
var meta = 10112;
val sonicator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "XXXXX",
                    "XXXXX",
                    "XXXXX",
                    "XXXXX",
                    "XXXXX",
                    "~XXX~",
                    "~XXX~")
                .aisle(
                    "XXXXX",
                    "XCCCX",
                    "XCPCX",
                    "XCCCX",
                    "XXXXX",
                    "~XPX~",
                    "~XSX~")
                .aisle(
                    "XXXXX",
                    "XGGGX",
                    "XGPGX",
                    "XGGGX",
                    "XXXXX",
                    "~XPX~",
                    "~XXX~")
                .aisle(
                    "~~~~~",
                    "~~~~~",
                    "~~P~~",
                    "~~P~~",
                    "~~P~~",
                    "~~P~~",
                    "~~~~~")  
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("X", 
                <metastate:contenttweaker:sonicator_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("G", <metastate:contenttweaker:ultrahighresistanceglass>)
                .where("C", <metastate:contenttweaker:electrolyticcell>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("  XXXXX","  XXXXX","  XXXXX","       ")
                .aisle("XXXXXXX","XXXCCCX","XXXXXXX","       ")
                .aisle("XXXXXXX","SPXCPCE","XPXGPGX","  PPPP ")
                .aisle("XXXXXXX","XXXCCCX","XXXXXXX","       ")
                .aisle("  XXXXX","  XXXXX","  XXXXX","       ")
                .where("P", <metastate:gregtech:boiler_casing:2>)
                .where("X", <metastate:contenttweaker:sonicator_casing>)
                .where("G", <metastate:contenttweaker:ultrahighresistanceglass>)
                .where("C", <metastate:contenttweaker:electrolyticcell>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(6)
                        .maxFluidInputs(4)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/sonicator_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;


sonicator.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:ethanol>*2000)
    .inputs(<gtadditions:ga_dust:32232>*2,<gtadditions:ga_dust:32233>*2,<contenttweaker:thin_nylon_sheet>)
    .fluidOutputs(<liquid:ruthenium_platinum_colloid>*1000)
    .duration(400)
    .EUt(137000)
    .buildAndRegister();