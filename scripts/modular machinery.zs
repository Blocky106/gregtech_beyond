import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
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


val packer = mods.gregtech.recipe.RecipeMap.getByName("packer");
val unpacker = mods.gregtech.recipe.RecipeMap.getByName("unpacker");
val brewery = mods.gregtech.recipe.RecipeMap.getByName("brewer");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val implosion = mods.gregtech.recipe.RecipeMap.getByName("implosion_compressor");
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val solidifier = mods.gregtech.recipe.RecipeMap.getByName("solidifier");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val forgeHammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val ebf = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val wiremill = mods.gregtech.recipe.RecipeMap.getByName("wiremill");
var fusion_reactor = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");
val chemical_bath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val cracker = mods.gregtech.recipe.RecipeMap.getByName("cracker");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val vacfreezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val thermal = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val cutting_saw = mods.gregtech.recipe.RecipeMap.getByName("cutting_saw");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillation_tower");
val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val fluid_solidifier = mods.gregtech.recipe.RecipeMap.getByName("fluid_solidifier");
val orewasher = mods.gregtech.recipe.RecipeMap.getByName("orewasher");
val lcr = mods.gregtech.recipe.RecipeMap.getByName("large_chemical_reactor");
val forming_press = mods.gregtech.recipe.RecipeMap.getByName("forming_press");
val lmixer = mods.gregtech.recipe.RecipeMap.getByName("large_mixer");
val blastalloy = mods.gregtech.recipe.RecipeMap.getByName("blast_alloy");
val stellar = mods.gregtech.recipe.RecipeMap.getByName("stellar_forge");
val dehydrator = mods.gregtech.recipe.RecipeMap.getByName("chemical_dehydrator");
val plasma_condenser = mods.gregtech.recipe.RecipeMap.getByName("plasma_condenser");
val circuit_assembly_line = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembly_line");
val bio = mods.gregtech.recipe.RecipeMap.getByName("bio_reactor");
val fluidheater = mods.gregtech.recipe.RecipeMap.getByName("fluid_heater");
val cas = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");
val engraver = mods.gregtech.recipe.RecipeMap.getByName("laser_engraver");
val lengraver = mods.gregtech.recipe.RecipeMap.getByName("large_engraver");
val adv = mods.gregtech.recipe.RecipeMap.getByName("ADVFusion");
val chemical_plant = mods.gregtech.recipe.RecipeMap.getByName("chemical_plant");
val canning = mods.gregtech.recipe.RecipeMap.getByName("canner");
val lcentrifuge = mods.gregtech.recipe.RecipeMap.getByName("large_centrifuge");
val fcanning = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");
val sifter = mods.gregtech.recipe.RecipeMap.getByName("sifter");
val cluster_mill = mods.gregtech.recipe.RecipeMap.getByName("cluster_mill");

recipes.remove(<modularmachinery:blockcontroller>);

mods.recipestages.Recipes.addShaped("machineProjector", <modularmachinery:machine_projector>, [	[null, null, <ore:circuitSuperconductor>], 	[null, <ore:plateFermium>, null], 	[<ore:plateFermium>, null, null]]);
RecipeBuilder.newBuilder("matter1", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<enderio:item_alloy_ingot:6> *64)    .addItemOutput(<contenttweaker:elementds>)    .build();
RecipeBuilder.newBuilder("matter2", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10856>*64)    .addItemOutput(<contenttweaker:selementts>)    .build();
RecipeBuilder.newBuilder("matter3", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10786>*64)    .addItemOutput(<contenttweaker:elementfm>)   .build();
RecipeBuilder.newBuilder("matter4", "matter", 80)    .addEnergyPerTickInput(512800000)   .addItemInput(<thermalfoundation:material:166>*64)   .addItemOutput(<contenttweaker:elementlu>)    .build();    
RecipeBuilder.newBuilder("matter5", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10072>*64)    .addItemOutput(<contenttweaker:elementti>)   .build();
RecipeBuilder.newBuilder("matter6", "matter", 80)    .addEnergyPerTickInput(512800000)   .addItemInput(<gregtech:meta_item_1:10311>*64)    .addItemOutput(<contenttweaker:elementtr>)    .build();
RecipeBuilder.newBuilder("matter7", "matter", 80)   .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10692>*64)    .addItemOutput(<contenttweaker:selementp>)    .build();
RecipeBuilder.newBuilder("matter8", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10074>*64)    .addItemOutput(<contenttweaker:elementw>)    .build();
RecipeBuilder.newBuilder("matter9", "matter", 80)    .addEnergyPerTickInput(512800000)    .addItemInput(<gregtech:meta_item_1:10517>*64)    .addItemOutput(<contenttweaker:elementdr>)   .build();
RecipeBuilder.newBuilder("pneumatic2", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<pneumaticcraft:empty_pcb>)    .addItemOutput(<pneumaticcraft:unassembled_pcb>)    .build();
RecipeBuilder.newBuilder("pneumatic4", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32601>*8)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic5", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32545>*2)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic6", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32537>*4)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic7", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32405>*64)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)   .build();
RecipeBuilder.newBuilder("pneumatic8", "pneumatic", 80)   .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32542>*2)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic9", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32497>*16)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic10", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32406>*64)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic11", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32604>*8)   .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic12", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32534>*4)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic1", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32494>*16)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)   .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("precise1", "precise", 120)    .addEnergyPerTickInput(12000)    .addItemInput(<gregtech:meta_item_1:32499>)    .addItemInput(<gtadditions:ga_meta_item:32029>)    .addItemInput(<gregtech:meta_item_1:32600>)    .addItemInput(<gregtech:meta_item_2:32483>)    .addItemInput(<contenttweaker:cupronickelcoil>*2)    .addFluidInput(<liquid:aluminium>*144)    .addFluidInput(<liquid:red_alloy>*144)    .addItemOutput(<contenttweaker:microheater>)    .build();
RecipeBuilder.newBuilder("precise2", "pericse", 200)    .addEnergyPerTickInput(120000)   .addItemInput(<gtadditions:ga_meta_item:32493>)   .addItemInput(<gregtech:meta_item_1:32687>)    .addItemInput(<contenttweaker:hicomputationstationmk2>)    .addItemInput(<gregtech:machine:3239>)    .addFluidInput(<liquid:stainless_steel>*412)    .addFluidInput(<liquid:tungsten_titanium_carbide>*144)    .addItemOutput(<contenttweaker:neutronaccelerator>)    .build();
RecipeBuilder.newBuilder("precise3", "precise", 299)    .addEnergyPerTickInput(2000000)    .addItemInput(<contenttweaker:hicomputationstationmk1>*2)    .addItemInput(<gregtech:meta_item_2:32480>*8)    .addFluidInput(<liquid:lumium>*72)    .addFluidInput(<liquid:enderium>*72)   .addFluidInput(<liquid:plastic>*144)    .addFluidInput(<liquid:signalum>*144)    .addItemOutput(<contenttweaker:hicomputationstationmk2>)    .build();
RecipeBuilder.newBuilder("precise4", "precise", 400)    .addEnergyPerTickInput(5355335)   .addItemInput(<contenttweaker:hicomputationstationmk2>*2)   .addItemInput(<gregtech:meta_item_2:32503>*4)  .addItemInput(<gregtech:meta_item_2:32475>*2)    .addFluidInput(<liquid:adamantiumalloy>*576)    .addFluidInput(<liquid:lumium>*144)    .addFluidInput(<liquid:signalum>*288)    .addFluidInput(<liquid:tungsten_titanium_carbide>*144)    .addItemOutput(<contenttweaker:hicomputationstationmk3>)    .build();
RecipeBuilder.newBuilder("precise5", "precise", 500)   .addEnergyPerTickInput(80000000)    .addItemInput(<contenttweaker:hicomputationstationmk3>*2)    .addItemInput(<contenttweaker:engravedenergychip>*8)    .addItemInput(<gregtech:meta_item_2:32484>*16)    .addFluidInput(<liquid:lumium>*288)    .addFluidInput(<liquid:signalum>*576)    .addFluidInput(<liquid:marcem200steel>*1152)    .addFluidInput(<liquid:artheriumsn>*144)    .addItemOutput(<contenttweaker:hicomputationstationmk4>)   .build();
RecipeBuilder.newBuilder("precise6", "precise", 600)    .addEnergyPerTickInput(200000000)   .addItemInput(<contenttweaker:hicomputationstationmk4>*2)    .addItemInput(<contenttweaker:engravedmanyiullynchip>* 8)    .addItemInput(<contenttweaker:bioprocesssingunit>)    .addFluidInput(<liquid:signalum>*1152)    .addFluidInput(<liquid:tanmolyiumbetac>*1728)   .addFluidInput(<liquid:dalisenite>*288)    .addFluidInput(<liquid:lumium>*576)    .addItemOutput(<contenttweaker:hicomputationstationmk5>)   .build();
RecipeBuilder.newBuilder("pc1", "pc", 4800)    .addEnergyPerTickInput(200000)    .addItemOutput(<contenttweaker:computation>)    .build();
RecipeBuilder.newBuilder("precise13", "precise", 500)    .addEnergyPerTickInput(200000)  .addItemInput(<gregtech:cable:1966>*16) .addItemInput(<contenttweaker:highpowercasing>) .addItemInput(<contenttweaker:extremeradiationproofplating>*6) .addItemInput(<gregtech:meta_item_1:12544>*4) .addItemInput(<gregtech:frame_enriched_naquadah_alloy>)  .addFluidInput(<liquid:incoloy813>*20000) .addFluidInput(<liquid:indalloy140>*20000)  .addItemOutput(<contenttweaker:computercasing>*2)  .build();
RecipeBuilder.newBuilder("precise14", "precise", 800)   .addEnergyPerTickInput(1000000) .addItemInput(<contenttweaker:computercasing>) .addItemInput(<gregtech:cable:1744>*32)  .addItemInput(<gtadditions:ga_meta_item:32430>*4) .addItemInput(<ore:circuitInfinite>) .addItemInput(<gtadditions:ga_meta_item:32488>) .addItemInput(<gtadditions:ga_meta_item:32486>) .addItemInput(<contenttweaker:hicomputationstationmk3>) .addItemInput(<gtadditions:ga_meta_item:32487>) .addItemInput(<gregtech:meta_item_2:26047>*4).addItemInput(<contenttweaker:onecoolant>)   .addItemOutput(<contenttweaker:advcomputercasing>) .build();
RecipeBuilder.newBuilder("mf1", "mf", 200)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenfullerenesuperconductor>*1000) .addFluidInput(<liquid:proto_adamantium>*2000) .addFluidInput(<liquid:metastable_oganesson>*2000) .addFluidInput(<liquid:moltenborocarbide>*3000) .addFluidOutput(<liquid:uiv_superconductor_base>*3500) .build();
RecipeBuilder.newBuilder("mf2", "mf", 400)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:superheavy_h_alloy>*2000) .addFluidInput(<liquid:moltenchargedcesiumceriumcobaltindium>*3000) .addFluidInput(<liquid:black_titanium>*3000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*6000) .addFluidOutput(<liquid:umv_superconductor_base>*7000) .build();
RecipeBuilder.newBuilder("mf3", "mf", 800)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenlegendarium>*5000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*12000) .addFluidInput(<liquid:moltenactiniumsuperhydride>*5000) .addFluidInput(<liquid:moltenlanthanumfullerenenanotubes>*4000) .addFluidInput(<liquid:neutronium>*4000) .addFluidOutput(<liquid:uxv_superconductor_base>*15000) .build();
RecipeBuilder.newBuilder("mf4", "mf", 2000) .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenlegendarium>*4000) .addFluidInput(<liquid:cosmic_neutronium>*2000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*24000) .addFluidInput(<liquid:periodicium>*12000) .addFluidInput(<liquid:pikyonium>*3000) .addFluidInput(<liquid:ultimate>*3500) .addFluidOutput(<liquid:maxsuperconductorbase>*10000) .build();
RecipeBuilder.newBuilder("transformer1", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dye:4>) .addItemOutput(<gregtech:meta_item_1:8157>) .build();
RecipeBuilder.newBuilder("transformer2", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<ore:sand>) .addItemOutput(<minecraft:gravel>) .build();
RecipeBuilder.newBuilder("transformer3", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<contenttweaker:crystaltinebaseingot>) .addItemOutput(<extendedcrafting:material:24>) .build();
RecipeBuilder.newBuilder("transformer5", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<ore:woolYellow>) .addItemOutput(<minecraft:glowstone>) .build();
RecipeBuilder.newBuilder("transformer6", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:netherrack>) .addItemOutput(<minecraft:gunpowder>*2) .build();
RecipeBuilder.newBuilder("transformer7", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dye:4>) .addItemOutput(<gregtech:meta_item_1:8157>) .build();
RecipeBuilder.newBuilder("transformer8", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:2072>) .addItemOutput(<gregtech:meta_item_1:2016>) .build();
RecipeBuilder.newBuilder("transformer9", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10071>) .addItemOutput(<gregtech:meta_item_1:10062>) .build();
RecipeBuilder.newBuilder("transformer10", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:quartz>) .addItemOutput(<gregtech:meta_item_1:8202>) .build();
RecipeBuilder.newBuilder("transformer11", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10018>) .addItemOutput(<gregtech:meta_item_1:10044>) .build();
RecipeBuilder.newBuilder("transformer12", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:wool:14>) .addItemOutput(<minecraft:redstone_block>) .build();
RecipeBuilder.newBuilder("transformer13", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:redstone>) .addItemOutput(<gregtech:meta_item_1:8154>) .build();
RecipeBuilder.newBuilder("transformer14", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:wool:11>) .addItemOutput(<minecraft:lapis_block>) .build();
RecipeBuilder.newBuilder("transformer15", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10062>) .addItemOutput(<minecraft:gold_ingot>) .build();
RecipeBuilder.newBuilder("transformer16", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10072>) .addItemOutput(<gregtech:meta_item_1:10016>) .build();
RecipeBuilder.newBuilder("transformer17", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dirt:2>) .addItemOutput(<minecraft:clay>) .build();
RecipeBuilder.newBuilder("transformer18", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<contenttweaker:instablematter>) .addFluidInput(<liquid:atomicseperationcatalyst>*144) .addItemOutput(<contenttweaker:stablematter>) .build();
RecipeBuilder.newBuilder("precise15", "precise", 1200)   .addEnergyPerTickInput(1400000) .addFluidInput(<liquid:sterilized_growth_medium>*100000) .addFluidInput(<liquid:tritanium>*80000) .addFluidInput(<liquid:soldering_alloy>*500000).addItemOutput(<contenttweaker:quantumcontrolcomputermk1>) .addFluidInput(<liquid:indalloy140>*24000) .addItemInput(<gregtech:meta_item_1:12730>*32 ) .addItemInput(<gregtech:meta_item_1:12144>*32) .addItemInput(<gregtech:meta_item_1:12700>*32) .addItemInput(<gregtech:meta_item_1:12395>*32) .addItemInput(<gregtech:meta_item_1:12143>*32) .addItemInput(<gregtech:cable:1744>*16) .addItemInput(<gregtech:meta_item_1:12965>*32) .addItemInput(<gregtech:meta_item_1:12141>*32) .addItemInput(<gregtech:meta_item_1:32655>*4) .addItemInput(<gregtech:meta_item_1:12840>*32) .addItemInput(<gregtech:meta_item_1:12563>*16) .addItemInput(<gregtech:meta_item_1:12145>*32) .addItemInput(<contenttweaker:hicomputationstationmk3>*4) .addItemInput(<ore:circuitInfinite>*8) .addItemInput(<gregtech:meta_item_1:32675>*2) .build();
RecipeBuilder.newBuilder("water1", "water", 12) .addEnergyPerTickInput(6) .addFluidOutput(<liquid:water>*150) .build();
RecipeBuilder.newBuilder("brine1", "brine", 80) .addEnergyPerTickInput(500) .addFluidInput(<liquid:sea_water>*1000) .addFluidOutput(<liquid:brine>*100 ) .build();
RecipeBuilder.newBuilder("brine2", "brine", 80) .addEnergyPerTickInput(500) .addFluidInput(<liquid:debrominated_brine>*1000) .addFluidOutput(<liquid:brine>*100 ) .build();
RecipeBuilder.newBuilder("brine3", "brine", 80) .addEnergyPerTickInput(500) .addFluidInput(<liquid:salt_water>*1000) .addFluidOutput(<liquid:brine>*100 ) .build();
RecipeBuilder.newBuilder("partcleaccerlator1", "partcleaccerlator", 500) .addEnergyPerTickInput(100000) .addFluidInput(<liquid:plutonium>*144) .addFluidOutput(<liquid:plutonium247>*72) .build();
RecipeBuilder.newBuilder("partcleaccerlator2", "partcleaccerlator", 500) .addEnergyPerTickInput(100000) .addFluidInput(<liquid:plutonium_radioactive245>*144) .addFluidOutput(<liquid:plutonium247>*144) .build();
RecipeBuilder.newBuilder("partcleaccerlator3", "partcleaccerlator", 500) .addEnergyPerTickInput(50000000) .addFluidInput(<liquid:blackplutonium>*144) .addFluidOutput(<liquid:plutonium247>*288) .build();

recipes.addShapeless(<modularmachinery:blockmeitemoutputbus>,[<modularmachinery:blockoutputbus:2>,<ae2fc:dual_interface>]);
recipes.addShapeless(<modularmachinery:blockmeiteminputbus>,[<modularmachinery:blockoutputbus:2>,<ae2fc:dual_interface>]);
recipes.addShapeless(<modularmachinery:blockmefluidoutputbus>,[<modularmachinery:blockoutputbus:2>,<ae2fc:dual_interface>]);
recipes.addShapeless(<modularmachinery:blockmefluidinputbus>,[<modularmachinery:blockoutputbus:2>,<ae2fc:dual_interface>]);


recipes.addShaped(<modularmachinery:planar_controller>, [	[<ore:plateSteel>, <ore:itemLens>, <ore:plateSteel>], 	[<ore:circuitAdvanced>, <ore:frameGtBlackSteel>, <ore:circuitAdvanced>], 	[<ore:plateSteel>, <gregtech:machine:503>, <ore:plateSteel>]]);
recipes.addShaped(<modularmachinery:polytank_controller>, [[<ore:circuitGood>, <gregtech:meta_item_1:32610>, <ore:circuitGood>], [<gregtech:meta_item_1:32610>, <gregtech:machine:501>, <gregtech:meta_item_1:32610>], 	[<ore:rotorSteel>, <gregtech:meta_item_1:32610>, <ore:rotorSteel>]]);
recipes.addShaped(<modularmachinery:press_controller>, [	[<gregtech:meta_item_1:32640>, <ore:craftingAnvil>, <gregtech:meta_item_1:32640>], 	[<ore:plateWroughtIron>, <gregtech:machine:501>, <ore:plateWroughtIron>], 	[<gregtech:meta_item_1:32610>, <ore:circuitGood>, <gregtech:meta_item_1:32610>]]);















































assembler.recipeBuilder()
    .inputs(<gregtech:machine:744>,<contenttweaker:tungstensteelcoil>*2)
    .outputs(<modularmachinery:blockenergyinputhatch:4>)
    .fluidInputs(<liquid:polytetrafluoroethylene>*288)
    .duration(800)
    .EUt(400)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:machine:754>,<contenttweaker:hssgcoil>*2)
    .outputs(<modularmachinery:blockenergyinputhatch:5>)
    .fluidInputs(<liquid:polytetrafluoroethylene>*288)
    .duration(800)
    .EUt(2000)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:machine:784>,<contenttweaker:naquadaalloycoil>*2,<contenttweaker:twocryogeniccoolant>*2)
    .outputs(<modularmachinery:blockenergyinputhatch:7>)
    .fluidInputs(<liquid:polybenzimidazole>*288)
    .duration(800)
    .EUt(120000)
    .buildAndRegister();

recipes.addShaped(<modularmachinery:furnace_controller>, [	[<ore:plateSteel>, <ore:circuitGood>, <ore:plateSteel>], 	[<ore:circuitGood>, <contenttweaker:vacuumfurnacecasing>, <ore:circuitGood>], 	[<ore:plateSteel>, <ore:circuitGood>, <ore:plateSteel>]]);
recipes.addShaped(<modularmachinery:sint_controller>, [	[<ore:plateSteel>, <ore:circuitGood>, <ore:plateSteel>], 	[<ore:stickLongSteel>, <contenttweaker:copperalloycoilblock>, <ore:stickLongSteel>], 	[<ore:plateSteel>, <ore:circuitGood>, <ore:plateSteel>]]);
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShapeless(<modularmachinery:blockinputbus:2>, [<ore:chest>,<gregtech:machine_casing>]);
recipes.addShapeless(<modularmachinery:blockoutputbus:2>, 	[<modularmachinery:blockinputbus:2>]);
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);
recipes.addShaped(<modularmachinery:roaster_controller>, [	[<ore:plateDoubleInvar>, <ore:circuitAdvanced>, <ore:plateDoubleInvar>], 	[<ore:circuitAdvanced>, <ore:frameGtBlackSteel>, <ore:circuitAdvanced>], 	[<ore:plateDoubleInvar>, <ore:circuitAdvanced>, <ore:plateDoubleInvar>]]);
recipes.remove(<modularmachinery:blockfluidinputhatch:2>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [	[null, <thermalexpansion:tank>],	[null, <gregtech:machine:501>]]);
recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [	[<gregtech:machine:703>, null, null], 	[null, null, null], 	[null, null, null]]);
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [	[<gregtech:machine:713>, null, null],	[null, null, null], 	[null, null, null]]);
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShaped(<modularmachinery:dequantizer_controller>, [	[<ore:plateTgtalloy>, <ore:plateTgtalloy>, <ore:plateTgtalloy>], 	[<contenttweaker:forcefieldgenerator>, <contenttweaker:highpowercasing>, <contenttweaker:forcefieldgenerator>], 	[<ore:plateTgtalloy>, <ore:plateTgtalloy>, <ore:plateTgtalloy>]]);
recipes.addShaped(<modularmachinery:visbreaker_controller>, [	[<contenttweaker:bulatsteelplate>, <contenttweaker:bulatsteelplate>, <contenttweaker:bulatsteelplate>], 	[<gregtech:meta_item_1:32611>, <ore:frameGtSteel>, <gregtech:meta_item_1:32611>], 	[<contenttweaker:bulatsteelplate>, <contenttweaker:bulatsteelplate>, <contenttweaker:bulatsteelplate>]]);
recipes.addShaped(<modularmachinery:heat_controller>, [	[<gregtech:meta_item_1:32644>, <ore:frameGtTungstenSteel>, <gregtech:meta_item_1:32644>], 	[<gregtech:meta_item_1:32614>, <gregtech:machine:505>, <gregtech:meta_item_1:32614>], 	[<gregtech:meta_item_1:32644>, <ore:frameGtTungstenSteel>, <gregtech:meta_item_1:32644>]]);
recipes.addShaped(<modularmachinery:digester_controller>, [	[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], 	[<gregtech:meta_item_1:32612>, <gregtech:machine:504>, <gregtech:meta_item_1:32612>], 	[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);
recipes.addShaped(<modularmachinery:cstr_controller>, [	[<ore:gearAluminium>, <gregtech:meta_item_1:32612>, <ore:gearAluminium>], 	[<ore:springAluminium>, <gregtech:boiler_casing:1>, <ore:springAluminium>], 	[<ore:plateAluminium>, <gregtech:meta_item_1:32612>, <ore:plateAluminium>]]);
recipes.addShaped(<modularmachinery:fccu_controller>, [	[<gregtech:meta_item_1:32652>, <ore:circuitExtreme>, <gregtech:meta_item_1:32652>], 	[<ore:plateStainlessSteel>, <gregtech:boiler_casing>, <ore:plateStainlessSteel>], 	[<gregtech:meta_item_1:32652>, <ore:circuitExtreme>, <gregtech:meta_item_1:32652>]]);
recipes.addShaped(<modularmachinery:coker_controller>, [	[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], 	[<ore:circuitExtreme>, <gregtech:machine:503>, <ore:circuitExtreme>], 	[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>]]);
recipes.addShaped(<modularmachinery:vat_controller>, [	[<ore:plateStainlessSteel>, <ore:circuitSuperconductor>, <ore:plateStainlessSteel>], 	[<ore:gearSmallStainlessSteel>, <gregtech:machine:507>, <ore:gearSmallStainlessSteel>], 	[<ore:plateStainlessSteel>, <ore:circuitSuperconductor>, <ore:plateStainlessSteel>]]);
recipes.addShaped(<modularmachinery:combustion_controller>, [	[<ore:circuitExtreme>, <gregtech:meta_item_1:32652>, <ore:circuitExtreme>], 	[<gregtech:meta_item_1:32762>, <gregtech:machine:503>, <gregtech:meta_item_1:32762>], 	[<ore:circuitExtreme>, <gregtech:meta_item_1:32652>, <ore:circuitExtreme>]]);
recipes.addShaped(<modularmachinery:vacdistiller_controller>, [	[<gregtech:meta_item_1:32642>, <ore:circuitExtreme>, <gregtech:meta_item_1:32642>], 	[<gregtech:meta_item_1:32632>, <gregtech:machine:503>, <gregtech:meta_item_1:32632>], [<gregtech:meta_item_1:32642>, <ore:circuitExtreme>, <gregtech:meta_item_1:32642>]]);
recipes.addShaped(<modularmachinery:astro_controller>, [	[<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>], 	[<tconstruct:large_plate>.withTag({Material: "aluminium"}), <advancedrocketry:pipesealer>, <tconstruct:large_plate>.withTag({Material: "aluminium"})], 	[<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);
recipes.addShaped(<modularmachinery:fermentation_vat_controller>, [	[<gregtech:meta_item_1:32611>, <ore:circuitGood>, <gregtech:meta_item_1:32611>], 	[<ore:circuitGood>, <gregtech:machine:231>, <ore:circuitGood>], 	[<gregtech:meta_item_1:32651>, <ore:wireGtDoubleAluminium>, <gregtech:meta_item_1:32651>]]);
recipes.addShaped(<modularmachinery:dilution_controller>, [	[<gregtech:meta_item_1:32613>, <gregtech:meta_item_1:32603>, <gregtech:meta_item_1:32613>], 	[<gregtech:machine:1021>, <gregtech:machine:504>, <gregtech:machine:1021>], 	[<ore:circuitElite>, <ore:circuitMaster>, <ore:circuitElite>]]);





assembler.recipeBuilder()
    .inputs(<gregtech:machine:724>,<contenttweaker:cupronickelcoil>*2,<gregtech:cable:5018>*4)
    .fluidInputs(<liquid:gold>*144)
    .outputs(<modularmachinery:blockenergyinputhatch:1>)
    .duration(200)
    .EUt(144)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:machine:725>,<contenttweaker:cupronickelcoil>*2,<gregtech:cable:5018>*4)
    .fluidInputs(<liquid:gold>*144)
    .outputs(<modularmachinery:blockenergyoutputhatch:1>)
    .duration(200)
    .EUt(144)
    .buildAndRegister();






















