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

function registerItem(name as string) {
    var item = VanillaFactory.createItem(name);
    item.maxStackSize = 64;
    item.register();
}

function registerMetalBlock(name as string, hardness as float, resistance as float, toolLevel as int) {
    var block = VanillaFactory.createBlock(name, <blockmaterial:iron>);

    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
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
fieldrestrictionglass.setBlockSoundType(<soundtype:stone>);
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
highresistanceglass.setBlockSoundType(<soundtype:stone>);
highresistanceglass.register();




registerMetalBlock("cryoliteore", 12.0, 10.0, 1);
registerMetalBlock("platinumsaltore", 12.0, 10.0, 1);
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
registerMetalBlock("motorfour", 12.0, 10.0, 1);
registerMetalBlock("motorfive", 12.0, 10.0, 1);
registerMetalBlock("basecasing", 12.0, 10.0, 1);
registerMetalBlock("supportstructure", 12.0, 10.0, 1);
registerMetalBlock("asphaltblock", 12.0, 10.0, 1);
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
registerMetalBlock("motorblock", 12.0, 10.0, 1);
registerMetalBlock("motorone", 12.0, 10.0, 1);
registerMetalBlock("motortwo", 12.0, 10.0, 1);
registerMetalBlock("motorthree", 12.0, 10.0, 1);
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
registerMetalBlock("stabilization_fin", 12.0, 10.0, 1);
registerMetalBlock("guidance_system", 12.0, 10.0, 1);
registerMetalBlock("rocket_thruster", 12.0, 10.0, 1);
registerMetalBlock("t1_rocket_engine", 12.0, 10.0, 1);
registerMetalBlock("highpowercasing", 12.0, 10.0, 1);




var items = [
"steel_item_casing",
"enhancedenderiumlense",
"alumino_silicate_wool_sheet",
"luminated_quartzite",
"monocrystalline_seed_crystal",
"grown_yeast_culture",
"cupriavidusnecator",
"annealed_nickel_plate",
"pad_petri",
"hotmanyullyningot",
"soy_bean",
"nickel_breeding_bed",
"superconducting_wire_insulation_base",
"aluminium_item_casing",
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
"cotton_sheet",
"aether",
"twilight_forest",
"end",
"engraved_ic_wafer",
"patterned_sapphire_substrate",
"raw_ic_wafer",
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
"researchpapermakemake",
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
"carbonmyogel",
"motor",
"solenoid",
"wiring",
"articficialmuscle",
"ionthruster",
"cotton",
"forcefieldgenerator",
"aluminasilicatecatalyst",
"buildingwrench",
"wrapofhsssfoil",
"wrapofelectrumfoil",
"wrapofosmiumfinewire",
"wrapofruriditfinewire",
"copperalloycoil",
"wrapofnaquadahfinewire",
"reinforcedstring",
"boundleather",
"rawlapotron",
"photogenallyenhancedwafer",
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
"aluminacatalyst",
"usedcrackingcatalyst",
"crackingcatalyst",
"rareearththree",
"rareearthtwo",
"rareearthone",
"boiledleather",
"asphalt",
"petreulumcoke",
"bitominousresidue",
"stackwax",
"paraffinwax",
"biobasedpetridiswithculture",
"biobasedpetridish",
"xontopicw",
"xontopic",
"femtopicw",
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
"enrichedenderium",
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
"hotvibrantalloyingot",
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
"hotplatinumingot",
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
"hotactivatednaquadahingot",
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
"hotantoingot",
"hotultimateingot",
"tiedhay",
"hotincoloy945xingot",
"rawneutroniumingot",
"hotrawneutroniumingot",
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
"hotadamantiumalloyingot",
"hotblackplutoniumingot",
"hotfluxedelectrumingot",
"monazitecluster",
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
"hotplatinumtitaniumingot",
"hotsoulariumingot",
"hvroboticcomponent",
"radiationproofplate",
"wrappeduraniumingot",
"hotatomicseperationcatalyst",
"microheater",
"hothikariumingot",
"highdensityplutoniumnugget",
"wrappedplutonium",
"highdensityplutonium",
"hotmarcem200steelingot",
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
"nickel_nitride_wafer",
"engraved_nor_wafer",
"engraved_nand_wafer",
"pre_engraved_nqo2_wafer"
] as string[];

for item in items {
    registerItem(item);
}

