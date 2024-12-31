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


var loc = "primordial_forge";
var meta = 10008;
val primordial_forge = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCSCCC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CGGGGGC",
                    "G~~~~~G",
                    "G~FFF~G",
                    "G~F~F~G",
                    "G~FFF~G",
                    "G~~~~~G",
                    "CGGGGGC")
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:contenttweaker:computercasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 108)
                .where("F", <metastate:gtadditions:ga_fusion_casing:5>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCCCC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G     G",
                    "G     G",
                    "G     G",
                    "G     G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "CCCCCCC")
                .aisle(
                    "SCCCCCE",
                    "G F F G",
                    "G F F G",
                    "G F F G",
                    "G F F G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "G FFF G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "G     G",
                    "G     G",
                    "G     G",
                    "G     G",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CGGGGGC",
                    "CCCCCCC")
                .where("F", <metastate:gtadditions:ga_fusion_casing:5>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:computercasing>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(9)
                        .maxFluidOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/computercasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

primordial_forge.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:moltenfullerenesuperconductor>*1000,<liquid:proto_adamantium>*2000,<liquid:metastable_oganesson>*2000,<liquid:moltenborocarbide>*3000)
    .fluidOutputs(<liquid:uiv_superconductor_base>*3500)
    .duration(400)
    .EUt(100000)
    .buildAndRegister();

primordial_forge.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:superheavy_h_alloy>*2000,<liquid:moltenchargedcesiumceriumcobaltindium>*3000,<liquid:black_titanium>*3000,<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*6000)
    .fluidOutputs(<liquid:umv_superconductor_base>*7000)
    .duration(400)
    .EUt(100000)
    .buildAndRegister();

primordial_forge.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:moltenlegendarium>*5000,<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*12000,<liquid:moltenactiniumsuperhydride>*5000,<liquid:moltenlanthanumfullerenenanotubes>*4000,<liquid:neutronium>*4000)
    .fluidOutputs(<liquid:uxv_superconductor_base>*15000)
    .duration(400)
    .EUt(100000)
    .buildAndRegister();

primordial_forge.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:moltenlegendarium>*4000,<liquid:pikyonium>*3000,<liquid:ultimate>*3500,<liquid:cosmic_neutronium>*2000,<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*24000,<liquid:periodicium>*12000)
    .fluidOutputs(<liquid:maxsuperconductorbase>*10000)
    .duration(400)
    .EUt(100000)
    .buildAndRegister();




