#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Hand;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.Player;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import mods.contenttweaker.Facing;


function registerItem(name as string) {
    var item = VanillaFactory.createItem(name);
    item.maxStackSize = 64;
    item.register();
}

function registerMetalBlock(name as string, hardness as float, resistance as float, toolLevel as int) {
    var block = VanillaFactory.createBlock(name, <blockmaterial:iron>);

    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
    block.setEntitySpawnable(false);
    block.setToolClass("pickaxe");
    block.setToolLevel(0);
    block.register();
}



var fieldrestrictionglass = VanillaFactory.createBlock("fieldrestrictionglass", <blockmaterial:glass>);
fieldrestrictionglass.setBlockHardness(1.5);
fieldrestrictionglass.setBlockResistance(3.0);
fieldrestrictionglass.setBlockLayer("TRANSLUCENT");
fieldrestrictionglass.setLightOpacity(12);
fieldrestrictionglass.setTranslucent(true);
fieldrestrictionglass.setFullBlock(false);
fieldrestrictionglass.setToolClass("pickaxe");
fieldrestrictionglass.setToolLevel(2);
fieldrestrictionglass.setBlockSoundType(<soundtype:glass>);
fieldrestrictionglass.register();

var highresistanceglass = VanillaFactory.createBlock("highresistanceglass", <blockmaterial:glass>);
highresistanceglass.setBlockHardness(1.5);
highresistanceglass.setBlockResistance(3.0);
highresistanceglass.setBlockLayer("TRANSLUCENT");
highresistanceglass.setLightOpacity(5);
highresistanceglass.setTranslucent(true);
highresistanceglass.setFullBlock(false);
highresistanceglass.setToolClass("pickaxe");
highresistanceglass.setToolLevel(2);
highresistanceglass.setBlockSoundType(<soundtype:glass>);
highresistanceglass.register();

var ultrahighresistanceglass = VanillaFactory.createBlock("ultrahighresistanceglass", <blockmaterial:glass>);
ultrahighresistanceglass.setBlockHardness(1.5);
ultrahighresistanceglass.setBlockResistance(3.0);
ultrahighresistanceglass.setBlockLayer("TRANSLUCENT");
ultrahighresistanceglass.setLightOpacity(5);
ultrahighresistanceglass.setTranslucent(true);
ultrahighresistanceglass.setFullBlock(false);
ultrahighresistanceglass.setToolClass("pickaxe");
ultrahighresistanceglass.setToolLevel(2);
ultrahighresistanceglass.setBlockSoundType(<soundtype:glass>);
ultrahighresistanceglass.register();

var maraging_steel_frame_300 = VanillaFactory.createBlock("maraging_steel_frame_300", <blockmaterial:rock>);
maraging_steel_frame_300.setBlockHardness(1.5);
maraging_steel_frame_300.setBlockResistance(3.0);
maraging_steel_frame_300.setLightOpacity(5);
maraging_steel_frame_300.setFullBlock(false);
maraging_steel_frame_300.setBlockLayer("TRANSLUCENT");
maraging_steel_frame_300.setToolClass("pickaxe");
maraging_steel_frame_300.setToolLevel(2);
maraging_steel_frame_300.setBlockSoundType(<soundtype:metal>);
maraging_steel_frame_300.register();


registerMetalBlock("heat_vent", 12.0 , 10.0, 1);
registerMetalBlock("mervin_tara_carbonoxygen_casing", 12.0, 10.0, 1);
registerMetalBlock("neutron_tube_casing", 12.0, 10.0, 1);
registerMetalBlock("electromagnetic_acceleration_pipe_box", 12.0, 10.0, 1);
registerMetalBlock("stella_anvil_module", 12.0, 10.0, 1);
registerMetalBlock("cryoliteore", 12.0, 10.0, 1);
registerMetalBlock("sonicator_casing", 12.0, 10.0, 1);
registerMetalBlock("electrolyticcell", 12.0, 10.0, 1);
registerMetalBlock("platinumsaltore", 12.0, 10.0, 1);
registerMetalBlock("reactor_core_stabilizer", 12.0, 10.0, 1);
registerMetalBlock("atomic_casing", 12.0, 10.0, 1);
registerMetalBlock("advcomputercasing", 12.0, 10.0, 1);
registerMetalBlock("computercasing", 12.0, 10.0, 1);
registerMetalBlock("mattercasing", 12.0, 10.0, 1);
registerMetalBlock("electroniccasing", 12.0, 10.0, 1);
registerMetalBlock("titaniumcontainingice", 12.0, 10.0, 1);
registerMetalBlock("advancedcraftingunit", 12.0, 10.0, 1);
registerMetalBlock("refabricateddraconiumore", 12.0, 10.0, 1);
registerMetalBlock("cryogeniccasing", 12.0, 10.0, 1);
registerMetalBlock("neutronsensor", 12.0, 10.0, 1);
registerMetalBlock("neutronaccelerator", 12.0, 10.0, 1);
registerMetalBlock("transcendantminingcasings", 12.0, 10.0, 1);
registerMetalBlock("electricalrutherfordiumcupritecasing", 12.0, 10.0, 1);
registerMetalBlock("perciseelectronicunitcasing", 12.0, 10.0, 1);
registerMetalBlock("fieldrestrictioncoil", 12.0, 10.0, 1);
registerMetalBlock("particleprotectioncasing", 12.0, 10.0, 1);
registerMetalBlock("electromagnet", 12.0, 10.0, 1);
registerMetalBlock("berylliumdetector", 12.0, 10.0, 1);
registerMetalBlock("laserbindingmodule", 12.0, 10.0, 1);
registerMetalBlock("advancedassemblylinecasing", 12.0, 10.0, 1);
registerMetalBlock("blocklasermodule", 12.0, 10.0, 1);
registerMetalBlock("naquadahfuelrefinerycasing", 12.0, 10.0, 1);
registerMetalBlock("copperalloycoilblock", 12.0, 10.0, 1);
registerMetalBlock("vacuumfurnacecasing", 12.0, 10.0, 1);
registerMetalBlock("treatedwoodplanks", 12.0, 10.0, 1);
registerMetalBlock("basecasing", 12.0, 10.0, 1);
registerMetalBlock("supportstructure", 12.0, 10.0, 1);
registerMetalBlock("asphaltblock", 12.0, 10.0, 1);
registerMetalBlock("fused_quartz_block", 12.0, 10.0, 1);
registerMetalBlock("scsteamturbinecasing", 12.0, 10.0, 1);
registerMetalBlock("millcasing", 12.0, 10.0, 1);
registerMetalBlock("blockgraphite", 12.0, 10.0, 1);
registerMetalBlock("perfectlysealedvacuumcasing", 12.0, 10.0, 1);
registerMetalBlock("opticalspeedingpipecasing", 12.0, 10.0, 1);
registerMetalBlock("optimizedrestrictedpcbcasing", 12.0, 10.0, 1);
registerMetalBlock("detectiondevice", 12.0, 10.0, 1);
registerMetalBlock("thermalcasing", 12.0, 10.0, 1);
registerMetalBlock("lightlytreatedwoodplanks", 12.0, 10.0, 1);
registerMetalBlock("steelborderedwoodencasing", 12.0, 10.0, 1);
registerMetalBlock("logcasing", 12.0, 10.0, 1);
registerMetalBlock("woodeneglinsteelcasing", 12.0, 10.0, 1);
registerMetalBlock("pbistrengthenedtetrixcasing", 12.0, 10.0, 1);
registerMetalBlock("soulariumreinforcedglass", 12.0, 10.0, 1);
registerMetalBlock("internalstructure", 12.0, 10.0, 1);
registerMetalBlock("climateproofcasing", 12.0, 10.0, 1);
registerMetalBlock("dense_ice", 12.0, 10.0, 1);
registerMetalBlock("dimensionalcasing", 12.0, 10.0, 1);
registerMetalBlock("fuelrod", 12.0, 10.0, 1);
registerMetalBlock("automationframe", 12.0, 10.0, 1);
registerMetalBlock("quantumglass", 12.0, 10.0, 1);
registerMetalBlock("reactorsimulator", 12.0, 10.0, 1);
registerMetalBlock("lasercasing", 12.0, 10.0, 1);
registerMetalBlock("quantumcasing", 12.0, 10.0, 1);
registerMetalBlock("quantumcomputercasing", 12.0, 10.0, 1);
registerMetalBlock("coil", 12.0, 10.0, 1);
registerMetalBlock("fieldgeneratorcasing", 12.0, 10.0, 1);
registerMetalBlock("annihilationcasing", 12.0, 10.0, 1);
registerMetalBlock("computercasingvent", 12.0, 10.0, 1);
registerMetalBlock("gravity_separator_rotor_block", 12.0, 10.0, 1);
registerMetalBlock("machine_casing_robust_tungstensteel", 12.0, 10.0, 1);
registerMetalBlock("hss_s", 12.0, 10.0, 1);
registerMetalBlock("zirconium_carbide", 12.0, 10.0, 1);
registerMetalBlock("pneumatic", 12.0, 10.0, 1);
registerMetalBlock("bismuth_bronze", 12.0, 10.0, 1);
registerMetalBlock("machine_casing_stable_titanium", 12.0, 10.0, 1);
registerMetalBlock("machine_casing_solid_steel", 12.0, 10.0, 1);
registerMetalBlock("basic_structural_casing", 12.0, 10.0, 1);
registerMetalBlock("machine_casing_clean_stainless_steel", 12.0, 10.0, 1);
registerMetalBlock("thaumic_casing", 12.0, 10.0, 1);
registerMetalBlock("steel_plated_workbench", 12.0, 10.0, 1);
registerMetalBlock("lq_steel_casing", 12.0, 10.0, 1);
registerMetalBlock("advanced_outer_protective_wall", 12.0, 10.0, 1);
registerMetalBlock("machine_bronze_plated_bricks", 12.0, 10.0, 1);
registerMetalBlock("advanced_rocket_thruster", 12.0, 10.0, 1);
registerMetalBlock("advanced_stabilization_fin", 12.0, 10.0, 1);
registerMetalBlock("t3_rocket_engine", 12.0, 10.0, 1);
registerMetalBlock("drone_pad", 12.0, 10.0, 1);
registerMetalBlock("intermediate_protective_outer_wall", 12.0, 10.0, 1);
registerMetalBlock("t2_rocket_engine", 12.0, 10.0, 1);
registerMetalBlock("naquadah_deposit_block", 12.0, 10.0, 1);
registerMetalBlock("rocket_equipment", 12.0, 10.0, 1);
registerMetalBlock("protective_outer_wall", 12.0, 10.0, 1);
registerMetalBlock("extreme_protective_outer_wall", 12.0, 10.0, 1);
registerMetalBlock("stabilization_fin", 12.0, 10.0, 1);
registerMetalBlock("guidance_system", 12.0, 10.0, 1);
registerMetalBlock("rocket_thruster", 12.0, 10.0, 1);
registerMetalBlock("t1_rocket_engine", 12.0, 10.0, 1);
registerMetalBlock("t4_rocket_engine", 12.0, 10.0, 1);
registerMetalBlock("highpowercasing", 12.0, 10.0, 1);
registerMetalBlock("extreme_rocket_thruster", 12.0, 10.0, 1);
registerMetalBlock("rocket_fuel_tank", 12.0, 10.0, 1);
registerMetalBlock("rocket_thruster_top", 12.0, 10.0, 1);
registerMetalBlock("rocket_thruster_bottom", 12.0, 10.0, 1);
registerMetalBlock("rocket_turbo_pump", 12.0, 10.0, 1);
registerMetalBlock("t1_rocket_combustion_engine", 12.0, 10.0, 1);
registerMetalBlock("space_elevator_block", 10.0, 10.0, 1);
registerMetalBlock("space_elevator_railway_block", 10.0, 10.0, 1);
registerMetalBlock("carved_pumpkin", 1.0, 1.0, 1);
registerMetalBlock("ore_factory_casing", 12.0, 10.0, 1);
registerMetalBlock("core_processing_casing", 12.0, 10.0, 1);
registerMetalBlock("pressurized_atmospheric_casing", 12.0, 10.0, 1);
registerMetalBlock("pressurized_atmospheric_tank_casing", 12.0, 10.0, 1);
registerMetalBlock("gas_intake_module", 12.0, 10.0, 1);
registerMetalBlock("plasma_containment_casing", 12.0, 10.0, 1);
registerMetalBlock("magnetic_plasma_coil_casing", 12.0, 10.0, 1);
registerMetalBlock("magnetic_plasma_intake_array", 12.0, 10.0, 1);
registerMetalBlock("geothermal_core_casing", 12.0, 10.0, 1);
registerMetalBlock("core_drill_assembly", 12.0, 10.0, 1);
registerMetalBlock("core_treatment_casing", 12.0, 10.0, 1);
registerMetalBlock("blade_assembly", 5.0, 5.0, 2);
registerMetalBlock("interstellar_core", 15.0, 10.0, 1);



var items = [
"steel_source_casing",
"dowex_50_exchange_beads",
"condensated_dowex_50",
"sifted_zirkelite",
"floated_zirkelite",
"sifted_zircon",
"floated_zircon",
"zircon_concentrate",
"josephson_junction_extreme_board",
"patterned_extreme_reinforced_board",
"etched_extreme_board",
"insulated_extreme_board",
"electroplated_extreme_board",
"patterned_extreme_board",
"etched_phenolic_board",
"rayon_plate",
"wet_rayon_spinneret",
"rayon_spinneret",
"floated_naquadah_concentrate",
"sifted_naquadah_concentrate",
"cleaned_doped_ga_as_wafer",
"spincoated_resistivated_ga_as_wafer", 
"resistor_lithography_mask",
"resistivated_ga_as_wafer",
"engraved_spincoated_ga_as_wafer",
"developed_ga_as_wafer",
"annealed_ga_as_wafer",
"atomic_layered_ga_as_wafer",
"quantum_smd_resistor_chips",
"graphene_electrode_substrate",
"dielectric_electrode_substrate",
"top_electrode_deposited_substrate",
"etched_exposed_substrate",
"atomic_layered_substrate",
"quantum_smd_capacitor_chips",
"exposed_substrate",
"deionized_substrate",
"spincoated_substrate",
"engraved_phenolic_board",
"ga_as_wafer",
"iron_concentrate",
"floated_tantalite", 
"sifted_andradite",
"sifted_tantalite",
"passivated_spincoated_ga_as_wafer",
"spincoated_ga_as_wafer",
"exposed_ga_as_substrate",
"ga_as_wafer_die",
"bonded_ga_as_wafer",
"coated_layered_ga_as_wafer",
"carbon_electrode",
"wet_steel_rod",
"p_type_doped_ga_as_wafer",
"gallium_arsenide_substrate",
"dried_ga_as_substrate",
"removed_ga_as_substrate",
"amberlyst_15_ion_exchange_beads",
"spincoated_dried_ga_as_substrate",
"sputtered_ga_as_substrate",
"chromium_shadow_mask",
"cured_ga_as_substrate",
"bitumen_crystal",
"servo",
"tar",
"nano_smd_resistor_substrate",
"fused_quartz",
"doped_ga_as_wafer",
"layered_ga_as_wafer",
"transistor_lithography_mask",
"spincoated_ga_as_substrate",
"coated_ga_as_substrate",
"electrode_deposited_ga_as_substrate",
"masked_ga_as_wafer",
"sputtered_ga_as_wafer",
"etched_spincoated_ga_as_wafer",
"engraved_ga_as_wafer",
"etched_ga_as_wafer",
"passivated_epitaxial_ga_as_wafer",
"nano_smd_diode_wafer",
"uev_superconductor_assembly",
"nylon610_spinneret",
"fume_hood",
"optical_capacitor_base",
"lafeaso1_pellets",
"lafeaso1_catalyst",
"used_lafeAso1_catalyst",
"steel_item_casing",
"enhancedenderiumlense",
"alumino_silicate_wool_sheet",
"luminated_quartzite",
"monocrystalline_seed_crystal",
"grown_yeast_culture",
"cupriavidusnecator",
"annealed_nickel_plate",
"pad_petri",
"sintered_neodymium_plate",
"annealed_neodymium_plate",
"coated_neodymium_plate",
"soy_bean",
"nickel_breeding_bed",
"superconducting_wire_insulation_base",
"aluminium_item_casing",
"au_ge_ni_alloy_stack",
"syringe",
"sheep_blood_syringe",
"sterilized_syringe",
"yeast_cells",
"barley",
"platinum_desh_tungstensteel_compressed_plate",
"spacetime_bending_processing_core",
"silver_electrode",
"raw_high_power_ic_wafer",
"nether",
"beneath",
"thin_nylon_sheet",
"space_assembler_module",
"space_assembler_module_mk2",
"space_assembler_module_mk3",
"space_mining_module",
"space_mining_module_mk2",
"space_mining_module_mk3",
"space_ultraclean_module",
"space_crystal_growth_module",
"metal_layered_substrate",
"annealed_layered_substrate",
"quantum_smd_transistor_chips",
"gated_substrate",
"etched_substrate",
"electron_source_100kv",
"engraved_substrate",
"quantum_well_substrate",
"cotton_sheet",
"passivated_quantum_smd_wafer",
"gold_layered_ga_as_wafer",
"aluminium_layered_ga_as_wafer",
"mesa_structured_ga_as_wafer",
"engraved_doped_ga_as_wafer",
"heavily_doped_ga_as_wafer",
"quantum_smd_diode_chips",
"sod_323_packaging",
"aether",
"twilight_forest",
"end",
"engraved_ic_wafer",
"patterned_sapphire_substrate",
"biologically_approved_lense",
"etched_sapphire_substrate",
"integrated_circuit_photolithography_mask",
"n_doped_silicon_dioxide_wafer",
"pancreas",
"polysilicon_wafer",
"single_josephson_junction_lithography_mask",
"nozzle_t2",
"heavydutyplatet1",
"heavydutyplatet2",
"heavydutyplatet3",
"heavydutyplatet4",
"heavydutyplatet5",
"heavydutyplatet6",
"parachute",
"oxygen_mask",
"rebreather",
"vacuum_chamber",
"propellant_tank",
"fuel_tank",
"oxidizer_tank",
"air_handling_unit",
"rocket_combustion_chamber",
"injector",
"nozzle","raw_power_ic_wafer",
"raw_ram_wafer",
"raw_cpu_wafer",
"doped_polysilicon_wafer",
"engraved_power_ic_wafer",
"engraved_cpu_wafer",
"engraved_barium_titanate_substrate_wafer",
"engraved_ram_wafer",
"controlled_shaped_naquadah_charge",
"ram_lithography_mask",
"cpu_lithography_mask",
"lpic_lithography_mask",
"hicomputationstationmk1",
"hicomputationstationmk2",
"hicomputationstationmk3",
"hicomputationstationmk4",
"hicomputationstationmk5",
"manufactured_superconductor_circuit",
"sputtered_sapphire_substrate",
"uhpic_base",
"uhpic_base_wafer",
"uhpic_lithography_mask",
"pic_lithography_mask",
"lithography_base_mask",
"wired_substrate_wafer",
"superconductor_coated_substrate_wafer",
"barium_titanate_substrate_wafer",
"barium_titanate_boule",
"barium_titanate_seed_crystal",
"treated_photocoated_hassium_wafer",
"cruicible_mold",
"unpreperated_cela_boule",
"graphite_cruicible",
"drone",
"sgm_catalyst",
"living_crystal_chip",
"pgm_catalyst",
"ngm_catalyst",
"metal_catalyst",
"radox_catalyst",
"kevlar_catalyst",
"plastic_catalyst",
"ree_catalyst",
"soldering_catalyst",
"titansteelcircuit",
"einsteiniumcircuit",
"degeneraterheniumcircuit",
"trueneutroniumparticle",
"stemcellcontainmentcell",
"biotransistor",
"opticalenforcedlaser",
"biowarecoolingunit",
"biowareprocessingunit",
"biowaremainchip",
"biowaremainboard",
"living_bio_chip",
"stablestar",
"thin_kapton_k_sheet",
"gemstonecluster",
"coalball",
"uvhasoc",
"uvhasocw",
"enhancedenderiumingot",
"enhancedenderiumplate",
"enhancedenderiumrod",
"compressedmetalingot",
"itemprocessort1",
"itemprocessort2",
"itemprocessort3",
"itemprocessort4",
"enhancedenderiumunrefinedcrystal",
"enhancedenderiumcrystal",
"awakenedcompressedmetalingot",
"awakenedcompressedmetalplate",
"purified4thorium",
"purified3thorium",
"purified2thorium",
"purified1thorium",
"quantumcontrolcomputermk1",
"quantumcontrolcomputermk2",
"quantumcontrolcomputermk3",
"dualitioncore",
"unimpuredwafer",
"photopolymerplate",
"jupiter",
"eris",
"soc_lithography_mask",
"researchpapermakemake",
"trenched_naquadah_dioxide_wafer",
"researchpapereris",
"researchpaperhaumea",
"researchpaperkuiperbelt",
"researchpaperpluto",
"researchpaperuranus",
"researchpaperneptune",
"researchpapersaturn",
"researchpaperasteroids",
"researchpaperjupiter",
"researchpapervenus",
"researchpapermercury",
"researchpapermars",
"researchpapermoon",
"astro_miner",
"obsidianrod",
"space_warper_core",
"zelius_fish",
"coils",
"coal_plate",
"ic2drill",
"containment_box",
"spacetimebendingassembly",
"spacetimebendingcomputer",
"spacetimebendingmainframe",
"spacetimebendingprocessor",
"superconductingwire",
"fusioncoil",
"seperationcatalyst",
"seperationfilter",
"rotarryspinningwhisker",
"spectreplate",
"solenoid",
"wiring",
"ionthruster",
"soc_wafer_base",
"cotton",
"forcefieldgenerator",
"wrapofhsssfoil",
"ga_as_seed_crystal",
"zone_refined_ga_as_boule",
"ga_as_boule",
"wrapofelectrumfoil",
"wrapofosmiumfinewire",
"engraved_soc_wafer",
"wrapofruriditfinewire",
"uhasoc_lithography_mask",
"shaped_high_energy_gamma_shield",
"pre_engraved_uhasoc_wafer",
"superconductor_layered_uhasoc_wafer",
"degenerate_uhasoc_wafer",
"controlled_shaped_naquadah_charge_casing",
"celled_uhasoc_wafer",
"spin_aligned_celled_uhasoc_wafer",
"uhasoc_post_engraving_mask",
"relayered_uhasoc_wafer",
"researchpaperganymede",
"fully_connected_uhasoc_wafer",
"supercooled_uhasoc_wafer",
"monocrystalline_indium_phosphide_seed_crystal",
"monocrystalline_indium_phosphide_boule",
"monocrystalline_indium_phosphide_ingot",
"indium_phosphide_wafer",
"zblan_layered_inp_wafer",
"optical_lithography_mask",
"interconnected_inp_wafer",
"resonant_inp_wafer",
"insulated_inp_wafer",
"re_exposed_inp_wafer",
"electroluminescent_inp_wafer",
"recoated_inp_wafer",
"contact_ready_inp_wafer",
"uninsulated_optical_soc",
"contactless_optical_soc",
"insulated_optical_soc",
"copperalloycoil",
"wrapofnaquadahfinewire",
"reinforcedstring",
"boundleather",
"rawlapotron",
"photogenallyenhancedwafer",
"doped_soc_wafer",
"fcelauwafer",
"celawafer",
"unimprintedntypewafer",
"ceriumlanthanumingot",
"celasiliconboule",
"lanthanumseedcrystal",
"ceriumlanthanumsaturatedcompoundingot",
"opticalcircuitboard",
"opticallyenhancedcircuitboard",
"solidified_uum",
"platinumpearlcatalyst",
"blackpearl",
"drill_handle",
"startiumdust",
"spacetimebendingsmdcapacitor",
"spacetimebendingsmdresistor",
"spacetimebendingsmddiode",
"spacetimebendingsmdtransistor",
"cosmic_circuit_board",
"datadiskumvproc",
"datadiskdigester",
"datadiskassemblyline",
"usedcrackingcatalyst",
"crackingcatalyst",
"boiledleather",
"dielectric_film",
"electrode_pasted_ceramic_plate",
"silicon_dioxide_chip",
"lasered_silicon_chip",
"diode_imprinted_polysilicon_chip",
"sputtered_silicon_chip",
"coated_silicon_chip",
"asphalt",
"silicon_nitride_wafer",
"circiut_board_lithography_mask",
"electroplated_expoy_board",
"coated_epoxy_board",
"silicon_nitride_chip",
"gold_electrode",
"etched_circuit_board",
"petreulumcoke",
"bitominousresidue",
"silicon_nitride_implanted_polysilicon_wafer",
"stackwax",
"oganesson_seed_crystal",
"oganesson_boule",
"hasoc_lithography_mask",
"monocrystalline_oganesson_ingot",
"coated_polysilicon_wafer",
"diode_lithography_mask",
"diode_imprinted_polysilicon_wafer",
"oganesson_wafer",
"treated_oganesson_wafer",
"pre_engraving_oganesson_lithography_mask",
"pre_engraved_oganesson_wafer",
"raw_oganesson_wafer",
"doped_oganesson_wafer",
"engraved_hasoc_wafer",
"bathed_treated_oganesson_wafer",
"unpolarized_hasoc_wafer",
"hasoc_die",
"biosafe_protective_plating",
"clean_hasoc_die",
"neural_implanted_hasoc_die",
"grown_hasoc_die",
"paraffinwax",
"biobasedpetridiswithculture",
"biobasedpetridish",
"xontopicw",
"xontopic",
"neurological_life_support_unit",
"femtopicw",
"sapphire_seed_crystal",
"sapphire_boule",
"monocrystalline_sapphire_ingot",
"sapphire_wafer",
"qubit_cpu_lithography_mask",
"engraved_qbit_cpu_wafer",
"raw_qbit_cpu_wafer",
"superconductor_coated_qbit_cpu_wafer",
"u240_electron_source",
"qbit_cpu_die",
"covered_qbit_cpu",
"femtopic",
"pikopicw",
"pikopic",
"nanopicw",
"nanopic",
"ultrabiomutatedcircuitboard",
"advancedradiationproofplate",
"biocircuitboard",
"evolvedalaemixture",
"taucetialgaemixture",
"celauwafer",
"researchpaperceres",
"silicon_dioxide_wafer",
"algaebreedingbase",
"mutationbasedpetridish",
"petridishmold",
"tinyoranorhodiumcatalystdust",
"highdensityuranium",
"reinfrocedkevlarcloth",
"wovenkevlar",
"datadiskblackholecompressor",
"datadisc",
"hafnium_platinum_titanium_ingot",
"hafnium_platinum_titanium_plate",
"heavydutyalloyt2",
"heavydutyalloyt1",
"bisphenolbingot",
"bisphenolbsheet",
"bulatfiberreinforcedcircuitboard",
"supercooledplate",
"rubyingot",
"supercooledingot",
"bronzeelectrontube",
"blazingrod",
"silveralloyingot",
"silveralloyplate",
"catalyst",
"lasermodule",
"lasercrystal",
"advancedalloygear",
"longsilversteelrod",
"longbulatsteelrod",
"longelectricalsteelrod",
"wrench",
"electricalsteelrod",
"bulatsteelrod",
"silversteelrod",
"bulatsteelgear",
"bulatsteelplate",
"silversteelplate",
"silversteelgear",
"electricalsteelgear",
"silversteel",
"electricalsteelplate",
"stoneknife",
"unfiredfireclaybrick",
"stretchedwool",
"bulatsteelingot",
"hammer",
"woodgear",
"greensteelplate",
"hssgcircuit",
"greensteelingot",
"tungstencircuit",
"tritaniumcircuit",
"titaniumcircuit",
"osmiridiumcircuit",
"manatitaniumprocesser",
"heavydutyalloyt3",
"keyboard",
"purepetridish",
"yzcetic",
"yzcetib",
"hppicwafer",
"hppic",
"heavydutyalloyt6",
"heavydutyalloyt5",
"cosmicneutroniumcoil",
"neutroniumcoil",
"blacktitaniumcoil",
"infinitycoil",
"pykoniumcoil",
"titansteelcoil",
"advancedcircuitmold",
"triton",
"titan",
"taucetif",
"proximab",
"pluto",
"phobos",
"miranda",
"mercury",
"kupiterbelt",
"haumea",
"nanocpu_lithography_mask",
"engraved_nanocpu_wafer",
"doped_nanocpu_wafer",
"gated_nanocpu_wafer",
"insulated_nanocpu_wafer",
"trenched_insulated_nanocpu_wafer",
"unplanarized_nanocpu_wafer",
"europa",
"enceladus",
"diona",
"ceres",
"callisto",
"barnadac",
"io",
"ganymede",
"computationcomponent",
"itemprocessorcoret1",
"itemprocessorcoret2",
"itemprocessorcoret3",
"itemprocessorcoret4",
"computation",
"uhepic",
"nibiru",
"mars",
"chalos",
"fronos",
"asteroids",
"moon",
"venus",
"overworld",
"trappist1e",
"trappist1c",
"yzcetid",
"tiedhay",
"rawneutroniumingot",
"ulpicwafer",
"ulpic",
"lpicwafer",
"lpic",
"heavydutyalloyt4",
"europiumdopednet",
"flintstiffednet",
"aluminiumreinforcednet",
"sterilizedeuropiumnet",
"net",
"flintshard",
"onecoolant",
"onecryogeniccoolant",
"twocryogeniccoolant",
"tricryogeniccoolant",
"exoticingot",
"extremeradiationproofplating",
"cheese_cloth",
"coolantcontainmentcell",
"spectrekeyhandle",
"spacetimecontainingcomputationalunit",
"osmiumsieve",
"electrocitinerawalloyingot",
"highdensitythoria",
"hyperchargedleptontrapcrystal",
"protoadamantiumplatedalloyplate",
"protoadamantiumplatedalloyingot",
"infinityplatedplate",
"infinityplatedingot",
"assemblingcomponent",
"unimprintedcrystalcpu",
"woodeningotmold",
"resonantseaborgiumingot",
"crystaltinebaseingot",
"instablematter",
"stablematter",
"draconiumfragment",
"engine",
"diamondaluminiumcasing",
"compressedironnugget",
"hvroboticcomponent",
"radiationproofplate",
"wrappeduraniumingot",
"microheater",
"highdensityplutoniumnugget",
"wrappedplutonium",
"highdensityplutonium",
"cupronickelcoil",
"kanthalcoil",
"nichromecoil",
"tungstensteelcoil",
"hssgcoil",
"naquadacoil",
"naquadaalloycoil",
"superconductingcoil",
"biocells",
"bioprocesssingunit",
"engravedmanyiullynchip",
"engravedgoldchip",
"engravedenergychip",
"highdensityuraniumnugget",
"greensteelrod",
"hotresonantseaborgiumingot",
"containment_plating",
"nor_photolithography_mask",
"nand_photolithography_mask",
"hotrawneutroniumingot",
"nickel_nitride_wafer",
"engraved_nor_wafer",
"engraved_nand_wafer",
"flerovium_layered_wafer",
"spinorial_memory_wafer",
"pre_engraved_nqo2_wafer",
"enriched_naquadah_photolithography_mask",
"raw_asoc_wafer",
"engraved_asoc_wafer",
"engraved_spinorial_memory_wafer",
"naquadah_dioxide_seed_crystal",
"naquadah_dioxide_boule",
"naquadah_dioxide_wafer",
"doped_aram_wafer",
"hot_silicon_ingot",
"unbaked_monocrystalline_silicon_boule",
"seared_gear",
] as string[];

for item in items {
    registerItem(item);
}


