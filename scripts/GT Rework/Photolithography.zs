import mods.forestry.Carpenter;
import mods.gregtech.recipe.PBFRecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import crafttweaker.item.IItemCondition;
import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gtadditions.recipe.Utils;






chemReactor.recipeBuilder()
    .fluidInputs(<liquid:redstone>*1000)
    .inputs(<gregtech:meta_item_1:2421>*32,<gtadditions:ga_meta_item:32425>)
    .outputs(<contenttweaker:nanopicw>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:redstone>*1000)
    .inputs(<gregtech:meta_item_1:2421>*32,<gtadditions:ga_meta_item:32425>)
    .outputs(<contenttweaker:nanopicw>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:novolacs_photoresist>*144)
    .inputs(<gtadditions:ga_meta_item:32530>)
    .outputs(<contenttweaker:treated_photocoated_hassium_wafer>)
    .duration(200)
    .EUt(90000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:uhpic_base_wafer>)
    .outputs(<contenttweaker:uhpic_base>*16)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32066>*2)
    .outputs(<gregtech:meta_item_1:2069>,<gregtech:meta_item_1:2139>)
    .duration(40)
    .EUt(12)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:barium_titanate_boule>)
    .outputs(<contenttweaker:barium_titanate_substrate_wafer>*16,<contenttweaker:barium_titanate_seed_crystal>)
    .duration(200)
    .EUt(1299)
    .fluidInputs(<liquid:extradistilledwater>*1000)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:silicon_carbide>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:silicon_carbide_vapor>*144)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:wired_substrate_wafer>)
    .fluidInputs(<liquid:liquid_xenon>*1000)
    .outputs(<contenttweaker:uhpic_base_wafer>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

engraver.recipeBuilder()
    .notConsumable(<contenttweaker:ram_lithography_mask>)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_ram_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

lengraver.recipeBuilder()
    .notConsumable(<contenttweaker:ram_lithography_mask>)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_ram_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:cable:968>*2,<contenttweaker:uhpic_base>,<gregtech:meta_item_1:32677>,<gregtech:meta_item_1:12145>,<gregtech:meta_item_1:12312>,<gregtech:meta_item_2:16307>)
    .fluidInputs(<liquid:naquadah_alloy>*1440)
    .outputs(<gtadditions:ga_meta_item:32424>)
    .duration(200)
    .EUt(12000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:raw_power_ic_wafer>)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32469>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:hot_nitrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:very_hot_nitrogen>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_ram_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_ram_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:raw_ram_wafer>)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32471>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:raw_cpu_wafer>)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32464>)
    .duration(80)
    .EUt(120)
    .buildAndRegister();

engraver.recipeBuilder()
    .notConsumable(<contenttweaker:cpu_lithography_mask>)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_cpu_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

lengraver.recipeBuilder()
    .notConsumable(<contenttweaker:cpu_lithography_mask>)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:engraved_cpu_wafer>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();


engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32440>)
	.notConsumable(<ore:craftingLensMagenta>)
	.outputs(<contenttweaker:ulpicwafer>)
    .duration(900)
    .EUt(120)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32440>)
	.notConsumable(<ore:craftingLensMagenta>)
	.outputs(<contenttweaker:ulpicwafer>)
	.duration(900)
    .EUt(120)
    .buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32441>)
	.notConsumable(<ore:craftingLensMagenta>)
	.outputs(<contenttweaker:ulpicwafer>*4)
	.duration(900)
    .EUt(120)
    .buildAndRegister();

lengraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32441>)
	.notConsumable(<ore:craftingLensMagenta>)
	.outputs(<contenttweaker:ulpicwafer>*4)
	.duration(900)
    .EUt(120)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<contenttweaker:ulpicwafer>)
	.outputs(<contenttweaker:ulpic>*6)
	.duration(900)
    .EUt(120)
    .buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32440>)
	.notConsumable(<ore:craftingLensOrange>)
	.outputs(<contenttweaker:lpicwafer>)
	.duration(900)
    .EUt(480)
    .buildAndRegister();

lengraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32440>)
	.notConsumable(<ore:craftingLensOrange>)
	.outputs(<contenttweaker:lpicwafer>)
	.duration(900)
    .EUt(480)
    .buildAndRegister();

engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32441>)
	.notConsumable(<ore:craftingLensOrange>)
	.outputs(<contenttweaker:lpicwafer>*4)
	.duration(900)
    .EUt(480)
    .buildAndRegister();

lengraver.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32441>)
	.notConsumable(<ore:craftingLensOrange>)
	.outputs(<contenttweaker:lpicwafer>*4)
	.duration(900)
    .EUt(480)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<contenttweaker:lpicwafer>)
	.outputs(<contenttweaker:lpic>*4)
	.duration(900)
    .EUt(480)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:hppicwafer>)
    .outputs(<contenttweaker:hppic>*2)
    .fluidInputs(<liquid:water>*90)
    .duration(48)
    .EUt(800)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:hppicwafer>)
    .outputs(<contenttweaker:hppic>*2)
    .fluidInputs(<liquid:distilled_water>*67)
    .duration(48)
    .EUt(600)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:hppicwafer>)
    .outputs(<contenttweaker:hppic>*2)
    .fluidInputs(<liquid:lubricant>*22)
    .duration(48)
    .EUt(400)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2421>*16,<gregtech:meta_item_1:2743>*2,<gregtech:meta_item_2:32465>)
    .fluidInputs(<liquid:plutonium>*200)
    .outputs(<contenttweaker:hppicwafer>)
    .duration(300)
    .EUt(9000)
    .buildAndRegister();

cluster_mill.recipeBuilder()
    .inputs(<contenttweaker:photopolymerplate>)
    .outputs(<gtadditions:ga_meta_item:32028>*16)
    .duration(80)
    .EUt(8000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:celasiliconboule>)
    .outputs(<contenttweaker:celauwafer>*16)
    .fluidInputs(<liquid:water>*1000)
    .duration(800)
    .EUt(90000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:celasiliconboule>)
    .outputs(<contenttweaker:celauwafer>*16)
    .fluidInputs(<liquid:distilled_water>*1000)
    .duration(600)
    .EUt(90000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:celasiliconboule>)
    .outputs(<contenttweaker:celauwafer>*16)
    .fluidInputs(<liquid:lubricant>*1000)
    .duration(400)
    .EUt(90000)
    .buildAndRegister();
    
chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:celauwafer>)
    .fluidInputs(<liquid:acetone>*1000)
    .outputs(<contenttweaker:fcelauwafer>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:fcelauwafer>)
    .fluidInputs(<liquid:methanol>*1000)
    .outputs(<contenttweaker:celawafer>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:celawafer>)
    .fluidInputs(<liquid:photopolymer_solution>*1000)
    .outputs(<contenttweaker:photogenallyenhancedwafer>)
    .fluidOutputs(<liquid:usedphotopolymersolution>*1000)
    .duration(800)
    .EUt(24000)
    .buildAndRegister();
    
fluidheater.recipeBuilder()
    .fluidInputs(<liquid:usedphotopolymersolution>*500)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:photopolymer_solution>*500)
    .duration(1000)
    .EUt(24000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12364>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:lithography_base_mask>)
    .duration(20)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:pic_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .outputs(<contenttweaker:cpu_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs(<contenttweaker:ram_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .outputs(<contenttweaker:single_josephson_junction_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .outputs(<contenttweaker:lpic_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 6}))
    .outputs(<contenttweaker:integrated_circuit_photolithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32471>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32471>*20],[],false);

engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_ram_wafer>).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_ram_wafer>*4).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_ram_wafer>*8).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_ram_wafer>*12).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_ram_wafer>*16).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_ram_wafer>*20).duration(20).EUt(12).buildAndRegister();

lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_ram_wafer>).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_ram_wafer>*4).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_ram_wafer>*8).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_ram_wafer>*12).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_ram_wafer>*16).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:ram_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_ram_wafer>*20).duration(20).EUt(12).buildAndRegister();


Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32469>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32469>*20],[],false);

engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<contenttweaker:polysilicon_wafer>).outputs(<contenttweaker:engraved_power_ic_wafer>).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<contenttweaker:polysilicon_wafer>).outputs(<contenttweaker:engraved_power_ic_wafer>*20).duration(20).EUt(12).buildAndRegister();


Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32464>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32464>*20],[],false);

engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_cpu_wafer>).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_cpu_wafer>*4).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_cpu_wafer>*8).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_cpu_wafer>*12).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_cpu_wafer>*16).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_cpu_wafer>*20).duration(20).EUt(12).buildAndRegister();

lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_cpu_wafer>).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_cpu_wafer>*4).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_cpu_wafer>*8).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_cpu_wafer>*12).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_cpu_wafer>*16).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:cpu_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_cpu_wafer>*20).duration(20).EUt(12).buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:very_hot_argon>*1000)
    .inputs(<contenttweaker:raw_high_power_ic_wafer>)
    .outputs(<gregtech:meta_item_2:32465>)
    .fluidOutputs(<liquid:argon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_2:32465>],[],false);
Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_2:32465>],[],false);



cvd_unit_s.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2204>*3)
    .fluidInputs(<liquid:graphene_oxidation_solution>*100)
    .outputs(<gtadditions:ga_dust:358>)
    .chancedOutput(<gtadditions:ga_dust:107>, 8000, 100)
    .duration(200)
    .EUt(2000)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<gtadditions:ga_dust:358>)
    .notConsumable(<contenttweaker:nickel_breeding_bed>)
    .fluidInputs(<liquid:methane>*1000)
    .outputs(<gtadditions:ga_dust:357>)
    .duration(200)
    .EUt(2000)
    .buildAndRegister();

recipes.addShaped(<gregtech:machine:10038>, [	[<ore:plateHsss>, <gregtech:meta_item_1:32693>, <ore:plateHsss>], 	[<ore:circuitMaster>, <gregtech:machine:504>, <ore:circuitMaster>], 	[<ore:plateHsss>, <gregtech:meta_item_1:32673>, <ore:plateHsss>]]);

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_barium_titanate_substrate_wafer>,<gregtech:meta_item_1:2744>*2)
    .fluidInputs(<liquid:silicon_carbide_vapor>*144)
    .outputs(<contenttweaker:superconductor_coated_substrate_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

var PDopant as IItemStack[] = [
<gregtech:meta_item_1:2001>,
<gregtech:meta_item_1:2009>,
<gregtech:meta_item_1:2025>,
<gregtech:meta_item_1:2031>,
<gregtech:meta_item_1:2761>,
<gregtech:meta_item_1:2678>,
];

var NDopant as IItemStack[] = [
<gtadditions:ga_dust:32203>,
<gregtech:meta_item_1:2005>,
<gregtech:meta_item_1:2003>,
<gregtech:meta_item_1:2008>,
<gregtech:meta_item_1:2679>,
];

for i in NDopant {
for I in PDopant {

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_power_ic_wafer>,i,I)
    .outputs(<contenttweaker:raw_power_ic_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_ram_wafer>,i,I)
    .outputs(<contenttweaker:raw_ram_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_cpu_wafer>,i,I)
    .outputs(<contenttweaker:raw_cpu_wafer>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_ic_wafer>,i,I)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32463>)
    .duration(800)
    .EUt(1800)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_wafer>,i)
    .outputs(<contenttweaker:n_doped_silicon_dioxide_wafer>)
    .duration(800)
    .EUt(180)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:engraved_nanocpu_wafer>, i, I) 
    .fluidInputs(<liquid:very_hot_argon>*1000)
    .outputs(<contenttweaker:doped_nanocpu_wafer>)
    .fluidOutputs(<liquid:argon>*1000)
    .duration(200)
    .EUt(60)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:spinorial_memory_wafer>, i, I) 
    .outputs(<contenttweaker:doped_aram_wafer>)
    .duration(200)
    .EUt(600)
    .buildAndRegister();


	}
    }


cvd_unit_s.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2421>,<gtadditions:ga_dust:32210>,<gregtech:meta_item_2:32469>)
    .outputs(<contenttweaker:raw_high_power_ic_wafer>)
    .duration(400)
    .EUt(200)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*2000)
    .inputs(<gregtech:meta_item_2:32441>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>*2)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*4000)
    .inputs(<gregtech:meta_item_2:32442>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>*4)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*6000)
    .inputs(<gtadditions:ga_meta_item:32333>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>*6)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*12000)
    .inputs(<gregtech:meta_item_2:32334>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>*12)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*32000)
    .inputs(<gregtech:meta_item_2:32335>)
    .outputs(<contenttweaker:silicon_dioxide_wafer>*32)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .fluidInputs(<liquid:silane>*1000)
    .inputs(<contenttweaker:n_doped_silicon_dioxide_wafer>)
    .outputs(<contenttweaker:polysilicon_wafer>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32463>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*20],[],false);


engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*4)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*8)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*12)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*16)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*20)    .duration(400).EUt(12).buildAndRegister();

lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*4)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*8)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*12)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*16)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*20)    .duration(400).EUt(12).buildAndRegister();

engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>)    .duration(400).EUt(480).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*4)    .duration(400).EUt(480).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*8)    .duration(400).EUt(480).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*12)    .duration(400).EUt(480).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*16)    .duration(400).EUt(480).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*20)    .duration(400).EUt(480).buildAndRegister();

lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>)    .duration(400).EUt(480).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*4)    .duration(400).EUt(480).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*8)    .duration(400).EUt(480).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*12)    .duration(400).EUt(480).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*16)    .duration(400).EUt(480).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:nanocpu_lithography_mask>)   .outputs(<contenttweaker:engraved_nanocpu_wafer>*20)    .duration(400).EUt(480).buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:doped_nanocpu_wafer>)
    .fluidInputs(<liquid:trichlorosilane>*1000)
    .outputs(<contenttweaker:gated_nanocpu_wafer>)
    .duration(499)
    .EUt(80)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:gated_nanocpu_wafer>)
    .fluidInputs(<liquid:trichlorosilane>*1000,<liquid:oxygen>*1000)
    .outputs(<contenttweaker:insulated_nanocpu_wafer>)
    .duration(499)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()    .inputs(<contenttweaker:insulated_nanocpu_wafer>)   .notConsumable(<ore:craftingLensRed>)    .outputs(<contenttweaker:trenched_insulated_nanocpu_wafer>)    .duration(200)    .EUt(12)    .buildAndRegister();
lengraver.recipeBuilder()    .inputs(<contenttweaker:insulated_nanocpu_wafer>)   .notConsumable(<ore:craftingLensRed>)    .outputs(<contenttweaker:trenched_insulated_nanocpu_wafer>)    .duration(200)    .EUt(12)    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:trenched_insulated_nanocpu_wafer>,<gregtech:meta_item_1:2018>)
    .outputs(<contenttweaker:unplanarized_nanocpu_wafer>)
    .duration(20)
    .EUt(900)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:unplanarized_nanocpu_wafer>)
    .fluidInputs(<liquid:diluted_sulfuric_acid>*1000)
    .outputs(<gregtech:meta_item_2:32467>)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_2:32467>], [], false);
Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_2:32467>], [], false);


chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:engraved_nand_wafer>)
    .fluidInputs(<liquid:diluted_sulfuric_acid>*1000)
    .outputs(<gregtech:meta_item_2:32466>)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:engraved_nor_wafer>)
    .fluidInputs(<liquid:diluted_sulfuric_acid>*1000)
    .outputs(<gregtech:meta_item_2:32468>)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcr, [<gregtech:meta_item_2:32467>], [], false);
Utils.removeRecipeByOutput(chemReactor, [<gregtech:meta_item_2:32467>], [], false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32463>*20],[],false);


engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*4)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*8)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*12)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*16)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*20)    .duration(400).EUt(12).buildAndRegister();

lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32440>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32441>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*4)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gregtech:meta_item_2:32442>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*8)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32333>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*12)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32334>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*16)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<gtadditions:ga_meta_item:32335>)    .notConsumable(<contenttweaker:integrated_circuit_photolithography_mask>)   .outputs(<contenttweaker:engraved_ic_wafer>*20)    .duration(400).EUt(12).buildAndRegister();

lengraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nor_photolithography_mask>)   .outputs(<contenttweaker:engraved_nor_wafer>)    .duration(400).EUt(12).buildAndRegister();
lengraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nand_photolithography_mask>)   .outputs(<contenttweaker:engraved_nand_wafer>)    .duration(400).EUt(12).buildAndRegister();

engraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nor_photolithography_mask>)   .outputs(<contenttweaker:engraved_nor_wafer>)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nand_photolithography_mask>)   .outputs(<contenttweaker:engraved_nand_wafer>)    .duration(400).EUt(12).buildAndRegister();


//ASOC chain

    //Chloronaquadic acid

chemReactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2307>)
    .fluidInputs(<liquid:very_hot_aqua_regia>*1000)
    .fluidOutputs(<liquid:chloronaquadic_acid>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Naquadah Dioxide

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:chloronaquadic_acid>*1000)
    .inputs(<gregtech:meta_item_1:2865>)
    .outputs(<gregtech:meta_item_1:2625>)
    .fluidOutputs(<liquid:salt_water>*1000 , <liquid:nitrogen_dioxide>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Naquadah Dioxide Seed Crystal

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:697>)
    .outputs(<contenttweaker:barium_titanate_seed_crystal>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<contenttweaker:nor_photolithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<contenttweaker:nand_photolithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:13309> , <gregtech:meta_item_1:15209>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:enriched_naquadah_photolithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

engraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nor_photolithography_mask>)   .outputs(<contenttweaker:engraved_nor_wafer>)    .duration(400).EUt(12).buildAndRegister();
engraver.recipeBuilder()    .inputs(<contenttweaker:nickel_nitride_wafer>)    .notConsumable(<contenttweaker:nand_photolithography_mask>)   .outputs(<contenttweaker:engraved_nand_wafer>)    .duration(400).EUt(12).buildAndRegister();








#ARAM

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*1000)
    .inputs(<gregtech:meta_item_1:2706>)
    .fluidOutputs(<liquid:trichloroflerane>*1000,<liquid:hydrogen>*1000)
    .EUt(120)
    .duration(800)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:hydrogen_chloride>*1000)
    .inputs(<gregtech:meta_item_1:2706>)
    .fluidOutputs(<liquid:trichloroflerane>*1000,<liquid:hydrogen>*1000)
    .EUt(120)
    .duration(800)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .fluidInputs(<liquid:trichloroflerane>*100)
    .fluidOutputs(<liquid:hydrogen_chloride>*100)
    .inputs(<contenttweaker:pre_engraved_nqo2_wafer>)
    .outputs(<contenttweaker:flerovium_layered_wafer>)
    .duration(200)
    .EUt(900)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:very_hot_krypton>*1000)
    .inputs(<contenttweaker:doped_aram_wafer>)
    .outputs(<gtadditions:ga_meta_item:32427>)
    .fluidOutputs(<liquid:krypton>*1000)
    .duration(90)
    .EUt(6000)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:krypton>*1000)
    .fluidOutputs(<liquid:very_hot_krypton>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(80)
    .EUt(12000)
    .buildAndRegister();

engraver.findRecipe(122880,[<gtadditions:ga_meta_item:32334>,<gregtech:meta_item_1:15913>],null).remove();
engraver.findRecipe(122880,[<gtadditions:ga_meta_item:32334>,<gregicalityoreaddon:gaoe_meta_item:12>],null).remove();
engraver.findRecipe(491520,[<gtadditions:ga_meta_item:32333>,<gregtech:meta_item_1:15913>],null).remove();
engraver.findRecipe(491520,[<gtadditions:ga_meta_item:32333>,<gregicalityoreaddon:gaoe_meta_item:12>],null).remove();
engraver.findRecipe(1966080,[<gtadditions:ga_meta_item:32335>,<gregtech:meta_item_1:15913>],null).remove();
engraver.findRecipe(1966080,[<gtadditions:ga_meta_item:32335>,<gregicalityoreaddon:gaoe_meta_item:12>],null).remove();

lengraver.findRecipe(122880,[<gtadditions:ga_meta_item:32334>,<gregtech:meta_item_1:15913>],null).remove();
lengraver.findRecipe(491520,[<gtadditions:ga_meta_item:32333>,<gregtech:meta_item_1:15913>],null).remove();
lengraver.findRecipe(1966080,[<gtadditions:ga_meta_item:32335>,<gregtech:meta_item_1:15913>],null).remove();

