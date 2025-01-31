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


fluidheater.recipeBuilder()
    .fluidInputs(<liquid:gallium>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:gallium_vapor>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

fluidheater.recipeBuilder()
    .fluidInputs(<liquid:arsine>*144)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidOutputs(<liquid:arsine_vapor>*1000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:arsenic_trichloride>*1000,<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:2051>)
    .fluidOutputs(<liquid:arsine>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:arsenic_trichloride>*1000,<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:2051>)
    .fluidOutputs(<liquid:arsine>*1000)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .fluidInputs(<liquid:arsine_vapor>*1000,<liquid:gallium_vapor>*1000)
    .notConsumable(<gregtech:meta_item_1:12051>)
    .inputs(<contenttweaker:ga_as_seed_crystal>)
    .outputs(<contenttweaker:ga_as_boule>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:ga_as_boule>)
    .fluidInputs(<liquid:distilled_water>*12)
    .outputs(<contenttweaker:ga_as_wafer>*16,<contenttweaker:ga_as_seed_crystal>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:ga_as_boule>)
    .fluidInputs(<liquid:lubricant>*8)
    .outputs(<contenttweaker:ga_as_wafer>*16,<contenttweaker:ga_as_seed_crystal>)
    .duration(150)
    .EUt(120)
    .buildAndRegister();


ion_implanter.recipeBuilder()
    .inputs(<contenttweaker:polysilicon_wafer>,<contenttweaker:silicon_nitride_chip>)
    .outputs(<contenttweaker:silicon_nitride_implanted_polysilicon_wafer>)
    .duration(400)
    .EUt(120)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:silicon_nitride_wafer>)
    .outputs(<contenttweaker:silicon_nitride_chip>*16)
    .duration(200)
    .fluidInputs(<liquid:distilled_water>*12)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:silicon_nitride_wafer>)
    .outputs(<contenttweaker:silicon_nitride_chip>*16)
    .duration(100)
    .fluidInputs(<liquid:lubricant>*10)
    .EUt(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:silicon_nitride_implanted_polysilicon_wafer>,<gregtech:meta_item_1:12025>,<gregtech:meta_item_2:16087>*4)
    .fluidInputs(<liquid:plastic>*288)
    .outputs(<gregtech:meta_item_2:32460>*48)
    .duration(280)
    .EUt(90)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32460>*32], [], true);

spincoater.recipeBuilder()
    .inputs(<contenttweaker:polysilicon_wafer>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .outputs(<contenttweaker:coated_polysilicon_wafer>)
    .duration(400)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:coated_polysilicon_wafer>)
    .outputs(<contenttweaker:diode_imprinted_polysilicon_wafer>)
    .notConsumable(<contenttweaker:diode_lithography_mask>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:coated_polysilicon_wafer>)
    .outputs(<contenttweaker:diode_imprinted_polysilicon_wafer>)
    .notConsumable(<contenttweaker:diode_lithography_mask>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:dyeBlack>,<contenttweaker:lithography_base_mask>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 12}))
    .outputs(<contenttweaker:diode_lithography_mask>)
    .duration(500)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:diode_imprinted_polysilicon_wafer>)
    .outputs(<contenttweaker:diode_imprinted_polysilicon_chip>*4)
    .fluidInputs(<liquid:distilled_water>*16)
    .duration(400)
    .EUt(90)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:diode_imprinted_polysilicon_wafer>)
    .outputs(<contenttweaker:diode_imprinted_polysilicon_chip>*4)
    .fluidInputs(<liquid:lubricant>*10)
    .duration(300)
    .EUt(90)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32457>*32], [], true);

assembler.recipeBuilder()
    .inputs(<contenttweaker:diode_imprinted_polysilicon_chip>,<gregtech:meta_item_2:16051>*8)
    .fluidInputs(<liquid:plastic>*144)
    .outputs(<gregtech:meta_item_2:32457>*48)
    .duration(800)
    .EUt(70)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:concrete>*144)
    .inputs(<gregtech:meta_item_1:2001>*2)
    .fluidOutputs(<liquid:dielectric_paste>*2000)
    .duration(200)
    .EUt(20)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32313>)
    .fluidInputs(<liquid:dielectric_paste>*2000)
    .outputs(<contenttweaker:dielectric_film>*4)
    .duration(200)
    .EUt(70)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:dielectric_film>,<gregtech:meta_item_1:19965>*4,<contenttweaker:electrode_pasted_ceramic_plate>)
    .outputs(<gregtech:meta_item_2:32458>*32)
    .fluidInputs(<liquid:plastic>*36)
    .EUt(100)
    .duration(80)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:dielectric_film>,<gregtech:meta_item_1:19391>*4,<contenttweaker:electrode_pasted_ceramic_plate>)
    .outputs(<gregtech:meta_item_2:32458>*32)
    .fluidInputs(<liquid:plastic>*36)
    .EUt(100)
    .duration(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_wafer>)
    .outputs(<contenttweaker:silicon_dioxide_chip>*32)
    .duration(200)
    .fluidInputs(<liquid:distilled_water>*12)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_chip>)
    .notConsumable(<ore:lensDiamond>)
    .outputs(<contenttweaker:lasered_silicon_chip>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:silicon_nitride_chip>)
    .notConsumable(<ore:lensDiamond>)
    .outputs(<contenttweaker:lasered_silicon_chip>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:silicon_dioxide_chip>)
    .notConsumable(<ore:lensDiamond>)
    .outputs(<contenttweaker:lasered_silicon_chip>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

lengraver.recipeBuilder()
    .inputs(<contenttweaker:silicon_nitride_chip>)
    .notConsumable(<ore:lensDiamond>)
    .outputs(<contenttweaker:lasered_silicon_chip>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:lasered_silicon_chip>,<gregtech:meta_item_2:16112>*2)
    .outputs(<contenttweaker:sputtered_silicon_chip>)
    .duration(800)
    .EUt(70)
    .buildAndRegister();

chemical_bath.recipeBuilder()   
    .inputs(<contenttweaker:sputtered_silicon_chip>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .outputs(<contenttweaker:coated_silicon_chip>)
    .duration(200)
    .EUt(90)
    .buildAndRegister();

assembler.recipeBuilder()
    .fluidInputs(<liquid:plastic>*144)
    .inputs(<contenttweaker:coated_silicon_chip>,<gregtech:meta_item_2:32506>)
    .outputs(<gregtech:meta_item_2:32459>*16)
    .duration(200)
    .EUt(110)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32458>*16],[], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32459>*24],[], true);


roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*1000)
    .inputs(<gregtech:meta_item_2:32440>)
    .outputs(<contenttweaker:silicon_nitride_wafer>)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*2000)
    .inputs(<gregtech:meta_item_2:32441>)
    .outputs(<contenttweaker:silicon_nitride_wafer>*2)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*4000)
    .inputs(<gregtech:meta_item_2:32442>)
    .outputs(<contenttweaker:silicon_nitride_wafer>*4)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*6000)
    .inputs(<gtadditions:ga_meta_item:32333>)
    .outputs(<contenttweaker:silicon_nitride_wafer>*6)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*12000)
    .inputs(<gtadditions:ga_meta_item:32334>)
    .outputs(<contenttweaker:silicon_nitride_wafer>*12)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:nitrogen>*32000)
    .inputs(<gtadditions:ga_meta_item:32335>)
    .outputs(<contenttweaker:silicon_nitride_wafer>*32)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

engraving_unit_s.recipeBuilder()
    .inputs(<contenttweaker:doped_ga_as_wafer>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .notConsumable(<contenttweaker:diode_lithography_mask>)
    .outputs(<contenttweaker:engraved_ga_as_wafer>)
    .duration(200)
    .EUt(80)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:water>*20)
    .inputs(<contenttweaker:nano_smd_diode_wafer>)
    .outputs(<gtadditions:ga_meta_item:32247>*16)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*16)
    .inputs(<contenttweaker:nano_smd_diode_wafer>)
    .outputs(<gtadditions:ga_meta_item:32247>*16)
    .duration(180)
    .EUt(800)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .fluidInputs(<liquid:lubricant>*12)
    .inputs(<contenttweaker:nano_smd_diode_wafer>)
    .outputs(<gtadditions:ga_meta_item:32247>*16)
    .duration(160)
    .EUt(800)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32247>*32], [], true);

vacuum_ejection_chamber.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12410>)
    .outputs(<contenttweaker:ga_as_seed_crystal>)
    .duration(2000)
    .EUt(300)
    .buildAndRegister();

spincoater.recipeBuilder()
    .inputs(<contenttweaker:layered_ga_as_wafer>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .outputs(<contenttweaker:coated_layered_ga_as_wafer>)
    .duration(200)
    .EUt(200)
    .buildAndRegister();

engraver.recipeBuilder()
    .inputs(<contenttweaker:coated_layered_ga_as_wafer>)
    .notConsumable(<contenttweaker:transistor_lithography_mask>)
    .outputs(<contenttweaker:masked_ga_as_wafer>)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:masked_ga_as_wafer>,<gregtech:meta_item_2:16049>*12,<gregtech:meta_item_1:12129>)
    .outputs(<contenttweaker:sputtered_ga_as_wafer>)
    .fluidInputs(<liquid:helium>*1000)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

spincoater.recipeBuilder()
    .inputs(<contenttweaker:sputtered_ga_as_wafer>)
    .fluidInputs(<liquid:novolacs_photoresist>*200)
    .outputs(<contenttweaker:spincoated_ga_as_wafer>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:etched_spincoated_ga_as_wafer>,<gregtech:meta_item_1:2159>)
    .fluidInputs(<liquid:nitrogen>*1000)
    .outputs(<contenttweaker:passivated_spincoated_ga_as_wafer>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

automatic_wire_bonder.recipeBuilder()
    .inputs(<contenttweaker:passivated_spincoated_ga_as_wafer>)
    .outputs(<contenttweaker:bonded_ga_as_wafer>)
    .fluidInputs(<liquid:epoxid>*144)
    .duration(200)
    .EUt(800)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:frame_lead>, <contenttweaker:bonded_ga_as_wafer>)
    .outputs(<contenttweaker:ga_as_wafer_die>)
    .duration(200)
    .EUt(1000)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:ga_as_wafer_die>)
    .outputs(<gtadditions:ga_meta_item:32244>*64)
    .duration(400)
    .EUt(800)
    .fluidInputs(<liquid:water>*12)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:ga_as_wafer_die>)
    .outputs(<gtadditions:ga_meta_item:32244>*64)
    .duration(300)
    .EUt(800)
    .fluidInputs(<liquid:distilled_water>*10)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:ga_as_wafer_die>)
    .outputs(<gtadditions:ga_meta_item:32244>*64)
    .duration(200)
    .EUt(800)
    .fluidInputs(<liquid:lubricant>*8)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2090>*5)
    .outputs(<gregtech:meta_item_1:2033>*2)
    .fluidOutputs(<liquid:oxygen>*3000)
    .duration(200)
    .EUt(12)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32244>*32],[],true);
    
roasters.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2061>*3)
    .fluidInputs(<liquid:nitrogen>*4000)
    .outputs(<gtadditions:ga_dust:32257>*7)
    .duration(800)
    .EUt(700)
    .buildAndRegister();

cvd_unit_s.recipeBuilder()
    .inputs(<contenttweaker:gallium_arsenide_substrate>,<gtadditions:ga_dust:32257>)
    .fluidInputs(<liquid:methane>*100)
    .outputs(<contenttweaker:sputtered_ga_as_substrate>)
    .duration(800)
    .EUt(200)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:sputtered_ga_as_substrate>)
    .fluidInputs(<liquid:piranha_solution>*200)
    .outputs(<contenttweaker:removed_ga_as_substrate>)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:removed_ga_as_substrate>)
    .fluidInputs(<liquid:novolacs_photoresist>*100)
    .outputs(<contenttweaker:coated_ga_as_substrate>)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

spincoater.recipeBuilder()
    .inputs(<contenttweaker:electrode_deposited_ga_as_substrate>)
    .fluidInputs(<liquid:novolacs_photoresist>*200)
    .outputs(<contenttweaker:spincoated_ga_as_substrate>)
    .duration(200)
    .EUt(500)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<contenttweaker:spincoated_ga_as_substrate>,<gregtech:meta_item_1:19072>*4,<contenttweaker:dielectric_film>)
    .outputs(<gtadditions:ga_meta_item:32246>*32)
    .duration(400)
    .fluidInputs(<liquid:plastic>*144)
    .EUt(500)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler,[<gtadditions:ga_meta_item:32246>*16],[],true);

dryer.recipeBuilder()
    .inputs(<contenttweaker:gallium_arsenide_substrate>)
    .fluidInputs(<liquid:nitrogen>*2000)
    .outputs(<contenttweaker:dried_ga_as_substrate>)
    .duration(400)
    .EUt(700)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:pmda_solution>*1000,<liquid:pxylene>*1000)
    .fluidOutputs(<liquid:pyromellitic_dianhydride_oxydianilin>*1000)
    .duration(100)
    .EUt(1000)
    .buildAndRegister();

spincoater.recipeBuilder()
    .inputs(<contenttweaker:exposed_ga_as_substrate>)
    .fluidInputs(<liquid:pyromellitic_dianhydride_oxydianilin>*200)
    .outputs(<contenttweaker:spincoated_dried_ga_as_substrate>)
    .duration(200)
    .EUt(400)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<contenttweaker:spincoated_dried_ga_as_substrate>,<gregtech:meta_item_2:16014>*8)
    .property("temperature", 500)
    .outputs(<contenttweaker:cured_ga_as_substrate>)
    .fluidInputs(<liquid:oxygen>*1000)
    .EUt(800)
    .duration(200)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:nano_smd_resistor_substrate>)
    .outputs(<gtadditions:ga_meta_item:32245>*32)
    .fluidInputs(<liquid:distilled_water>*20)
    .duration(800)
    .EUt(700)
    .buildAndRegister();

cutting_saw.recipeBuilder()
    .inputs(<contenttweaker:nano_smd_resistor_substrate>)
    .outputs(<gtadditions:ga_meta_item:32245>*32)
    .fluidInputs(<liquid:lubricant>*12)
    .duration(400)
    .EUt(650)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32245>*24],[],true);