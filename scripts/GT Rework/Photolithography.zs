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

engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_power_ic_wafer>).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_power_ic_wafer>*4).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_power_ic_wafer>*8).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_power_ic_wafer>*12).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_power_ic_wafer>*16).duration(20).EUt(12).buildAndRegister();
engraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_power_ic_wafer>*20).duration(20).EUt(12).buildAndRegister();

lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32440>).outputs(<contenttweaker:engraved_power_ic_wafer>).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32441>).outputs(<contenttweaker:engraved_power_ic_wafer>*4).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gregtech:meta_item_2:32442>).outputs(<contenttweaker:engraved_power_ic_wafer>*8).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32333>).outputs(<contenttweaker:engraved_power_ic_wafer>*12).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32334>).outputs(<contenttweaker:engraved_power_ic_wafer>*16).duration(20).EUt(12).buildAndRegister();
lengraver.recipeBuilder().notConsumable(<contenttweaker:pic_lithography_mask>).inputs(<gtadditions:ga_meta_item:32335>).outputs(<contenttweaker:engraved_power_ic_wafer>*20).duration(20).EUt(12).buildAndRegister();


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