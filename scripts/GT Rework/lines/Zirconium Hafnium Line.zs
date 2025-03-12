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
import mods.gtadditions.recipe.Utils;


Utils.removeRecipeByOutput(chemReactor,[],[<liquid:zircon_chlorinating_residue>*1000,<liquid:zrhf_chloride>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:zircon_chlorinating_residue>*1000,<liquid:zrhf_chloride>*1000],true);

cstr_s.recipeBuilder() 
    .fluidOutputs(<liquid:zircon_chlorinating_residue>*1000,<liquid:zrhf_chloride>*1000)
    .inputs(<gtadditions:ga_dust:32308>*6)
    .fluidInputs(<liquid:chlorine>*8000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<contenttweaker:sifted_zircon>*4)
    .fluidOutputs(<liquid:zircon_slurry>*1000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gregtech:meta_item_1:2403>*5)
    .fluidOutputs(<liquid:soda_ash_solution>*1000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

electrolyzer.recipeBuilder()
    .fluidInputs(<liquid:soda_ash_solution>*1000)
    .fluidOutputs(<liquid:water>*1000)
    .outputs(<gregtech:meta_item_1:2403>*5)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:sodium_hydroxide_solution>*1000)
    .inputs(<gtadditions:ga_dust:32307>*18)
    .fluidOutputs(<liquid:aklaline_sodium_oleate_solution>*1000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

electromagnetic_separator.recipeBuilder()
    .inputs(<contenttweaker:floated_zircon>)
    .outputs(<contenttweaker:zircon_concentrate>)
    .chancedOutput(<gregtech:meta_item_1:2121>, 1000, 0)
    .chancedOutput(<gregtech:meta_item_1:2102>, 1000, 0)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

roasters.recipeBuilder()
    .inputs(<contenttweaker:zircon_concentrate>,<gregtech:meta_item_1:2097>)
    .outputs(<gtadditions:ga_dust:32308>)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemReactor,[],[<liquid:zrhf_oxychloride>*1000,<liquid:hydrochloric_acid>*1000],true);
Utils.removeRecipeByOutput(lcr,[],[<liquid:zrhf_oxychloride>*1000,<liquid:hydrochloric_acid>*1000],true);


centrifuge.recipeBuilder()
    .fluidInputs(<liquid:zrhf_separation_mix>*1000,<liquid:zrhf_chloride>*1000)
    .fluidOutputs(<liquid:purified_zr_chloride>*1000,<liquid:hafnium_extract>*1000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

cstr_s.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*2000,<liquid:purified_zr_chloride>*1000)
    .outputs(<gtadditions:ga_dust:32309>*11)
    .fluidOutputs(<liquid:hydrochloric_acid>*2000)
    .duration(400)
    .EUt(300)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32309>*11)
    .fluidInputs(<liquid:ammonia_solution>*4000)
    .fluidOutputs(<liquid:ammonium_sulfate>*2000)
    .outputs(<gregtech:meta_item_1:2911>*5)
    .duration(400)
    .EUt(600)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32309>*11)
    .fluidInputs(<liquid:ammonia_solution>*4000)
    .fluidOutputs(<liquid:ammonium_sulfate>*2000)
    .outputs(<gregtech:meta_item_1:2911>*5)
    .duration(500)
    .EUt(1400)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcr,[<gtadditions:ga_dust:118>*3,<gregtech:meta_item_1:2911>*3],[<liquid:ammonium_sulfate>*3000,<liquid:hydrochloric_acid>*12000],true);

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:sulfuric_acid>*100,<liquid:hafnium_extract>*1000)
    .fluidOutputs(<liquid:zrhf_separation_mix>*1000,<liquid:hafnium_sulfate_solution>*100)
    .duration(300)
    .EUt(700)
    .buildAndRegister();

roasters.recipeBuilder()
    .fluidInputs(<liquid:hafnium_sulfate_solution>*2000)
    .fluidOutputs(<liquid:sulfur_trioxide>*2000)
    .outputs(<gtadditions:ga_dust:118>*3)
    .duration(500)
    .EUt(600)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:alamine_336>*1000,<liquid:cyanex_923>*1000)
    .fluidOutputs(<liquid:zirconium_hafnium_extraction_mixture>*1000)
    .duration(600)
    .EUt(1200)
    .buildAndRegister();

Utils.removeRecipeByOutput(lcentrifuge,[<gregtech:meta_item_1:2904>*58],[<liquid:hydrofluoric_acid>*88000],true);

lcentrifuge.recipeBuilder()
    .fluidInputs(<liquid:hydrofluoric_acid>*88000)
    .inputs(<contenttweaker:floated_zirkelite>*58)
    .outputs(<gregtech:meta_item_1:2703>*6,<gregicalityoreaddon:gaoe_oredict_item:2046>*35,<gregicalityoreaddon:gaoe_oredict_item:2024>*10,<gregicalityoreaddon:gaoe_oredict_item:2047>*5)
    .duration(800)
    .EUt(1900)
    .buildAndRegister();

mixer.recipeBuilder()
    .fluidInputs(<liquid:distilled_water>*1000)
    .inputs(<gregicalityoreaddon:gaoe_oredict_item:2046>*5)
    .fluidOutputs(<liquid:zirconium_hafnium_fluoride_solution>*1000)
    .duration(600)
    .EUt(1100)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .fluidInputs(<liquid:zirconium_hafnium_fluoride_solution>*1000,<liquid:zirconium_hafnium_extraction_mixture>*2000)
    .fluidOutputs(<liquid:zirconium_hafnium_fluoride_extract>*1000)
    .duration(500)
    .EUt(1350)
    .buildAndRegister();

ion_exchange_unit.recipeBuilder()
    .fluidInputs(<liquid:zirconium_fluoride_solution>*1000)
    .notConsumable(<contenttweaker:dowex_50_exchange_beads>)
    .fluidOutputs(<liquid:zirconium_fluoride_extract>*1000)
    .duration(500)
    .EUt(1350)
    .buildAndRegister();

ion_exchange_unit.recipeBuilder()
    .fluidInputs(<liquid:hafnium_fluoride_solution>*1000)
    .notConsumable(<contenttweaker:dowex_50_exchange_beads>)
    .fluidOutputs(<liquid:hafnium_fluoride_extract>*1000)
    .duration(500)
    .EUt(1350)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:zirconium_fluoride_extract>*1000)
    .fluidOutputs(<liquid:zirconium_fluoride>*1000,<liquid:zirconium_hafnium_extraction_mixture>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:hafnium_fluoride_extract>*1000)
    .fluidOutputs(<liquid:hafnium_fluoride>*1000,<liquid:zirconium_hafnium_extraction_mixture>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

dryer.recipeBuilder()
    .fluidInputs(<liquid:dowex_50_suspension>*1000)
    .fluidOutputs(<liquid:dried_dowex_50_suspension>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

tbr.recipeBuilder()
    .fluidInputs(<liquid:dried_dowex_50_suspension>*1000,<liquid:sulfuric_acid>*1000,<liquid:oleum>*1000)
    .fluidOutputs(<liquid:dowex_50_solution>*1000)
    .duration(400)
    .EUt(800)
    .buildAndRegister();

distillation_tower.recipeBuilder()
    .fluidInputs(<liquid:dowex_50_solution>*1000)
    .fluidOutputs(<liquid:dowex_50>*1000,<liquid:divinylbenzene>*1000,<liquid:benzoyl_chloride>*1000)
    .duration(200)
    .EUt(700)
    .buildAndRegister();

extruder.recipeBuilder()
    .inputs(<contenttweaker:condensated_dowex_50>)
    .notConsumable(<gregtech:meta_item_1:32352>)
    .outputs(<contenttweaker:dowex_50_exchange_beads>)
    .duration(340)
    .EUt(700)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:zirconium_fluoride>*1000)
    .inputs(<gregtech:meta_item_1:2038>*2)
    .outputs(<gtadditions:ga_dust:324>*4,<gregtech:meta_item_1:2912>)
    .property("temperature", 1400)
    .duration(340)
    .EUt(700)
    .buildAndRegister();

ebf.recipeBuilder()
    .fluidInputs(<liquid:hafnium_fluoride>*1000)
    .inputs(<gregtech:meta_item_1:2038>*2)
    .outputs(<gtadditions:ga_dust:324>*4,<gregtech:meta_item_1:2764>)
    .property("temperature", 1400)
    .duration(340)
    .EUt(700)
    .buildAndRegister();



