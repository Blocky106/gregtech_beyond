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

var loc = "primitive_blast_furnace";
var meta = 10119;
val primitive_blast_furnace = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCC~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~CCC~")
                .aisle(
                    "~~C~~",
                    "~C~C~",
                    "C~~~C",
                    "~C~C~",
                    "~~S~~")
                .aisle(
                    "~~C~~",
                    "~CCC~",
                    "CC~CC",
                    "~CCC~",
                    "~~C~~")
                .aisle(
                    "~~~~~",
                    "~CCC~",
                    "~C~C~",
                    "~CCC~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~C~~",
                    "~C~C~",
                    "~~C~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~C~~",
                    "~C~C~",
                    "~~C~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~C~~",
                    "~C~C~",
                    "~~C~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~C~~",
                    "~C~C~",
                    "~~C~~",
                    "~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 60)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:1>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.EXPORT_ITEMS
                ))
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC ","  I  ","  C  ","     ","     ","     ","     ","     ")
                .aisle("CCCCC"," C C "," CCC "," CCC ","  C  ","  C  ","  C  ","  C  ")
                .aisle("CCCCC","S   C","CC CC"," C C "," C C "," C C "," C C "," C C ")
                .aisle("CCCCC"," C C "," CCC "," CCC ","  C  ","  C  ","  C  ","  C  ")
                .aisle(" CCC ","  O  ","  C  ","     ","     ","     ","     ","     ")
                .where("C", <metastate:gregtech:metal_casing:1>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[0], IFacing.north())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[0], IFacing.south())
                .where("S", IBlockInfo.controller(loc))
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(3)
                        .maxFluidOutputs(2)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;
primitive_blast_furnace.noEnergy = true;
       

var CarbonSource as IItemStack[] = [
<minecraft:coal>,
<minecraft:coal:1>,
<gregtech:meta_item_1:2101>,
<gregtech:meta_item_1:2106>,
<gregtech:meta_item_1:2211>,
<gregtech:meta_item_1:2357>,
];

for i in CarbonSource {

primitive_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10197>, i)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:89>)
    .duration(1000)
    .buildAndRegister();

primitive_blast_furnace.recipeMap.recipeBuilder()
    .inputs(<minecraft:iron_ingot>, i)
    .outputs(<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:89>)
    .duration(500)
    .buildAndRegister();

}
