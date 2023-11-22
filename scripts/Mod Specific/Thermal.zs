import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.CompressionDynamo;

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
val magnet = mods.gregtech.recipe.RecipeMap.getByName("electromagnetic_separator");

mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:seed_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:creosote>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:tree_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil_heavy>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crude_oil>);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:fire_water>);

mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_material:1>,<enderio:item_material>,<enderio:item_material:51>, 10000);
mods.thermalexpansion.InductionSmelter.addRecipe(<gregtech:meta_item_1:10095>,<gregtech:meta_item_1:2095>,<minecraft:sand>, 100);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_material:54>,<enderio:item_material:1>,<enderio:item_material:67>, 10000);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:silversteel>,<gtadditions:ga_dust:32014>, <minecraft:sand>, 200);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>,<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:2061>, 200);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:4>, <minecraft:iron_ingot>, <minecraft:redstone> * 2, 400);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:4>, <gregtech:meta_item_1:2033>, <minecraft:redstone> * 2, 400);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>, <gtadditions:ga_dust:32016>, <gregtech:meta_item_1:2071>, 400);
mods.thermalexpansion.InductionSmelter.addRecipe(<gregtech:meta_item_1:2061>*2, <minecraft:sand>, <minecraft:sand>, 400);
mods.thermalexpansion.InductionSmelter.addRecipe(<projectred-core:resource_item:250>, <minecraft:coal>, <minecraft:sand>*4, 1400);
mods.thermalexpansion.InductionSmelter.addRecipe(<gregtech:meta_item_1:12152>, <contenttweaker:woodeningotmold>, <gregtech:meta_item_1:32627>*5, 1400);
recipes.remove(<thermalfoundation:material:101>);
furnace.remove(<thermalfoundation:material:132>);

mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:high_octane>, 1800000);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:gasoline>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:gasoline>, 540000);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:oil>, 16000);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refined_oil>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:naphtha>, 256000);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:coal>, 100000);
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:rocket_fuel>);
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:rocket_fuel>, 2730000);

mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_platinum_0>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_platinum_0>, <thermalfoundation:material:865>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_platinum_0>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:101>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:102>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_nickel_0:3>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_iridium_0>, <thermalfoundation:material:866>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2051>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:12051>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <gregtech:meta_item_1:2184>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2106> * 4, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2106> * 4, <gregtech:meta_item_1:2033>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:288>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:12184>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2101> * 4, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2101> * 4, <gregtech:meta_item_1:2033>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:8357> * 4, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:8357> * 4, <gregtech:meta_item_1:2033>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:12112>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2112>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:289>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12797>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12548>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12152>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26543>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12694>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12963>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12031>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26912>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12071>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12542>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12741>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26824>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26561>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12524>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26807>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12312>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12094>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26398>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12041>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<thermalfoundation:material:295>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_2:26298>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12576>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>,<gregtech:meta_item_1:12709>);














mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:10518>, <gregtech:meta_item_1:10017>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:10518>, <gregtech:meta_item_1:2017>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2518>, <gregtech:meta_item_1:2017>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2518>, <gregtech:meta_item_1:10017>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <gregtech:meta_item_1:2518>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <gregtech:meta_item_1:2017>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2095>,<minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:291>,<minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:12095>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_iridium_0>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:ore_iridium_0>,<thermalfoundation:material:865>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:12032>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<gregtech:meta_item_1:2032>, <minecraft:sand>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:72>, <minecraft:sand>);


furnace.remove(<thermalfoundation:material:136>);
recipes.remove(<thermalexpansion:strongbox>);
recipes.remove(<thermalexpansion:cache>);
recipes.remove(<thermalexpansion:dynamo:1>);
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.remove(<thermalexpansion:dynamo:4>);
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.remove(<thermalexpansion:tank>);
recipes.remove(<thermalfoundation:material:1027>);
recipes.remove(<thermalfoundation:material:1026>);
recipes.remove(<thermalinnovation:drill:1>);

recipes.addShaped(<thermalinnovation:drill:1>, [	[null, <ore:ingotCopper>, null], 	[<ore:ingotElectricalSteel>, <thermalinnovation:drill>, <ore:ingotElectricalSteel>], 	[<ore:ingotCopper>, <contenttweaker:electricalsteelgear>, <ore:ingotCopper>]]);
recipes.addShaped(<thermalfoundation:material:656>, [	[null, <ore:plateIron>, null], 	[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>], 	[<ore:plateIron>, <ore:plateSteel>, <ore:plateIron>]]);
recipes.addShaped(<thermalexpansion:dynamo:3>, [	[<ore:plateIron>, <thermalfoundation:material:514>, <ore:plateIron>], 	[<ore:plateLead>, <gregtech:machine_casing:2>, <ore:plateLead>], 	[<ore:plateLead>, <ore:gearLead>, <ore:plateLead>]]);
recipes.addShaped(<thermalexpansion:dynamo:4>, [	[<ore:plateIron>, <thermalfoundation:material:514>, <ore:plateIron>], 	[<ore:plateElectrum>, <gregtech:machine_casing:2>, <ore:plateElectrum>], 	[<ore:plateElectrum>, <ore:gearElectrum>, <ore:plateElectrum>]]);
recipes.addShaped(<thermalexpansion:dynamo:2>, [	[<ore:plateIron>, <thermalfoundation:material:514>, <ore:plateIron>], 	[<ore:plateTin>, <gregtech:machine_casing:2>, <ore:plateTin>], 	[<ore:plateTin>, <ore:gearTin>, <ore:plateTin>]]);
recipes.addShaped(<thermalexpansion:dynamo:1>, [	[<ore:plateIron>, <thermalfoundation:material:514>, <ore:plateIron>], 	[<ore:plateInvar>, <gregtech:machine_casing:2>, <ore:plateInvar>], 	[<ore:plateInvar>, <ore:gearInvar>, <ore:plateInvar>]]);
recipes.addShaped(<thermalexpansion:tank>, [	[<gregtech:machine_casing:1>, <ore:blockGlassColorless>, <gregtech:machine_casing:1>], 	[<ore:plateCopper>, <ore:blockGlassColorless>, <ore:plateCopper>], 	[<ore:plateCopper>, <gregtech:machine:812>, <ore:plateCopper>]]);
recipes.addShaped(<thermalexpansion:cache>, [	[<ore:plateTin>, <ore:plateAluminium>, <ore:plateTin>], 	[<ore:plateAluminium>, <ore:chest>, <ore:plateAluminium>], 	[<ore:plateTin>, <thermalfoundation:material:512>, <ore:plateTin>]]);
recipes.addShaped(<thermalexpansion:strongbox>, [	[null, <ore:plateAluminium>, null], 	[<ore:plateAluminium>, <ore:chest>, <ore:plateAluminium>], 	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped(<thermalexpansion:frame:129>, [	[<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>], 	[<ore:ingotIronCompressed>, <thermalexpansion:frame:128>, <ore:ingotIronCompressed>], 	[<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]]);
recipes.addShaped(<thermalfoundation:material:512>, [	[<contenttweaker:rubyingot>, <contenttweaker:bulatsteelplate>, <contenttweaker:rubyingot>], 	[null, <contenttweaker:bulatsteelplate>, null], 	[<contenttweaker:rubyingot>, <contenttweaker:bulatsteelplate>, <contenttweaker:rubyingot>]]);
recipes.addShaped(<thermalexpansion:frame:128>, [	[<ore:boltNaquadah>, <ore:plateDenseNaquadah>, <ore:boltNaquadah>], 	[<ore:plateDenseNaquadah>, <thermalexpansion:frame:64>, <ore:plateDenseNaquadah>], 	[<ore:boltNaquadah>, <ore:plateDenseNaquadah>, <ore:boltNaquadah>]]);
recipes.addShaped(<thermalexpansion:machine:3>, [	[<ore:plateIron>, <ore:compressed1xDustBedrock>, <ore:plateIron>], 	[<ore:itemSimpleMachineChassi>, <ore:craftingFurnace>, <ore:itemSimpleMachineChassi>], 	[<ore:gearStone>, <gregtech:machine_casing>, <ore:gearStone>]]);
recipes.addShaped(<thermalfoundation:material:514>, [	[null, <ore:plateSilver>, <ore:dustRegularRedstone>], 	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 	[<ore:dustRegularRedstone>, <ore:plateSilver>, null]]);
recipes.addShaped(<thermalexpansion:dynamo>, [	[<ore:wireGtSingleTin>, <thermalfoundation:material:514>, <ore:wireGtSingleTin>], 	[<ore:plateIron>, <minecraft:redstone>, <ore:plateIron>], 	[<ore:gearCopper>, <gregtech:meta_item_1:12018>, <ore:gearCopper>]]);
recipes.addShaped(<thermalfoundation:upgrade>, [	[<ore:foilBismuthBronze>, <ore:gearBismuthBronze>, <ore:foilBismuthBronze>], 	[<ore:plateInvar>, <ore:blockRedstone>, <ore:plateInvar>], 	[<ore:plateInvar>, <ore:gearInvar>, <ore:plateInvar>]]); 
recipes.addShaped(<thermalfoundation:upgrade:1>, [	[<ore:wireGtQuadrupleElectrum>, <ore:ingotStainlessSteel>, <ore:wireGtQuadrupleElectrum>], 	[<ore:foilElectrum>, <thermalfoundation:upgrade>, <ore:foilElectrum>], 	[<ore:plateElectrum>, <ore:gearElectrum>, <ore:plateElectrum>]]);
recipes.addShaped(<thermalfoundation:material:513>, [[null, <ore:plateGold>, <ore:dustRegularRedstone>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:dustRegularRedstone>, <ore:plateGold>, null]]);
recipes.addShaped(<thermalfoundation:material:515>, [[null, <ore:plateElectrum>, <ore:dustRegularRedstone>], [<ore:plateElectrum>, <ore:plateElectrum>, <ore:plateElectrum>], [<ore:dustRegularRedstone>, <ore:plateElectrum>, null]]);
recipes.addShaped(<thermalexpansion:capacitor>, [	[<thermalfoundation:material:514>, <gregtech:meta_item_1:32510>, <thermalfoundation:material:515>], 	[<ore:wireGtSingleMvSuperconductor>, <enderio:item_basic_capacitor>, <ore:wireGtSingleMvSuperconductor>], 	[<thermalfoundation:material:515>, <ore:circuitBasic>, <thermalfoundation:material:513>]]);
recipes.addShaped(<thermalexpansion:capacitor:1>, [[<contenttweaker:bulatfiberreinforcedcircuitboard>, <ore:pipeMediumSteel>, <contenttweaker:bulatfiberreinforcedcircuitboard>], [<ore:plateMagnalium>, <thermalexpansion:capacitor>, <ore:plateMagnalium>], [<ore:dyeMachine>, null, <ore:dyeMachine>]]);
recipes.addShaped(<thermalexpansion:capacitor:2>.withTag({Energy: 0}), [	[<enderio:item_basic_capacitor>, <ore:ingotRedstoneAlloy>,<enderio:item_basic_capacitor>], 	[null, <thermalexpansion:capacitor:1>, null], 	[<ore:plateElectrum>, <ore:ingotRedstoneAlloy>, <ore:plateElectrum>]]);
recipes.addShaped(<thermalexpansion:frame:64>, [	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>], 	[<ore:plateTungstenSteel>, <thermalexpansion:frame>, <ore:plateTungstenSteel>], 	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]]);
recipes.addShapeless(<thermalfoundation:upgrade:33>,[<thermalfoundation:upgrade:1>,<thaumicaugmentation:impulse_cannon_augment>]);
recipes.addShapeless(<thermalfoundation:upgrade:34>,[<thermalfoundation:upgrade:2>,<thaumicaugmentation:impulse_cannon_augment>]);
recipes.addShapeless(<thermalfoundation:upgrade:35>,[<thermalfoundation:upgrade:3>,<thaumicaugmentation:impulse_cannon_augment>]);
recipes.addShaped(<thermalexpansion:frame:131>, [	[<ore:plateSuperheavyHAlloy>, <ore:plateSuperheavyHAlloy>, <ore:plateSuperheavyHAlloy>], 	[<ore:plateSuperheavyHAlloy>, <thermalexpansion:frame:130>, <ore:plateSuperheavyHAlloy>], 	[<ore:plateSuperheavyHAlloy>, <ore:plateSuperheavyHAlloy>, <ore:plateSuperheavyHAlloy>]]);
recipes.addShaped(<thermalexpansion:frame:132>, [	[<ore:plateProtoAdamantium>, <ore:plateProtoAdamantium>, <ore:plateProtoAdamantium>], 	[<ore:plateProtoAdamantium>, <thermalexpansion:frame:131>, <ore:plateProtoAdamantium>], 	[<ore:plateProtoAdamantium>, <ore:plateProtoAdamantium>, <ore:plateProtoAdamantium>]]);
recipes.addShaped(<thermalfoundation:material:640>, [	[<ore:plateGold>, <ore:wireGtSingleRedAlloy>, <ore:plateGold>], 	[<ore:wireGtSingleRedAlloy>, <gregtech:meta_item_1:32600>, <ore:wireGtSingleRedAlloy>], 	[<ore:plateGold>, <ore:wireGtSingleRedAlloy>, <ore:plateGold>]]);
recipes.addShaped(<thermalfoundation:material:657>, [	[null, <ore:plateSteel>, null], 	[<ore:plateSteel>, <ore:rotorSteel>, <ore:plateSteel>], 	[null, <ore:plateSteel>, null]]);
recipes.addShaped(<thermalfoundation:security>, [	[null, <ore:nuggetSignalum>, null], 	[<ore:nuggetSignalum>, <ore:plateCopper>, <ore:nuggetSignalum>], 	[<ore:nuggetSignalum>, <ore:nuggetSignalum>, <ore:nuggetSignalum>]]);
recipes.remove(<thermalfoundation:material:657>);
recipes.remove(<thermalfoundation:security>);
recipes.addShaped(<thermalfoundation:wrench>, [	[null, <ore:plateSteel>, <ore:plateTin>], 	[null, <ore:stickSteel>, <ore:plateSteel>], 	[<ore:stickSteel>, null, null]]);
recipes.remove(<thermalfoundation:wrench>);

chemReactor.recipeBuilder()
    .fluidInputs(<liquid:glowstone>*144)
    .inputs(<minecraft:blaze_rod>,<enderio:block_holier_fog>)
    .outputs(<thermalfoundation:material:2050>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
macerator.recipeBuilder()
    .outputs(<thermalfoundation:material:2051>*6)
    .inputs(<thermalfoundation:material:2050>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*144)
    .inputs(<minecraft:blaze_rod>,<enderio:block_holier_fog>)
    .outputs(<thermalfoundation:material:2052>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
macerator.recipeBuilder()
    .outputs(<thermalfoundation:material:2053>*6)
    .inputs(<thermalfoundation:material:2052>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
lcr.recipeBuilder()
    .fluidInputs(<liquid:obsidian>*144)
    .inputs(<minecraft:blaze_rod>,<enderio:block_holier_fog>)
    .outputs(<thermalfoundation:material:2052>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();

lcr.recipeBuilder()
    .fluidInputs(<liquid:glowstone>*144)
    .inputs(<minecraft:blaze_rod>,<enderio:block_holier_fog>)
    .outputs(<thermalfoundation:material:2050>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
chemReactor.recipeBuilder()
    .fluidInputs(<liquid:ice>*144)
    .inputs(<minecraft:blaze_rod>,<enderio:block_holier_fog>)
    .outputs(<thermalfoundation:material:2048>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();
    
macerator.recipeBuilder()
    .outputs(<gregtech:meta_item_1:2951>*6)
    .inputs(<thermalfoundation:material:2048>)
    .duration(200)
    .EUt(112)
    .buildAndRegister();