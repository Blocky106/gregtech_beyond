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


var loc = "black_hole_compressor";
var meta = 10021;
val black_hole_compressor = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~DFD~","DCCCD","FCCCF","DCCCD","~DSD~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~GGG~","G~~~G","G~O~G","G~~~G","~GGG~")
                .aisle("~DFD~","DCCCD","FCCCF","DCCCD","~DFD~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 10)
                .whereOr("C", 
                <metastate:contenttweaker:quantumcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:contenttweaker:fieldgeneratorcasing>)
                .where("D", <metastate:contenttweaker:dimensionalcasing>)
                .where("O", <metastate:contenttweaker:coil>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" DFD "," GGG "," GGG "," GGG "," DFD ")
                .aisle("DCCCD","G   G","G   G","G   G","DCCCD")
                .aisle("SCCCD","G O G","G O G","G O G","DCCCD")
                .aisle("DCCCD","G   G","G   G","G   G","DCCCD")
                .aisle(" DFD "," GGG "," GGG "," GGG "," DFD ")
                .where("D", <metastate:contenttweaker:dimensionalcasing>)
                .where("F", <metastate:contenttweaker:fieldgeneratorcasing>)
                .where("G", <metastate:contenttweaker:quantumglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:quantumcasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(1)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/quantumcasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal_block>*64)
    .outputs(<extendedcrafting:singularity>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:iron_block>*64)
    .outputs(<extendedcrafting:singularity:1>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:lapis_block>*64)
    .outputs(<extendedcrafting:singularity:2>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:redstone_block>*64)
    .outputs(<extendedcrafting:singularity:3>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:gold_block>*64)
    .outputs(<extendedcrafting:singularity:5>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:emerald_block>*64)
    .outputs(<extendedcrafting:singularity:7>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<minecraft:diamond_block>*64)
    .outputs(<extendedcrafting:singularity:6>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_0:1>*64)
    .outputs(<extendedcrafting:singularity:16>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_33:11>*64)
    .outputs(<extendedcrafting:singularity:48>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_33:4>*64)
    .outputs(<extendedcrafting:singularity:49>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_1:2>*64)
    .outputs(<extendedcrafting:singularity:17>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_4:7>*64)
    .outputs(<extendedcrafting:singularity:18>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_60:3>*64)
    .outputs(<extendedcrafting:singularity:50>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_32:6>*64)
    .outputs(<extendedcrafting:singularity:64>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_5:15>*64)
    .outputs(<extendedcrafting:singularity:19>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_1:1>*64)
    .outputs(<extendedcrafting:singularity:65>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<tconstruct:metal:2>*64)
    .outputs(<extendedcrafting:singularity:66>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_5:14>*64)
    .outputs(<extendedcrafting:singularity:21>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_4:15>*64)
    .outputs(<extendedcrafting:singularity:20>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_3:14>*64)
    .outputs(<extendedcrafting:singularity:22>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_3:3>*64)
    .outputs(<extendedcrafting:singularity:34>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_2>*64)
    .outputs(<extendedcrafting:singularity:35>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_1>*64)
    .outputs(<extendedcrafting:singularity:33>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_51:6>*64)
    .outputs(<extendedcrafting:singularity:32>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_4:8>*64)
    .outputs(<extendedcrafting:singularity:31>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_4:10>*64)
    .outputs(<extendedcrafting:singularity:30>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<thaumadditions:mithrillium_block>*64)
    .outputs(<extendedcrafting:singularity:29>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_7:14>*64)
    .outputs(<extendedcrafting:singularity:28>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_7>*64)
    .outputs(<extendedcrafting:singularity:27>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_2:12>*64)
    .outputs(<extendedcrafting:singularity:25>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_2:3>*64)
    .outputs(<extendedcrafting:singularity:23>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();

black_hole_compressor.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_11:8>*64)
    .outputs(<extendedcrafting:singularity:24>)
    .duration(200)
    .EUt(8000000)
    .buildAndRegister();