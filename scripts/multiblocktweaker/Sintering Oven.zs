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


var loc = "sintering_oven";
var meta = 10013;
val sintering_oven = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCC","FFF","~~~","FFF","~~~","FFF","CCC")
                .aisle("CCC","FAF","~A~","FAF","~A~","FAF","CSC")
                .aisle("CCC","FFF","~~~","FFF","~~~","FFF","CCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:basic_structural_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"CF F FC",
"CF F FC",
"CF F FC")
                .aisle(
"CF F FC",
"SAAAAAC",
"EF F FC")
                .aisle(
"CF F FC",
"CF F FC",
"CF F FC")
                .where("F", <metastate:gregtech:frame_steel>)
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .where("C", <metastate:contenttweaker:basic_structural_casing>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.west())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(1)
                        .maxOutputs(1)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/basic_structural_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

sintering_oven.recipeMap.recipeBuilder()
    .inputs(<contenttweaker:bitominousresidue>)
    .outputs(<thermalfoundation:material:892>)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

sintering_oven.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:14184>)
    .fluidInputs(<liquid:tetrafluoroethylene>*1000)
    .fluidOutputs(<liquid:hexafluoropropylene>*1000)
    .duration(200)
    .EUt(24)
    .buildAndRegister();

sintering_oven.recipeMap.recipeBuilder()
    .inputs(<nuclearcraft:alloy:14>)
    .outputs(<contenttweaker:cruicible_mold>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .EUt(80)
    .duration(90)
    .buildAndRegister();

sintering_oven.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:graphite>*1296,<liquid:steel>*288)
    .outputs(<contenttweaker:graphite_cruicible>)
    .notConsumable(<contenttweaker:cruicible_mold>)
    .EUt(180)
    .duration(240)
    .buildAndRegister();

sintering_oven.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:silver>*576,<liquid:oxygen>*1000)
    .notConsumable(<gregtech:meta_item_1:32351>)
    .outputs(<contenttweaker:silver_electrode>)
    .inputs(<gregtech:meta_item_1:14184>)
    .duration(200)
    .EUt(1299)
    .buildAndRegister();