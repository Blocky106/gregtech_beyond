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


var loc = "vacuum_distillation_tower";
var meta = 10014;
val vacuum_distillation_tower = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "~CCCCC~",
                    "CCCPCCC",
                    "CCCPCCC",
                    "CPPPPPC",
                    "CCCPCCC",
                    "CCCPCCC",
                    "~CCSCC~")
                .aisle(
                    "~C~~~C~",
                    "CCF~FCC",
                    "~F~~~F~",
                    "~~~P~~~",
                    "~F~~~F~",
                    "CCF~FCC",
                    "~C~~~C~")
                .aisle(
                    "~~~~~~~",
                    "~FF~FF~",
                    "~F~~~F~",
                    "~~~P~~~",
                    "~F~~~F~",
                    "~FF~FF~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~F~~~F~",
                    "~~HHH~~",
                    "~~HHH~~",
                    "~~HHH~~",
                    "~F~~~F~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~FHHHF~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~FHHHF~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~FHHHF~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~FHHHF~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~FHHHF~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~FHHHF~",
                    "~~~~~~~")
                .aisle(
                    "~~CCC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "C~~~~~C",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CCC~~")
                .aisle(
                    "~~CCC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "C~~~~~C",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CCC~~")
                .aisle(
                    "~~CCC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "C~~~~~C",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CCC~~")
                .aisle(
                    "~~CCC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "C~~~~~C",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CCC~~")
                .aisle(
                    "~~CCC~~",
                    "~C~~~C~",
                    "C~~~~~C",
                    "C~~~~~C",
                    "C~~~~~C",
                    "~C~~~C~",
                    "~~CCC~~")
                .aisle(
                    "~~~~~~~",
                    "~~HHH~~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~~HHH~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~HHH~~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~~HHH~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~HHH~~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~H~~~H~",
                    "~~HHH~~",
                    "~~~~~~~")
                .aisle(
                    "~~~~~~~",
                    "~~~~~~~",
                    "~~HHH~~",
                    "~~HHH~~",
                    "~~HHH~~",
                    "~~~~~~~",
                    "~~~~~~~")

                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_blue_steel>)
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                
                
                                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "~CCCCC~",
                    "~C   C~",
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "       ",
                    "       ",
                    "       ",
                    "       ")
                .aisle(
                    "CCCPCCC",
                    "CCF FCC",
                    " FF FF ",
                    " F   F ",
                    " FHHHF ",
                    " FHHHF ",
                    " FHHHF ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    "  HHH  ",
                    "  HHH  ",
                    "  HHH  ",
                    "       ")
                .aisle(
                    "CCCPCCC",
                    " F   F ",
                    " F   F ",
                    "  HHH  ",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "  HHH  ")
                .aisle(
                    "SPPPPPE",
                    "   P   ",
                    "   P   ",
                    "  HHH  ",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "  HHH  ")
                .aisle(
                    "CCCPCCC",
                    " F   F ",
                    " F   F ",
                    "  HHH  ",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    "C     C",
                    " H   H ",
                    " H   H ",
                    " H   H ",
                    "  HHH  ")

                .aisle(
                    "CCCPCCC",
                    "CCF FCC",
                    " FF FF ",
                    " F   F ",
                    " FHHHF ",
                    " FHHHF ",
                    " FHHHF ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    " C   C ",
                    "  HHH  ",
                    "  HHH  ",
                    "  HHH  ",
                    "       ")
                .aisle(
                    "~CCCCC~",
                    "~C   C~",
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "       ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "  CCC  ",
                    "       ",
                    "       ",
                    "       ",
                    "       ")
                .where("H", <metastate:gregtech:metal_casing:2>)
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_blue_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(5)
                        .maxOutputs(3)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/machine_casing_clean_stainless_steel"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



vacuum_distillation_tower.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_oil_residues>*1000)
    .outputs(<contenttweaker:bitominousresidue>)
    .duration(200)
    .EUt(240)
    .fluidOutputs(<liquid:lubricant>*400,<liquid:sulfuric_fuel_oil>*200,<liquid:sulfuric_diesel>*200,<liquid:sulfuric_kerosene>*100,<liquid:sulfuric_naphtha>*100)
    .buildAndRegister();

vacuum_distillation_tower.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:oilgas>*600)
    .fluidOutputs(<liquid:oil>*400,<liquid:tar>*1000)
    .duration(80)
    .EUt(320)
    .buildAndRegister();

vacuum_distillation_tower.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:tar>*600)
    .fluidOutputs(<liquid:vacuumflashedtar>*600)
    .duration(80)
    .EUt(320)
    .buildAndRegister();

vacuum_distillation_tower.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2012>)
    .outputs(<gtadditions:ga_dust:32184>)
    .duration(1200)
    .EUt(800)
    .buildAndRegister();