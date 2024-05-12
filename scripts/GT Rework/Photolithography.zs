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
    .fluidInputs(<liquid:water>*64)
    .duration(800)
    .EUt(90000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:celasiliconboule>)
    .outputs(<contenttweaker:celauwafer>*16)
    .fluidInputs(<liquid:distilled_water>*32)
    .duration(600)
    .EUt(90000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:celasiliconboule>)
    .outputs(<contenttweaker:celauwafer>*16)
    .fluidInputs(<liquid:lubricant>*16)
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

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7}))
    .outputs(<contenttweaker:nanocpu_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<contenttweaker:hasoc_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:xenon>*1000)
    .fluidOutputs(<liquid:very_hot_xenon>*1000)
    .duration(200)
    .EUt(80)
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
    .EUt(100)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:polysilicon_wafer>,i,I)
    .outputs(<contenttweaker:doped_polysilicon_wafer>)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_ram_wafer>,i,I)
    .outputs(<contenttweaker:raw_ram_wafer>)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_cpu_wafer>,i,I)
    .outputs(<contenttweaker:raw_cpu_wafer>)
    .duration(800)
    .EUt(100)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_ic_wafer>,i,I)
    .fluidInputs(<liquid:very_hot_nitrogen>*1000)
    .outputs(<gregtech:meta_item_2:32463>)
    .duration(800)
    .EUt(100)
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
    .inputs(<contenttweaker:engraved_spinorial_memory_wafer>, i, I) 
    .outputs(<contenttweaker:doped_aram_wafer>)
    .duration(200)
    .EUt(600)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2307>,<contenttweaker:engraved_hasoc_wafer>, i, I) 
    .outputs(<contenttweaker:unpolarized_hasoc_wafer>)
    .duration(200)
    .EUt(600)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:engraved_soc_wafer>, i, I) 
    .outputs(<contenttweaker:doped_soc_wafer>)
    .duration(200)
    .EUt(600)
    .buildAndRegister();



	}
    }

var NDope as IItemStack[] = [
<gtadditions:ga_dust:32203>,
<gregtech:meta_item_1:2005>,
<gregtech:meta_item_1:2003>,
<gregtech:meta_item_1:2008>,
<gregtech:meta_item_1:2679>,
];

for i in NDope {

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_wafer>,i)
    .outputs(<contenttweaker:n_doped_silicon_dioxide_wafer>)
    .duration(800)
    .EUt(180)
    .buildAndRegister();


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

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:aqua_regia>*1000)
    .fluidOutputs(<liquid:very_hot_aqua_regia>*1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(200)
    .EUt(80)
    .buildAndRegister();

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
    .outputs(<gregtech:meta_item_1:2628>)
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
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9}))
    .outputs(<contenttweaker:soc_lithography_mask>)
    .duration(50)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:lithography_base_mask>,<ore:dyeBlack>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 10}))
    .outputs(<contenttweaker:pre_engraving_oganesson_lithography_mask>)
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

engraver.recipeBuilder()    .inputs(<contenttweaker:spinorial_memory_wafer>)    .notConsumable(<gregicalityoreaddon:gaoe_meta_item:12>)    .outputs(<contenttweaker:engraved_spinorial_memory_wafer>)    .duration(800)   .EUt(7270)    .buildAndRegister();
engraver.recipeBuilder()    .inputs(<contenttweaker:spinorial_memory_wafer>)    .notConsumable(<gregtech:meta_item_1:15913>)    .outputs(<contenttweaker:engraved_spinorial_memory_wafer>)    .duration(800)    .EUt(7270)    .buildAndRegister();
lengraver.recipeBuilder()    .inputs(<contenttweaker:spinorial_memory_wafer>)    .notConsumable(<gregicalityoreaddon:gaoe_meta_item:12>)    .outputs(<contenttweaker:engraved_spinorial_memory_wafer>)    .duration(800)   .EUt(7270)    .buildAndRegister();
lengraver.recipeBuilder()    .inputs(<contenttweaker:spinorial_memory_wafer>)    .notConsumable(<gregtech:meta_item_1:15913>)    .outputs(<contenttweaker:engraved_spinorial_memory_wafer>)    .duration(800)    .EUt(7270)    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:628>)
    .outputs(<contenttweaker:naquadah_dioxide_seed_crystal>)
    .property("temperature", 1800)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Naquadah Dioxide Boule

ebf.recipeBuilder()
    .inputs(<contenttweaker:naquadah_dioxide_seed_crystal> , <gregtech:meta_item_1:2628>*4)
    .property("temperature", 1800)
    .outputs(<contenttweaker:naquadah_dioxide_boule>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Naquadah Dioxide Wafer

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:naquadah_dioxide_boule>)
    .outputs(<contenttweaker:naquadah_dioxide_wafer>*16 , <contenttweaker:naquadah_dioxide_seed_crystal>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Pre-engraved Naquadah Dioxide Wafer

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:superfluid_helium_4>*1000)
    .fluidOutputs(<liquid:helium_4>*1000)
    .inputs(<contenttweaker:naquadah_dioxide_wafer>)
    .outputs(<contenttweaker:trenched_naquadah_dioxide_wafer>)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:superfluid_helium_4>*1000)
    .fluidOutputs(<liquid:helium_4>*1000)
    .inputs(<contenttweaker:naquadah_dioxide_wafer>)
    .outputs(<contenttweaker:trenched_naquadah_dioxide_wafer>)
    .duration(200)
    .EUt(129)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:trenched_naquadah_dioxide_wafer>)
    .notConsumable(<contenttweaker:soc_lithography_mask>)
    .outputs(<contenttweaker:pre_engraved_nqo2_wafer>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Superfluid helium 4

lcr.recipeBuilder()
    .fluidInputs(<liquid:liquid_enriched_helium_4>*1000 , <liquid:liquid_nitrogen>*1000)
    .fluidOutputs(<liquid:superfluid_helium_4>*1000 , <liquid:helium3>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Liquid Enriched Helium 4

mixer.recipeBuilder()
    .fluidInputs(<liquid:helium_4>*1000 , <liquid:helium>*1000)
    .fluidOutputs(<liquid:liquid_enriched_helium_4>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //Engraved ASOC wafer

engraver.recipeBuilder()
    .inputs(<contenttweaker:pre_engraved_nqo2_wafer>)
    .notConsumable(<contenttweaker:enriched_naquadah_photolithography_mask>)
    .outputs(<contenttweaker:engraved_asoc_wafer>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

    //ASOC wafer

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:raw_asoc_wafer>)
    .fluidInputs(<liquid:very_hot_xenon>*1000)
    .outputs(<gregtech:meta_item_2:32462>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

cutting_saw.findRecipe(8,[<gregtech:meta_item_2:32439>],[<liquid:water>*5]).remove();
cutting_saw.findRecipe(8,[<gregtech:meta_item_2:32439>],[<liquid:distilled_water>*3]).remove();
cutting_saw.findRecipe(8,[<gregtech:meta_item_2:32439>],[<liquid:lubricant>*1]).remove();

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32439>)
    .outputs(<gregtech:meta_item_2:32440>*16,<contenttweaker:monocrystalline_seed_crystal>)
    .fluidInputs(<liquid:water>*5)
    .duration(300)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32439>)
    .outputs(<gregtech:meta_item_2:32440>*16,<contenttweaker:monocrystalline_seed_crystal>)
    .fluidInputs(<liquid:distilled_water>*5)
    .duration(150)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32439>)
    .outputs(<gregtech:meta_item_2:32440>*16,<contenttweaker:monocrystalline_seed_crystal>)
    .fluidInputs(<liquid:lubricant>*5)
    .duration(50)
    .EUt(8)
    .buildAndRegister();

    

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32466>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32466>*20],[],false);

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>*12],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32468>*20],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>*16],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32468>*20],[],false);

chemReactor.recipeBuilder().fluidInputs(<liquid:nitrogen>*1000).inputs(<gregtech:meta_item_1:2044>).outputs(<gtadditions:ga_dust:32215>).duration(200).EUt(12).buildAndRegister();
lcr.recipeBuilder().fluidInputs(<liquid:nitrogen>*1000).inputs(<gregtech:meta_item_1:2044>).outputs(<gtadditions:ga_dust:32215>).duration(200).EUt(12).buildAndRegister();
electrolyzer.recipeBuilder().fluidOutputs(<liquid:nitrogen>*1000).outputs(<gregtech:meta_item_1:2044>).inputs(<gtadditions:ga_dust:32215>).duration(200).EUt(12).buildAndRegister();


roasters.recipeBuilder()
    .fluidInputs(<liquid:oxygen>*1000)
    .inputs(<gtadditions:ga_dust:32215>,<contenttweaker:doped_polysilicon_wafer>)
    .outputs(<contenttweaker:nickel_nitride_wafer>)
    .duration(80)
    .EUt(90)
    .buildAndRegister();

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32462>],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32462>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32462>*4],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32462>*12],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32462>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32462>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32462>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32462>*12],[],false);

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:argon>*1000)
    .fluidOutputs(<liquid:very_hot_argon>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:524>)
    .outputs(<contenttweaker:sapphire_seed_crystal>)
    .duration(40)
    .EUt(80)
    .property("temperature", 900)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:sapphire_seed_crystal>,<gregtech:meta_item_1:2524>*4)
    .outputs(<contenttweaker:sapphire_boule>)
    .fluidInputs(<liquid:argon>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:sapphire_boule>)
    .outputs(<contenttweaker:monocrystalline_sapphire_ingot>*32)
    .fluidInputs(<liquid:water>*12)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:sapphire_boule>)
    .outputs(<contenttweaker:monocrystalline_sapphire_ingot>*32)
    .fluidInputs(<liquid:distilled_water>*8)
    .duration(100)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:sapphire_boule>)
    .outputs(<contenttweaker:monocrystalline_sapphire_ingot>*32)
    .fluidInputs(<liquid:lubricant>*6)
    .duration(60)
    .EUt(60)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_sapphire_ingot>)
    .outputs(<contenttweaker:sapphire_wafer>)
    .fluidInputs(<liquid:water>*12)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_sapphire_ingot>)
    .outputs(<contenttweaker:sapphire_wafer>)
    .fluidInputs(<liquid:distilled_water>*8)
    .duration(100)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_sapphire_ingot>)
    .outputs(<contenttweaker:sapphire_wafer>)
    .fluidInputs(<liquid:lubricant>*6)
    .duration(60)
    .EUt(60)
    .buildAndRegister();

engraver.recipeBuilder().inputs(<contenttweaker:sapphire_wafer>).notConsumable(<contenttweaker:qubit_cpu_lithography_mask>).outputs(<contenttweaker:engraved_qbit_cpu_wafer>).duration(80).EUt(900).buildAndRegister();
lengraver.recipeBuilder().inputs(<contenttweaker:sapphire_wafer>).notConsumable(<contenttweaker:qubit_cpu_lithography_mask>).outputs(<contenttweaker:engraved_qbit_cpu_wafer>).duration(80).EUt(900).buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_cpu_wafer>,<gtadditions:ga_dust:32217>,<gtadditions:ga_dust:32214>)
    .outputs(<contenttweaker:raw_qbit_cpu_wafer>)
    .duration(800)
    .EUt(1000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:very_hot_argon>*1000)
    .inputs(<contenttweaker:raw_qbit_cpu_wafer>)
    .fluidOutputs(<liquid:argon>*1000)
    .outputs(<contenttweaker:superconductor_coated_qbit_cpu_wafer>)
    .duration(200)
    .EUt(900)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:superconductor_coated_qbit_cpu_wafer>,<contenttweaker:u240_electron_source>)
    .outputs(<gregtech:meta_item_2:32470>)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

Utils.removeRecipeByOutput(cutting_saw,[<gregtech:meta_item_2:32484>*5],[],false);

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32470>)
    .outputs(<contenttweaker:qbit_cpu_die>)
    .fluidInputs(<liquid:water>*12)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32470>)
    .outputs(<contenttweaker:qbit_cpu_die>*5)
    .fluidInputs(<liquid:distilled_water>*8)
    .duration(100)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32470>)
    .outputs(<contenttweaker:qbit_cpu_die>)
    .fluidInputs(<liquid:lubricant>*6)
    .duration(60)
    .EUt(60)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs(<contenttweaker:qbit_cpu_die>,<gregtech:meta_item_1:12145>)
    .outputs(<contenttweaker:covered_qbit_cpu>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:liquid_helium>*1000)
    .fluidOutputs(<liquid:helium>*1000)
    .inputs(<contenttweaker:covered_qbit_cpu>)
    .outputs(<gregtech:meta_item_2:32484>)
    .duration(120)
    .EUt(70)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:707>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:oganesson_seed_crystal>)
    .duration(200)
    .EUt(500000)
    .property("temperature", 8000)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2707>,<contenttweaker:oganesson_seed_crystal>)
    .outputs(<contenttweaker:oganesson_boule>)
    .duration(200)
    .EUt(500000)
    .property("temperature", 8000)
    .buildAndRegister();


cutting_saw.recipeBuilder().inputs(<contenttweaker:oganesson_boule>).outputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:water>*12).duration(2000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().inputs(<contenttweaker:oganesson_boule>).outputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:distilled_water>*8).duration(1000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().inputs(<contenttweaker:oganesson_boule>).outputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:lubricant>*6).duration(600).EUt(60000).buildAndRegister();

cutting_saw.recipeBuilder().outputs(<contenttweaker:oganesson_wafer>,<contenttweaker:oganesson_seed_crystal>).inputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:water>*12).duration(2000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().outputs(<contenttweaker:oganesson_wafer>,<contenttweaker:oganesson_seed_crystal>).inputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:distilled_water>*8).duration(1000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().outputs(<contenttweaker:oganesson_wafer>,<contenttweaker:oganesson_seed_crystal>).inputs(<contenttweaker:monocrystalline_oganesson_ingot>).fluidInputs(<liquid:lubricant>*6).duration(600).EUt(60000).buildAndRegister();

cvd_unit_s.recipeBuilder()
    .fluidInputs(<liquid:trichloroflerane>*1000)
    .inputs(<contenttweaker:oganesson_wafer>)
    .outputs(<contenttweaker:treated_oganesson_wafer>)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:superfluid_helium_4>*1000)
    .fluidOutputs(<liquid:liquid_helium_4>*1000)
    .inputs(<contenttweaker:treated_oganesson_wafer>)
    .outputs(<contenttweaker:bathed_treated_oganesson_wafer>)
    .duration(800)
    .EUt(9000)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:bathed_treated_oganesson_wafer>)
    .outputs(<contenttweaker:pre_engraved_oganesson_wafer>)
    .notConsumable(<contenttweaker:pre_engraving_oganesson_lithography_mask>)
    .duration(1200)
    .EUt(800)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:bathed_treated_oganesson_wafer>)
    .outputs(<contenttweaker:pre_engraved_oganesson_wafer>)
    .notConsumable(<contenttweaker:pre_engraving_oganesson_lithography_mask>)
    .duration(1200)
    .EUt(800)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:pre_engraved_oganesson_wafer>,<gregtech:meta_item_1:2740>)
    .outputs(<contenttweaker:raw_oganesson_wafer>)
    .duration(800)
    .EUt(77000)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<contenttweaker:unpolarized_hasoc_wafer>)
    .outputs(<gtadditions:ga_meta_item:32421>)
    .duration(7000)
    .EUt(8112)
    .buildAndRegister();

cutting_saw.recipeBuilder().inputs(<gtadditions:ga_meta_item:32421>).outputs(<contenttweaker:hasoc_die>*6).fluidInputs(<liquid:water>*12).duration(2000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().inputs(<gtadditions:ga_meta_item:32421>).outputs(<contenttweaker:hasoc_die>*6).fluidInputs(<liquid:distilled_water>*8).duration(1000).EUt(80000).buildAndRegister();
cutting_saw.recipeBuilder().inputs(<gtadditions:ga_meta_item:32421>).outputs(<contenttweaker:hasoc_die>*6).fluidInputs(<liquid:lubricant>*6).duration(600).EUt(60000).buildAndRegister();

Utils.removeRecipeByOutput(cutting_saw, [<gtadditions:ga_meta_item:32420>*6],[],false);

assembly_line.recipeBuilder()
    .inputs(<contenttweaker:hasoc_die>,<contenttweaker:neurological_life_support_unit>,<gregtech:meta_item_2:16308>*4,<gregtech:meta_item_1:12840>,<gtadditions:ga_meta_item:32018>)
    .fluidInputs(<liquid:sterilized_growth_medium>*144)
    .outputs(<contenttweaker:neural_implanted_hasoc_die>)
    .duration(200)
    .EUt(280000)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sterilized_growth_medium>*1000)
    .inputs(<gregtech:meta_item_1:2309>)
    .fluidOutputs(<liquid:naquadah_rich_sterile_growth_medium>*1000)
    .duration(80)
    .EUt(120000)
    .buildAndRegister();

lmixer.recipeBuilder()
    .fluidInputs(<liquid:sterilized_growth_medium>*1000)
    .inputs(<gregtech:meta_item_1:2309>)
    .fluidOutputs(<liquid:naquadah_rich_sterile_growth_medium>*1000)
    .duration(80)
    .EUt(120000)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<contenttweaker:grown_hasoc_die>)
    .outputs(<contenttweaker:clean_hasoc_die>)
    .duration(800)
    .EUt(90080)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .fluidInputs(<liquid:naquadah_rich_sterile_growth_medium>*144)
    .inputs(<contenttweaker:neural_implanted_hasoc_die>)
    .outputs(<contenttweaker:grown_hasoc_die>)
    .duration(120)
    .EUt(80)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs(<contenttweaker:biosafe_protective_plating>,<contenttweaker:clean_hasoc_die>)
    .outputs(<gtadditions:ga_meta_item:32420>)
    .duration(8000)
    .EUt(1200)
    .buildAndRegister();

forming_press.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12617>,<gregtech:meta_item_1:12311>,<gregtech:meta_item_1:12308>,<gregtech:meta_item_2:32435>,<gregtech:meta_item_1:12047>)
    .outputs(<contenttweaker:biosafe_protective_plating>)
    .duration(129)
    .EUt(80)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<contenttweaker:raw_oganesson_wafer>)
    .outputs(<contenttweaker:doped_oganesson_wafer>)
    .duration(800)
    .EUt(90)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:engraved_qbit_cpu_wafer>,<gtadditions:ga_dust:32217>,<gtadditions:ga_dust:32214>)
    .outputs(<contenttweaker:raw_qbit_cpu_wafer>)
    .duration(280)
    .EUt(120)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[<gregtech:meta_item_2:32470>],[],false);
Utils.removeRecipeByOutput(lcr,[<gregtech:meta_item_2:32470>],[],false);

Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32472>*2],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32472>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32472>*16],[],false);
Utils.removeRecipeByOutput(engraver,[<gregtech:meta_item_2:32472>*24],[],false);

Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32472>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32472>*2],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32472>*12],[],false);
Utils.removeRecipeByOutput(lengraver,[<gregtech:meta_item_2:32472>*24],[],false);


mixer.recipeBuilder()
    .fluidInputs(<liquid:very_hot_krypton>*1000)
    .inputs(<contenttweaker:pre_engraved_nqo2_wafer>)
    .outputs(<contenttweaker:soc_wafer_base>)
    .fluidOutputs(<liquid:krypton>*1000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:very_hot_krypton>*1000)
    .inputs(<contenttweaker:doped_soc_wafer>)
    .outputs(<gregtech:meta_item_2:32472>)
    .fluidOutputs(<liquid:krypton>*1000)
    .duration(200)
    .EUt(480)
    .buildAndRegister();

Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32421>],[],false);
Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32421>*8],[],false);
Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32421>*4],[],false);

Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32421>*8],[],false);
Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32421>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32421>*4],[],false);


Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32425>],[],false);
Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32425>*2],[],false);
Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32425>*4],[],false);

Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32425>*2],[],false);
Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32425>],[],false);
Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32425>*4],[],false);

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:pre_engraved_uhasoc_wafer>,<gregtech:meta_item_1:2738>)
    .outputs(<contenttweaker:superconductor_layered_uhasoc_wafer>)
    .duration(800)
    .EUt(2000001)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:superconductor_layered_uhasoc_wafer>,<gregtech:meta_item_1:10629>)
    .outputs(<contenttweaker:degenerate_uhasoc_wafer>)
    .duration(80000)
    .EUt(700)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:degenerate_uhasoc_wafer>,<contenttweaker:controlled_shaped_naquadah_charge>,<contenttweaker:shaped_high_energy_gamma_shield>)
    .outputs(<contenttweaker:celled_uhasoc_wafer>)
    .duration(80000)
    .EUt(700)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<contenttweaker:celled_uhasoc_wafer>)
    .outputs(<contenttweaker:spin_aligned_celled_uhasoc_wafer>)
    .duration(1200)
    .EUt(90000)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:spin_aligned_celled_uhasoc_wafer>,<gregtech:meta_item_1:10629>)
    .outputs(<contenttweaker:relayered_uhasoc_wafer>)
    .duration(1200)
    .EUt(90000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12707>,<gregicalityoreaddon:gaoe_meta_item:10>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<contenttweaker:uhasoc_post_engraving_mask>)
    .duration(90)
    .EUt(120000)
    .buildAndRegister();

vacfreezer.recipeBuilder()
    .inputs(<contenttweaker:fully_connected_uhasoc_wafer>)
    .outputs(<contenttweaker:supercooled_uhasoc_wafer>)
    .duration(799)
    .EUt(1800)
    .buildAndRegister();

polarizer.recipeBuilder()
    .inputs(<contenttweaker:supercooled_uhasoc_wafer>)
    .outputs(<gtadditions:ga_meta_item:32423>)  
    .duration(80000)
    .EUt(7200)
    .buildAndRegister();

Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32423>],[],false);
Utils.removeRecipeByOutput(engraver,[<gtadditions:ga_meta_item:32423>*4],[],false);

Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32423>*4],[],false);
Utils.removeRecipeByOutput(lengraver,[<gtadditions:ga_meta_item:32423>],[],false);

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:31>,<gregtech:meta_item_1:50>)
    .outputs(<contenttweaker:monocrystalline_indium_phosphide_seed_crystal>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2684>*4,<contenttweaker:monocrystalline_indium_phosphide_seed_crystal>)
    .outputs(<contenttweaker:monocrystalline_indium_phosphide_boule>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(800)
    .EUt(1200)
    .buildAndRegister();
    
cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_boule>)
    .outputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>*16,<contenttweaker:monocrystalline_indium_phosphide_seed_crystal>)
    .fluidInputs(<liquid:water>*12)
    .duration(300)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_boule>)
    .outputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>*16,<contenttweaker:monocrystalline_seed_crystal>)
    .fluidInputs(<liquid:distilled_water>*9)
    .duration(150)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_boule>)
    .outputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>*16,<contenttweaker:monocrystalline_seed_crystal>)
    .fluidInputs(<liquid:lubricant>*5)
    .duration(50)
    .EUt(8)
    .buildAndRegister();
    

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>)
    .outputs(<contenttweaker:indium_phosphide_wafer>)
    .fluidInputs(<liquid:water>*12)
    .duration(300)
    .EUt(89012)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>)
    .outputs(<contenttweaker:indium_phosphide_wafer>)
    .fluidInputs(<liquid:distilled_water>*9)
    .duration(150)
    .EUt(89012)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:monocrystalline_indium_phosphide_ingot>)
    .outputs(<contenttweaker:indium_phosphide_wafer>)
    .fluidInputs(<liquid:lubricant>*5)
    .duration(50)
    .EUt(89012)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:indium_phosphide_wafer>,<gtadditions:ga_meta_item:32436>)
    .outputs(<contenttweaker:zblan_layered_inp_wafer>)
    .duration(80)
    .EUt(71232890)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32430>,<ore:circuitMaster>)
    .outputs(<contenttweaker:optical_lithography_mask>)
    .duration(890)
    .EUt(78004523)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32221>,<contenttweaker:interconnected_inp_wafer>)
    .outputs(<contenttweaker:resonant_inp_wafer>)
    .duration(560)
    .EUt(12864590)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:resonant_inp_wafer>,<gtadditions:ga_dust:32218>)
    .outputs(<contenttweaker:insulated_inp_wafer>)
    .duration(720)
    .EUt(8134590)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2709>)
    .fluidInputs(<liquid:xenon>*2000)
    .outputs(<gtadditions:ga_dust:32218>)
    .EUt(8003490)
    .duration(120)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2709>)
    .fluidInputs(<liquid:xenon>*2000)
    .outputs(<gtadditions:ga_dust:32218>)
    .EUt(800390)
    .duration(120)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32219>,<contenttweaker:re_exposed_inp_wafer>)
    .outputs(<contenttweaker:electroluminescent_inp_wafer>)
    .duration(1200)
    .EUt(80901234)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:electroluminescent_inp_wafer>,<gtadditions:ga_dust:32220>)
    .outputs(<contenttweaker:recoated_inp_wafer>)
    .duration(1200)
    .EUt(80129012)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:contact_ready_inp_wafer>)
    .fluidInputs(<liquid:tritanium>*144)
    .outputs(<gtadditions:ga_meta_item:32498>)
    .duration(120)
    .EUt(70901212)
    .buildAndRegister();

Utils.removeRecipeByOutput(cutting_saw,[<gtadditions:ga_meta_item:32499>*4],[],false);

cutting_saw.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32498>)
    .outputs(<contenttweaker:uninsulated_optical_soc>*4)
    .duration(2009)
    .EUt(891282)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:uninsulated_optical_soc>,<gregtech:meta_item_1:12728>,<gregtech:meta_item_1:12575>)
    .fluidInputs(<liquid:liquid_crystal_detector>*144)
    .outputs(<contenttweaker:insulated_optical_soc>)
    .duration(2009)
    .EUt(891282)
    .buildAndRegister();

ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:contactless_optical_soc>,<gregtech:meta_item_1:2534>)
    .outputs(<gtadditions:ga_meta_item:32499>)
    .duration(1202)
    .EUt(2096012)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcr,[<gtadditions:ga_meta_item:32498>],[],false);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2584>)
    .fluidInputs(<liquid:xenon>*1000,<liquid:seaborgium_doped_nanotubes>*1000)
    .outputs(<gtadditions:ga_dust:32219>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2584>)
    .fluidInputs(<liquid:xenon>*1000,<liquid:seaborgium_doped_nanotubes>*1000)
    .outputs(<gtadditions:ga_dust:32219>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16709>)
    .fluidInputs(<liquid:xenon>*1000)
    .outputs(<gtadditions:ga_dust:32218>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16709>)
    .fluidInputs(<liquid:xenon>*1000)
    .outputs(<gtadditions:ga_dust:32218>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16709>)
    .fluidInputs(<liquid:krypton>*1000)
    .outputs(<gtadditions:ga_dust:32220>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();

lmixer.recipeBuilder()
    .inputs(<gregtech:meta_item_2:16709>)
    .fluidInputs(<liquid:krypton>*1000)
    .outputs(<gtadditions:ga_dust:32220>)
    .duration(400)
    .EUt(52450)
    .buildAndRegister();



engraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:25209>)
    .notConsumable(<gregicalityoreaddon:gaoe_meta_item:9>)
    .outputs(<gregtech:meta_item_1:8584>)
    .duration(800)
    .EUt(901275)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<gregtech:meta_item_2:25209>)
    .notConsumable(<gregicalityoreaddon:gaoe_meta_item:9>)
    .outputs(<gregtech:meta_item_1:8584>)
    .duration(800)
    .EUt(901275)
    .buildAndRegister();