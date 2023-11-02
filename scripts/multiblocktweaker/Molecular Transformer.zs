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


var loc = "molecular_transformer";
var meta = 10001;
val dilution_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~PPP~",
                    "PFFFP",
                    "PFFFP",
                    "PFFFP",
                    "~PPP~")
                .aisle(
                    "~CCC~",
                    "C~~~C",
                    "C~~~C",
                    "C~~~C",
                    "~CSC~")
                .aisle(
                    "~PPP~",
                    "P~~~P",
                    "P~~~P",
                    "P~~~P",
                    "~PPP~")
                .aisle(
                    "~~P~~",
                    "~TTT~",
                    "PT~TP",
                    "~TTT~",
                    "~~P~~")
                .aisle(
                    "~~~~~",
                    "~TTT~",
                    "~T~T~",
                    "~TTT~",
                    "~~~~~")
                .aisle(
                    "~~P~~",
                    "~TTT~",
                    "PT~TP",
                    "~TTT~",
                    "~~P~~")
                .aisle(
                    "~PPP~",
                    "P~~~P",
                    "P~~~P",
                    "P~~~P",
                    "~PPP~")
                .aisle(
                    "~CCC~",
                    "C~~~C",
                    "C~~~C",
                    "C~~~C",
                    "~CCC~")
                .aisle(
                    "~PPP~",
                    "PFFFP",
                    "PFFFP",
                    "PFFFP",
                    "~PPP~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:9>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("T", <metastate:gtadditions:ga_heating_coil>)
                .where("P", <metastate:contenttweaker:particleprotectioncasing>)
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    " PPP ",
                    " CCC ",
                    " PPP ",
                    "  P  ",
                    "     ",
                    "  P  ",
                    " PPP ",
                    " CCC ",
                    " PPP ")
                .aisle(
                    "PFFFP",
                    "C   C",
                    "P   P",
                    " TTT ",
                    " TTT ",
                    " TTT ",
                    "P   P",
                    "C   C",
                    "PFFFP")
                .aisle(
                    "PFFFP",
                    "S   E",
                    "P   P",
                    "PTTTP",
                    " TTT ",
                    "PTTTP",
                    "P   P",
                    "C   C",
                    "PFFFP")
                .aisle(
                    "PFFFP",
                    "C   C",
                    "P   P",
                    " TTT ",
                    " TTT ",
                    " TTT ",
                    "P   P",
                    "C   C",
                    "PFFFP")
                .aisle(
                    " PPP ",
                    " CCC ",
                    " PPP ",
                    "  P  ",
                    "     ",
                    "  P  ",
                    " PPP ",
                    " CCC ",
                    " PPP ")
                .where("T", <metastate:gtadditions:ga_heating_coil>)
                .where("P", <metastate:contenttweaker:particleprotectioncasing>)
                .where("C", <metastate:gtadditions:ga_metal_casing_2:9>)
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/particleprotectioncasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;