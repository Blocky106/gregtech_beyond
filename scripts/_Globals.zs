#priority 999

import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IIngredient;

#Gregtech
global packer           as RecipeMap = RecipeMap.getByName("packer");
global unpacker           as RecipeMap = RecipeMap.getByName("unpacker");
global brewery           as RecipeMap = RecipeMap.getByName("brewer");
global extruder           as RecipeMap = RecipeMap.getByName("extruder");
global mixer           as RecipeMap = RecipeMap.getByName("mixer");
global implosion           as RecipeMap = RecipeMap.getByName("implosion_compressor");
global macerator           as RecipeMap = RecipeMap.getByName("macerator");
global assembler           as RecipeMap = RecipeMap.getByName("assembler");
global solidifier           as RecipeMap = RecipeMap.getByName("solidifier");
global chemReactor           as RecipeMap = RecipeMap.getByName("chemical_reactor");
global forgeHammer           as RecipeMap = RecipeMap.getByName("forge_hammer");
global fluidExtractor           as RecipeMap = RecipeMap.getByName("fluid_extractor");
global extractor           as RecipeMap = RecipeMap.getByName("extractor");
global compressor           as RecipeMap = RecipeMap.getByName("compressor");
global electrolyzer           as RecipeMap = RecipeMap.getByName("electrolyzer");
global centrifuge           as RecipeMap = RecipeMap.getByName("centrifuge");
global ebf           as RecipeMap = RecipeMap.getByName("blast_furnace");
global wiremill           as RecipeMap = RecipeMap.getByName("wiremill");
global fusion_reactor           as RecipeMap = RecipeMap.getByName("fusion_reactor");
global chemical_bath           as RecipeMap = RecipeMap.getByName("chemical_bath");
global lathe           as RecipeMap = RecipeMap.getByName("lathe");
global cracker           as RecipeMap = RecipeMap.getByName("cracker");
global autoclave           as RecipeMap = RecipeMap.getByName("autoclave");
global vacfreezer           as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global thermal           as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
global cutting_saw           as RecipeMap = RecipeMap.getByName("cutting_saw");
global assembly_line           as RecipeMap = RecipeMap.getByName("assembly_line");
global distillery           as RecipeMap = RecipeMap.getByName("distillery");
global distillation_tower           as RecipeMap = RecipeMap.getByName("distillation_tower");
global alloy_smelter           as RecipeMap = RecipeMap.getByName("alloy_smelter");
global metal_bender           as RecipeMap = RecipeMap.getByName("metal_bender");
global fluid_solidifier           as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global orewasher           as RecipeMap = RecipeMap.getByName("orewasher");
global lcr           as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
global forming_press           as RecipeMap = RecipeMap.getByName("forming_press");
global lmixer           as RecipeMap = RecipeMap.getByName("large_mixer");
global large_electrolyzer           as RecipeMap = RecipeMap.getByName("large_electrolyzer");
global blastalloy           as RecipeMap = RecipeMap.getByName("blast_alloy");
global stellar           as RecipeMap = RecipeMap.getByName("stellar_forge");
global dehydrator           as RecipeMap = RecipeMap.getByName("chemical_dehydrator");
global plasma_condenser           as RecipeMap = RecipeMap.getByName("plasma_condenser");
global circuit_assembly_line           as RecipeMap = RecipeMap.getByName("circuit_assembly_line");
global bio           as RecipeMap = RecipeMap.getByName("bio_reactor");
global fluidheater           as RecipeMap = RecipeMap.getByName("fluid_heater");
global cas           as RecipeMap = RecipeMap.getByName("circuit_assembler");
global engraver           as RecipeMap = RecipeMap.getByName("laser_engraver");
global lengraver           as RecipeMap = RecipeMap.getByName("large_engraver");
global adv           as RecipeMap = RecipeMap.getByName("ADVFusion");
global chemical_plant           as RecipeMap = RecipeMap.getByName("chemical_plant");
global canning           as RecipeMap = RecipeMap.getByName("canner");
global lcentrifuge           as RecipeMap = RecipeMap.getByName("large_centrifuge");
global fcanning           as RecipeMap = RecipeMap.getByName("fluid_canner");
global sifter           as RecipeMap = RecipeMap.getByName("sifter");
global cluster_mill           as RecipeMap = RecipeMap.getByName("cluster_mill");
global pyro           as RecipeMap = RecipeMap.getByName("pyro");
global fermenter           as RecipeMap = RecipeMap.getByName("fermenter");
global electromagnetic_separator           as RecipeMap = RecipeMap.getByName("electromagnetic_separator");
global arc_furnace           as RecipeMap = RecipeMap.getByName("arc_furnace");
global polarizer        as RecipeMap = RecipeMap.getByName("polarizer");
global nuclear_reactor as RecipeMap = RecipeMap.getByName("nuclear_reactor");
global primitive_blast_furnace as RecipeMap = RecipeMap.getByName("primitive_blast_furnace");


#DevTech
global rock_crusher        as RecipeMap = RecipeMap.getByName("rock_crusher");
global rotary_evaporator      as RecipeMap = RecipeMap.getByName("rotary_evaporator");
global microscope      as RecipeMap = RecipeMap.getByName("microscope");
global water_collector      as RecipeMap = RecipeMap.getByName("water_collector");
global vacuum_ejection_chamber      as RecipeMap = RecipeMap.getByName("vacuum_ejection_chamber");
global scanner      as RecipeMap = RecipeMap.getByName("scanner");
global induction_smelter      as RecipeMap = RecipeMap.getByName("induction_smelter");
global beam_shrinking_device     as RecipeMap = RecipeMap.getByName("beam_shrinking_device");
global fisher     as RecipeMap = RecipeMap.getByName("fisher");
global roasters     as RecipeMap = RecipeMap.getByName("roasters");
global inscriber     as RecipeMap = RecipeMap.getByName("inscriber");
global componentassembler     as RecipeMap = RecipeMap.getByName("componentassembler");
global ion_implanter     as RecipeMap = RecipeMap.getByName("ion_implanter");
global cvd_unit_s     as RecipeMap = RecipeMap.getByName("cvd_unit_s");
global steam_foundry    as RecipeMap = RecipeMap.getByName("steam_foundry");
global spincoater    as RecipeMap = RecipeMap.getByName("spincoater");
global uv_light     as RecipeMap = RecipeMap.getByName("uv_light");
global plasma_etcher as RecipeMap = RecipeMap.getByName("plasma_etcher");
global engraving_unit_s as RecipeMap = RecipeMap.getByName("engraving_unit_s");
global automatic_wire_bonder as RecipeMap = RecipeMap.getByName("automatic_wire_bonder");
global cstr_s as RecipeMap = RecipeMap.getByName("cstr_s");
global tbr as RecipeMap = RecipeMap.getByName("tbr");
global dryer as RecipeMap = RecipeMap.getByName("dryer");
global fluid_compressor as RecipeMap = RecipeMap.getByName("fluid_compressor");
global ion_exchange_unit as RecipeMap = RecipeMap.getByName("ion_exchange_unit");


#GregTech Food Option 

global green_house as RecipeMap = RecipeMap.getByName("green_house");