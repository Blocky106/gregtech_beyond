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


var loc = "combustion_generator";
var meta = 10033;
val combustion_generator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~~~~~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~~~~~")
                .aisle(
                    "CCCCC",
                    "C~~~C",
                    "~HHH~",
                    "C~~~C",
                    "CCSCC")
                .aisle(
                    "CCCCC",
                    "~HHH~",
                    "~H~H~",
                    "~HHH~",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "C~~~C",
                    "~HHH~",
                    "C~~~C",
                    "CCCCC")
                .aisle(
                    "~~~~~",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "~~~~~")
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
                .where("H", <metastate:gregtech:metal_casing:2>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    " CCC",
                    "CC CC",
                    "C   C",
                    "C   C",
                    "CC CC",
                    " CCC")
                .aisle(
                    " CCC ",
                    "C H C",
                    "CHHHC",
                    "C H C",
                    " CCC ")
                .aisle(
                    " CCC ",
                    "S H E",
                    "CH HC",
                    "C H C",
                    " CCC ")
                .aisle(
                    " CCC ",
                    "C H C",
                    "CHHHC",
                    "C H C",
                    " CCC ")
                .aisle(
                    " CCC",
                    "CC CC",
                    "C   C",
                    "C   C",
                    "CC CC",
                    " CCC")
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_solid_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

#RecipeBuilder.newBuilder("combustion1", "combustion", 10) .addEnergyPerTickOutput(1000000) .addFluidInput(<liquid:high_octane>*1000) .build();
#RecipeBuilder.newBuilder("combustion2", "combustion", 10) .addEnergyPerTickOutput(270000) .addFluidInput(<liquid:gasoline>*1000) .build();
#RecipeBuilder.newBuilder("combustion3", "combustion", 10) .addEnergyPerTickOutput(80000) .addFluidInput(<liquid:butanol>*1000) .build();
#RecipeBuilder.newBuilder("combustion4", "combustion", 10) .addEnergyPerTickOutput(64000) .addFluidInput(<liquid:bio_diesel>*1000) .build();
#RecipeBuilder.newBuilder("combustion5", "combustion", 10) .addEnergyPerTickOutput(61000) .addFluidInput(<liquid:light_fuel>*1000) .build();
#RecipeBuilder.newBuilder("combustion6", "combustion", 10) .addEnergyPerTickOutput(59000) .addFluidInput(<liquid:ethanol>*1000) .build();
#RecipeBuilder.newBuilder("combustion7", "combustion", 10) .addEnergyPerTickOutput(20000) .addFluidInput(<liquid:methanol>*1000) .build();
#RecipeBuilder.newBuilder("combustion8", "combustion", 10) .addEnergyPerTickOutput(16000) .addFluidInput(<liquid:octane>*1000) .build();
#RecipeBuilder.newBuilder("combustion9", "combustion", 10) .addEnergyPerTickOutput(8000) .addFluidInput(<liquid:sulfuric_light_fuel>*1000) .build();
#RecipeBuilder.newBuilder("combustion10", "combustion", 10) .addEnergyPerTickOutput(4000) .addFluidInput(<liquid:oil>*1000) .build();
#RecipeBuilder.newBuilder("combustion11", "combustion", 10) .addEnergyPerTickOutput(1600) .addFluidInput(<liquid:biomass>*1000) .build();
#RecipeBuilder.newBuilder("combustion12", "combustion", 10) .addEnergyPerTickOutput(1600) .addFluidInput(<liquid:creosote>*1000) .build();
#RecipeBuilder.newBuilder("combustion13", "combustion", 10) .addEnergyPerTickOutput(400) .addFluidInput(<liquid:fish_oil>*1000) .build();
#RecipeBuilder.newBuilder("combustion14", "combustion", 10) .addEnergyPerTickOutput(900000) .addFluidInput(<liquid:jetfuel>*1000) .build();
#RecipeBuilder.newBuilder("combustion15", "combustion", 10) .addEnergyPerTickOutput(400000) .addFluidInput(<liquid:ethanolgasoline>*1000) .build();



