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


var loc = "drone_pad";
var meta = 10062;
val drone_pad = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("~CCC~")
                .aisle("CFFFC")
                .aisle("CFFFC")
                .aisle("CFFFC")
                .aisle("~CSC~")
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
                .where("F", <metastate:contenttweaker:drone_pad>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(" CCC ")
                .aisle("CFFFC")
                .aisle("SFFFE")
                .aisle("CFFFC")
                .aisle(" CCC ")
                .where("F", <metastate:contenttweaker:drone_pad>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
            FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxOutputs(4)
                        .maxFluidOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;


drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .chancedOutput(<minecraft:mutton>*2, 5000, 0)
    .chancedOutput(<minecraft:wool>*2, 5000, 0)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .chancedOutput(<minecraft:leather>*2, 5000, 0)
    .chancedOutput(<minecraft:beef>*2, 5000, 0)
    .chancedOutput(<contenttweaker:pancreas>, 1000, 0)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .chancedOutput(<minecraft:bone>*2, 5000, 0)
    .chancedOutput(<minecraft:rotten_flesh>*2, 5000, 0)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .chancedOutput(<minecraft:chicken>*2, 5000, 0)
    .chancedOutput(<minecraft:feather>*2, 5000, 0)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .chancedOutput(<minecraft:rabbit>*2, 5000, 0)
    .chancedOutput(<minecraft:rabbit_hide>*2, 5000, 0)
    .chancedOutput(<minecraft:rabbit_foot>*2, 5000, 0)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

drone_pad.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:drone>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .fluidOutputs(<liquid:milk>*1000,<liquid:italian_buffalo_milk>*1000)
    .duration(400)
    .EUt(12)
    .buildAndRegister();


