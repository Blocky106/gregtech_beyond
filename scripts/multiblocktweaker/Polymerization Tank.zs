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


var loc = "polymerization_tank";
var meta = 10010;
val polymerization_tank = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("F~F","~~~","F~F")
                .aisle("CCC","CCC","CSC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","C~C","CCC")
                .aisle("CCC","CCC","CCC")

                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 26)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:4>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_steel>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
"F F",
"CCC",
"CCC",
"CCC",
"CCC")
                .aisle(
"   ",
"SCE",
"C C",
"C C",
"CCC")
                .aisle(
"F F",
"CCC",
"CCC",
"CCC",
"CCC")
                                   
                .where("C", <metastate:gregtech:metal_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("F", <metastate:gregtech:frame_steel>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[2], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(4)
                        .maxFluidOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:vinyl_acetate>*144,<liquid:hydrogen_peroxide>*1000)
    .fluidOutputs(<liquid:polyvinyl_acetate_solution>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidInputs(<liquid:vinyl_acetate>*144,<liquid:hydrogen_peroxide>*2000)
    .fluidOutputs(<liquid:polyvinyl_acetate_solution>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidInputs(<liquid:vinyl_acetate>*144,<liquid:hydrogen_peroxide>*3000)
    .fluidOutputs(<liquid:polyvinyl_acetate_solution>*3000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:vinyl_acetate>*144,<liquid:hydrogen_peroxide>*4000)
    .fluidOutputs(<liquid:polyvinyl_acetate_solution>*4000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:vinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*1000)
    .fluidOutputs(<liquid:polyvinyl_chloride_solution>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidInputs(<liquid:vinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*2000)
    .fluidOutputs(<liquid:polyvinyl_chloride_solution>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidInputs(<liquid:vinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*3000)
    .fluidOutputs(<liquid:polyvinyl_chloride_solution>*3000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:vinyl_chloride>*144,<liquid:high_purity_cadmium_solution>*4000)
    .fluidOutputs(<liquid:polyvinyl_chloride_solution>*4000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32265>)
    .fluidInputs(<liquid:styrene_suspension>*1000)
    .fluidOutputs(<liquid:polystyrene_suspension>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:ethylene>*144)
    .fluidOutputs(<liquid:plastic>*144)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidInputs(<liquid:ethylene>*144)
    .fluidOutputs(<liquid:plastic>*288)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidInputs(<liquid:ethylene>*144)
    .fluidOutputs(<liquid:plastic>*432)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:ethylene>*144)
    .fluidOutputs(<liquid:plastic>*576)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:impure_kapton_k_solution>*6000)
    .fluidOutputs(<liquid:kaptonk>*5000)
    .duration(200)
    .EUt(128)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:ethylene>*1000)
    .notConsumable(<liquid:alpha_linolenic_acid>)
    .fluidOutputs(<liquid:highly_strained_ethylene_prepolymer_foam>*1000)
    .duration(200)
    .EUt(640)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:highly_strained_ethylene_prepolymer_foam>*1000)
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidOutputs(<liquid:highly_strained_polyethylene>*1000)
    .duration(200)
    .EUt(640)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:plastic>*1000)
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidOutputs(<liquid:high_density_polyethylene>*1000)
    .duration(200)
    .EUt(25)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:plastic>*1000)
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidOutputs(<liquid:high_density_polyethylene>*1000)
    .duration(200)
    .EUt(25)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:high_density_polyethylene>*1000,<liquid:silane>*1000)
    .fluidOutputs(<liquid:cross_linked_polyethylene>*1000)
    .duration(200)
    .EUt(25)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidInputs(<liquid:propene>*1000)
    .inputs(<gregtech:meta_item_1:2848>)
    .fluidOutputs(<liquid:polypropelene_suspension>*1000)
    .duration(800)
    .EUt(120)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidInputs(<liquid:propene>*1000)
    .inputs(<gregtech:meta_item_1:2848>)
    .fluidOutputs(<liquid:polypropelene_suspension>*1000)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:propene>*1000)
    .inputs(<gregtech:meta_item_1:2848>)
    .fluidOutputs(<liquid:polypropelene_suspension>*1000)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .fluidInputs(<liquid:cyclopentene>*144,<liquid:titanium_tetrachloride>*1000)
    .fluidOutputs(<liquid:polycyclopentene_solution>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:cyclopentene>*144,<liquid:titanium_tetrachloride>*2000)
    .fluidOutputs(<liquid:polycyclopentene_solution>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32000>)
    .fluidInputs(<liquid:n-6-aminohexylsebacamide>*1000)
    .fluidOutputs(<liquid:nylon610>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:naphthalene_dicarboxaldehyde>*1000,<liquid:ammonium_persulfate>*1000)
    .fluidOutputs(<liquid:polyethylene_naphthalate_solution>*1000)
    .notConsumable(<gtadditions:ga_dust:32001>)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32232>)
    .fluidInputs(<liquid:glycidol_ether>*1000, <liquid:resin_enhancer>*1000)
    .fluidOutputs(<liquid:unrefined_epoxy_resin>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:tetrafluoroethylene>*1000, <liquid:ptfe_preparation_mixture>*1000)
    .notConsumable(<gtadditions:ga_dust:32001>)
    .fluidOutputs(<liquid:polytetrafluoroethylene>*2000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:benzimidazole>*1000, <liquid:pbi_preparation_mixture>*1000)
    .fluidOutputs(<liquid:impurepolybenzimidazolesolution>*2000)
	.notConsumable(<gtadditions:ga_dust:32002>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:32002>)
    .inputs(<gtadditions:ga_dust:116>)
    .fluidInputs(<liquid:methyl_methacrylate_emulsion>*1000)
    .fluidOutputs(<liquid:wet_pmma_emulsion>*1000)
    .duration(600)
    .EUt(2012)
    .buildAndRegister();

polymerization_tank.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:divinylbenzene>*1000,<liquid:benzoyl_chloride>*1000,<liquid:styrene>*1000)
    .notConsumable(<liquid:rock_salt_solution>)
    .fluidOutputs(<liquid:dowex_50_suspension>*1000)
    .duration(600)
    .EUt(2012)
    .buildAndRegister();