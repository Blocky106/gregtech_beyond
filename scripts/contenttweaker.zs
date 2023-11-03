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

var luminated_quartzite = VanillaFactory.createItem("luminated_quartzite");
luminated_quartzite.register();

var bronzeblend = VanillaFactory.createItem("bronzeblend");
bronzeblend.register();

var woodgear = VanillaFactory.createItem("woodgear");
woodgear.register();

var hammer = VanillaFactory.createItem("hammer");
hammer.maxStackSize = 1;
hammer.maxDamage = 20;
hammer.register();

var bulatsteelingot = VanillaFactory.createItem("bulatsteelingot");
bulatsteelingot.register();

var bulatsteeldust = VanillaFactory.createItem("bulatsteeldust");
bulatsteeldust.register();

var stretchedwool = VanillaFactory.createItem("stretchedwool");
stretchedwool.register();

var unfiredfireclaybrick = VanillaFactory.createItem("unfiredfireclaybrick");
unfiredfireclaybrick.register();

var stoneknife = VanillaFactory.createItem("stoneknife");
stoneknife.maxStackSize = 1;
stoneknife.maxDamage = 10;
stoneknife.register();

var electricalsteelplate = VanillaFactory.createItem("electricalsteelplate");
electricalsteelplate.register();

var silversteel = VanillaFactory.createItem("silversteel");
silversteel.register();

var electricalsteelgear = VanillaFactory.createItem("electricalsteelgear");
electricalsteelgear.register();

var silversteelgear = VanillaFactory.createItem("silversteelgear");
silversteelgear.register();

var silversteelplate = VanillaFactory.createItem("silversteelplate");
silversteelplate.register();

var bulatsteelplate = VanillaFactory.createItem("bulatsteelplate");
bulatsteelplate.register();

var bulatsteelgear = VanillaFactory.createItem("bulatsteelgear");
bulatsteelgear.register();

var silversteeldust = VanillaFactory.createItem("silversteeldust");
silversteeldust.register();

var silversteelrod = VanillaFactory.createItem("silversteelrod");
silversteelrod.register();

var bulatsteelrod = VanillaFactory.createItem("bulatsteelrod");
bulatsteelrod.register();

var electricalsteelrod = VanillaFactory.createItem("electricalsteelrod");
electricalsteelrod.register();

var Wrench = VanillaFactory.createItem("Wrench");
Wrench.maxDamage = 200;
Wrench.register();

var longelectricalsteelrod = VanillaFactory.createItem("longelectricalsteelrod");
longelectricalsteelrod.register();

var longbulatsteelrod = VanillaFactory.createItem("longbulatsteelrod");
longbulatsteelrod.register();

var longsilversteelrod = VanillaFactory.createItem("longsilversteelrod");
longsilversteelrod.register();

var advancedalloygear = VanillaFactory.createItem("advancedalloygear");
advancedalloygear.register();

var lasercrystal = VanillaFactory.createItem("lasercrystal");
lasercrystal.register();

var lasermodule = VanillaFactory.createItem("lasermodule");
lasermodule.register();

var blackfluid = VanillaFactory.createFluid("blackfluid", Color.fromHex("090909"));
blackfluid.temperature=(1350);
blackfluid.register();

var catalyst = VanillaFactory.createItem("catalyst");
catalyst.register();

var blackirondust = VanillaFactory.createItem("blackirondust");
blackirondust.register();

var lumin = VanillaFactory.createFluid("lumin", Color.fromHex("bab709"));
lumin.temperature=(700);
lumin.register();

var silveralloyplate = VanillaFactory.createItem("silveralloyplate");
silveralloyplate.register();

var silveralloydust = VanillaFactory.createItem("silveralloydust");
silveralloydust.register();

var silveralloyingot = VanillaFactory.createItem("silveralloyingot");
silveralloyingot.register();

var blazingrod = VanillaFactory.createItem("blazingrod");
blazingrod.register();

var bronzeelectrontube = VanillaFactory.createItem("bronzeelectrontube");
bronzeelectrontube.register();

var bisphenolb = VanillaFactory.createFluid("bisphenolb", Color.fromHex("6B5802"));
bisphenolb.temperature=(700);
bisphenolb.register();

var electricalsteeldust = VanillaFactory.createItem("electricalsteeldust");
electricalsteeldust.register();

var supercooleddust = VanillaFactory.createItem("supercooleddust");
supercooleddust.register();

var supercooledingot = VanillaFactory.createItem("supercooledingot");
supercooledingot.register();

var rubyingot = VanillaFactory.createItem("rubyingot");
rubyingot.register();

var supercooledplate = VanillaFactory.createItem("supercooledplate");
supercooledplate.register();

var darksteeldust = VanillaFactory.createItem("darksteeldust");
darksteeldust.register();

var bulatfiberreinforcedcircuitboard = VanillaFactory.createItem("bulatfiberreinforcedcircuitboard");
bulatfiberreinforcedcircuitboard.register();

var ic2coolant = VanillaFactory.createFluid("ic2coolant", Color.fromHex("185EAD"));
ic2coolant.temperature=(700);
ic2coolant.register();

var bisphenolbsheet = VanillaFactory.createItem("bisphenolbsheet");
bisphenolbsheet.register();

var bisphenolbdust = VanillaFactory.createItem("bisphenolbdust");
bisphenolbdust.register();

var bisphenolbingot = VanillaFactory.createItem("bisphenolbingot");
bisphenolbingot.register();

var tetraethylene = VanillaFactory.createFluid("tetraethylene", Color.fromHex("4a4a4a"));
tetraethylene.temperature=(300);
tetraethylene.register();

var hotvibrantalloyingot = VanillaFactory.createItem("hotvibrantalloyingot");
hotvibrantalloyingot.register();

var nichromerichblend = VanillaFactory.createItem("nichromerichblend");
nichromerichblend.register();

var heavydutyalloyt1 = VanillaFactory.createItem("heavydutyalloyt1");
heavydutyalloyt1.register();

var titaniumtetrachloridedust = VanillaFactory.createItem("titaniumtetrachloridedust");
titaniumtetrachloridedust.register();

var heavydutyalloyt2 = VanillaFactory.createItem("heavydutyalloyt2");
heavydutyalloyt2.register();

var hotplatinumingot = VanillaFactory.createItem("hotplatinumingot");
hotplatinumingot.register();

var moltenpulsatingiron = VanillaFactory.createFluid("moltenpulsatingiron", Color.fromHex("33A61C"));
moltenpulsatingiron.temperature=(1300);
moltenpulsatingiron.register();

var keyboard = VanillaFactory.createItem("keyboard");
keyboard.register();

var heavydutyalloyt3 = VanillaFactory.createItem("heavydutyalloyt3");
heavydutyalloyt3.register();

var manatitaniumprocesser = VanillaFactory.createItem("manatitaniumprocesser");
manatitaniumprocesser.register();

var osmiridiumcircuit = VanillaFactory.createItem("osmiridiumcircuit");
osmiridiumcircuit.register();

var titaniumcircuit = VanillaFactory.createItem("titaniumcircuit");
titaniumcircuit.register();

var tritaniumcircuit = VanillaFactory.createItem("tritaniumcircuit");
tritaniumcircuit.register();

var tungstencircuit = VanillaFactory.createItem("tungstencircuit");
tungstencircuit.register();

var hssgcircuit = VanillaFactory.createItem("hssgcircuit");
hssgcircuit.register();

var greensteelingot = VanillaFactory.createItem("greensteelingot");
greensteelingot.register();

var greensteeldust = VanillaFactory.createItem("greensteeldust");
greensteeldust.register();

var greensteelrod = VanillaFactory.createItem("greensteelrod");
greensteelrod.register();

var greensteelplate = VanillaFactory.createItem("greensteelplate");
greensteelplate.register();

var titaniumcontainingice = VanillaFactory.createBlock("titaniumcontainingice", <blockmaterial:ice>);
titaniumcontainingice.setBlockHardness(10.0);
titaniumcontainingice.setBlockResistance(10.0);
titaniumcontainingice.setToolClass("pickaxe");
titaniumcontainingice.setToolLevel(4);
titaniumcontainingice.setBlockSoundType(<soundtype:glass>);
titaniumcontainingice.register();

var heavydutyalloyt4 = VanillaFactory.createItem("heavydutyalloyt4");
heavydutyalloyt4.register();

var platinumsaltore = VanillaFactory.createBlock("platinumsaltore", <blockmaterial:rock>);
platinumsaltore.setBlockHardness(10.0);
platinumsaltore.setBlockResistance(10.0);
platinumsaltore.setToolClass("pickaxe");
platinumsaltore.setToolLevel(5);
platinumsaltore.setBlockSoundType(<soundtype:metal>);
platinumsaltore.register();

var cryoliteore = VanillaFactory.createBlock("cryoliteore", <blockmaterial:rock>);
cryoliteore.setBlockHardness(10.0);
cryoliteore.setBlockResistance(10.0);
cryoliteore.setToolClass("pickaxe");
cryoliteore.setToolLevel(5);
cryoliteore.setBlockSoundType(<soundtype:metal>);
cryoliteore.register();

var cryolitedust = VanillaFactory.createItem("cryolitedust");
cryolitedust.register();

var energeticblend = VanillaFactory.createItem("energeticblend");
energeticblend.register();



var computercasing = VanillaFactory.createBlock("computercasing", <blockmaterial:rock>);
computercasing.setBlockHardness(10.0);
computercasing.setBlockResistance(10.0);
computercasing.setToolClass("pickaxe");
computercasing.setToolLevel(5);
computercasing.setBlockSoundType(<soundtype:metal>);
computercasing.register();

var mattercasing = VanillaFactory.createBlock("mattercasing", <blockmaterial:rock>);
mattercasing.setBlockHardness(10.0);
mattercasing.setBlockResistance(10.0);
mattercasing.setToolClass("pickaxe");
mattercasing.setToolLevel(5);
mattercasing.setBlockSoundType(<soundtype:metal>);
mattercasing.register();

var electroniccasing = VanillaFactory.createBlock("electroniccasing", <blockmaterial:rock>);
electroniccasing.setBlockHardness(10.0);
electroniccasing.setBlockResistance(10.0);
electroniccasing.setToolClass("pickaxe");
electroniccasing.setToolLevel(5);
electroniccasing.setBlockSoundType(<soundtype:metal>);
electroniccasing.register();

var advcomputercasing = VanillaFactory.createBlock("advcomputercasing", <blockmaterial:rock>);
advcomputercasing.setBlockHardness(10.0);
advcomputercasing.setBlockResistance(10.0);
advcomputercasing.setToolClass("pickaxe");
advcomputercasing.setToolLevel(5);
advcomputercasing.setBlockSoundType(<soundtype:metal>);
advcomputercasing.register();

var highpowercasing = VanillaFactory.createBlock("highpowercasing", <blockmaterial:rock>);
highpowercasing.setBlockHardness(10.0);
highpowercasing.setBlockResistance(10.0);
highpowercasing.setToolClass("pickaxe");
highpowercasing.setToolLevel(5);
highpowercasing.setBlockSoundType(<soundtype:metal>);
highpowercasing.register();

var woodeningotmold = VanillaFactory.createItem("woodeningotmold");
woodeningotmold.register();

var elementDs = VanillaFactory.createItem("elementDs");
elementDs.register();

var sElementTs = VanillaFactory.createItem("sElementTs");
sElementTs.register();

var elementFm = VanillaFactory.createItem("elementFm");
elementFm.register();

var elementLu = VanillaFactory.createItem("elementLu");
elementLu.register();

var elementTi = VanillaFactory.createItem("elementTi");
elementTi.register();

var elementTr = VanillaFactory.createItem("elementTr");
elementTr.register();

var sElementP = VanillaFactory.createItem("sElementP");
sElementP.register();

var elementW = VanillaFactory.createItem("elementW");
elementW.register();

var resonantseaborgiumdust = VanillaFactory.createItem("resonantseaborgiumdust");
resonantseaborgiumdust.register();

var hotresonantseaborgiumingot = VanillaFactory.createItem("hotresonantseaborgiumingot");
hotresonantseaborgiumingot.register();

var resonantseaborgiumingot = VanillaFactory.createItem("resonantseaborgiumingot");
resonantseaborgiumingot.register();

var cryogeniccasing = VanillaFactory.createBlock("cryogeniccasing", <blockmaterial:rock>);
cryogeniccasing.setBlockHardness(10.0);
cryogeniccasing.setBlockResistance(10.0);
cryogeniccasing.setToolClass("pickaxe");
cryogeniccasing.setToolLevel(5);
cryogeniccasing.setBlockSoundType(<soundtype:metal>);
cryogeniccasing.register();

var cryogeniccoolant = VanillaFactory.createFluid("cryogeniccoolant", Color.fromHex("BDECFC"));
cryogeniccoolant.temperature=(0);
cryogeniccoolant.register();

var moltenresonantseaborgium = VanillaFactory.createFluid("moltenresonantseaborgium", Color.fromHex("54D66B"));
moltenresonantseaborgium.temperature=(1800);
moltenresonantseaborgium.register();

var moltenmodularium = VanillaFactory.createFluid("moltenmodularium", Color.fromHex("FFFFFF"));
moltenmodularium.temperature=(1400);
moltenmodularium.register();

var moltencompressediron = VanillaFactory.createFluid("moltencompressediron", Color.fromHex("363636"));
moltencompressediron.temperature=(2300);
moltencompressediron.register();

var primalquarkdegeneratematterplasma = VanillaFactory.createFluid("primalquarkdegeneratematterplasma", Color.fromHex("A39090"));
primalquarkdegeneratematterplasma.temperature=(230000);
primalquarkdegeneratematterplasma.register();


var moltenemerald = VanillaFactory.createFluid("moltenemerald", Color.fromHex("1AFF00"));
moltenemerald.temperature=(800);
moltenemerald.register();

var highlycomplicatedcosmicrubber = VanillaFactory.createFluid("highlycomplicatedcosmicrubber", Color.fromHex("6C706E"));
highlycomplicatedcosmicrubber.temperature=(80000);
highlycomplicatedcosmicrubber.register();

var crystaltinebaseingot = VanillaFactory.createItem("crystaltinebaseingot");
crystaltinebaseingot.register();

var draconiumenrichedamonia = VanillaFactory.createFluid("draconiumenrichedamonia", Color.fromHex("EA00FF"));
draconiumenrichedamonia.temperature=(400);
draconiumenrichedamonia.register();

var steamcrackeddraconiumenrichedamonia = VanillaFactory.createFluid("steamcrackeddraconiumenrichedamonia", Color.fromHex("EA00FF"));
steamcrackeddraconiumenrichedamonia.temperature=(400);
steamcrackeddraconiumenrichedamonia.register();

var draconiumcontainingmixture = VanillaFactory.createFluid("draconiumcontainingmixture", Color.fromHex("EA00FF"));
draconiumcontainingmixture.temperature=(400);
draconiumcontainingmixture.register();

var enhanceddraconiummixture = VanillaFactory.createFluid("enhanceddraconiummixture", Color.fromHex("EA00FF"));
enhanceddraconiummixture.temperature=(400);
enhanceddraconiummixture.register();

var draconiumsaltmixture = VanillaFactory.createFluid("draconiumsaltmixture", Color.fromHex("EA00FF"));
draconiumsaltmixture.temperature=(400);
draconiumsaltmixture.register();

var aircompresseddsm = VanillaFactory.createFluid("aircompresseddsm", Color.fromHex("EA00FF"));
aircompresseddsm.temperature=(400);
aircompresseddsm.register();

var draconiumdioxide = VanillaFactory.createFluid("draconiumdioxide", Color.fromHex("EA00FF"));
draconiumdioxide.temperature=(400);
draconiumdioxide.register();

var draconiumhexachloride = VanillaFactory.createFluid("draconiumhexachloride", Color.fromHex("EA00FF"));
draconiumhexachloride.temperature=(400);
draconiumhexachloride.register();

var draconiumhexafluoride = VanillaFactory.createFluid("draconiumhexafluoride", Color.fromHex("EA00FF"));
draconiumhexafluoride.temperature=(400);
draconiumhexafluoride.register();

var draconiumnitradesolution = VanillaFactory.createFluid("draconiumnitradesolution", Color.fromHex("EA00FF"));
draconiumnitradesolution.temperature=(400);
draconiumnitradesolution.register();

var depleteddraconiumnitradesolution = VanillaFactory.createFluid("depleteddraconiumnitradesolution", Color.fromHex("EA00FF"));
depleteddraconiumnitradesolution.temperature=(400);
depleteddraconiumnitradesolution.register();

var draconiumrichsolution = VanillaFactory.createFluid("draconiumrichsolution", Color.fromHex("EA00FF"));
draconiumrichsolution.temperature=(400);
draconiumrichsolution.register();

var obisdianinfuseddraconiummixture = VanillaFactory.createFluid("obisdianinfuseddraconiummixture", Color.fromHex("EA00FF"));
obisdianinfuseddraconiummixture.temperature=(1400);
obisdianinfuseddraconiummixture.register();

var refabricateddraconiumore = VanillaFactory.createBlock("refabricateddraconiumore", <blockmaterial:rock>);
refabricateddraconiumore.setBlockHardness(10.0);
refabricateddraconiumore.setBlockResistance(10.0);
refabricateddraconiumore.setToolClass("pickaxe");
refabricateddraconiumore.setToolLevel(5);
refabricateddraconiumore.setBlockSoundType(<soundtype:metal>);
refabricateddraconiumore.register();

var elementdr = VanillaFactory.createItem("elementdr");
elementdr.register();

var instablematter = VanillaFactory.createItem("instablematter");
instablematter.register();

var stablematter = VanillaFactory.createItem("stablematter");
stablematter.register();

var pvtchs = VanillaFactory.createFluid("pvtchs", Color.fromHex("C1D111"));
pvtchs.temperature=(1400);
pvtchs.register();

var draconiumfragment = VanillaFactory.createItem("draconiumfragment");
draconiumfragment.register();

var engine = VanillaFactory.createItem("engine");
engine.register();

var diamondaluminiumcasing = VanillaFactory.createItem("diamondaluminiumcasing");
diamondaluminiumcasing.register();

var compressedironnugget = VanillaFactory.createItem("compressedironnugget");
compressedironnugget.register();

var moltenvibrantalloy = VanillaFactory.createFluid("moltenvibrantalloy", Color.fromHex("38C20E"));
moltenvibrantalloy.temperature=(1400);
moltenvibrantalloy.register();


var advancedcraftingunit = VanillaFactory.createBlock("advancedcraftingunit", <blockmaterial:rock>);
advancedcraftingunit.setBlockHardness(10.0);
advancedcraftingunit.setBlockResistance(10.0);
advancedcraftingunit.setToolClass("pickaxe");
advancedcraftingunit.setToolLevel(5);
advancedcraftingunit.setBlockSoundType(<soundtype:metal>);
advancedcraftingunit.register();

var hotplatinumtitaniumingot = VanillaFactory.createItem("hotplatinumtitaniumingot");
hotplatinumtitaniumingot.register();

var hotsoulariumingot = VanillaFactory.createItem("hotsoulariumingot");
hotsoulariumingot.register();

var hvroboticcomponent = VanillaFactory.createItem("hvroboticcomponent");
hvroboticcomponent.register();

var soulariummetallicpowder = VanillaFactory.createItem("soulariummetallicpowder");
soulariummetallicpowder.register();

var refinedsoulariumpowder = VanillaFactory.createItem("refinedsoulariumpowder");
refinedsoulariumpowder.register();

var itemprocessort1 = VanillaFactory.createItem("itemprocessort1");
itemprocessort1.register();

var itemprocessort2 = VanillaFactory.createItem("itemprocessort2");
itemprocessort2.register();

var itemprocessort3 = VanillaFactory.createItem("itemprocessort3");
itemprocessort3.register();

var itemprocessort4 = VanillaFactory.createItem("itemprocessort4");
itemprocessort4.register();

var itemprocessorcoret1 = VanillaFactory.createItem("itemprocessorcoret1");
itemprocessorcoret1.register();

var itemprocessorcoret2 = VanillaFactory.createItem("itemprocessorcoret2");
itemprocessorcoret2.register();

var itemprocessorcoret3 = VanillaFactory.createItem("itemprocessorcoret3");
itemprocessorcoret3.register();

var itemprocessorcoret4 = VanillaFactory.createItem("itemprocessorcoret4");
itemprocessorcoret4.register();

var radiationproofplate = VanillaFactory.createItem("radiationproofplate");
radiationproofplate.register();

var wrappeduraniumingot = VanillaFactory.createItem("wrappeduraniumingot");
wrappeduraniumingot.register();

var graphiteuraniummixturedust = VanillaFactory.createItem("graphiteuraniummixturedust");
graphiteuraniummixturedust.register();

var rawatomicsperationcatalyst = VanillaFactory.createItem("rawatomicsperationcatalyst");
rawatomicsperationcatalyst.register();

var hotatomicseperationcatalyst = VanillaFactory.createItem("hotatomicseperationcatalyst");
hotatomicseperationcatalyst.register();

var advancedradiationproofplate = VanillaFactory.createItem("advancedradiationproofplate");
advancedradiationproofplate.register();

var hicomputationstationmk1 = VanillaFactory.createItem("hicomputationstationmk1");
hicomputationstationmk1.register();

var hicomputationstationmk2 = VanillaFactory.createItem("hicomputationstationmk2");
hicomputationstationmk2.register();

var hicomputationstationmk3 = VanillaFactory.createItem("hicomputationstationmk3");
hicomputationstationmk3.register();

var hicomputationstationmk4 = VanillaFactory.createItem("hicomputationstationmk4");
hicomputationstationmk4.register();

var hicomputationstationmk5 = VanillaFactory.createItem("hicomputationstationmk5");
hicomputationstationmk5.register();
 
var microheater = VanillaFactory.createItem("microheater");
microheater.register();

var hothikariumingot = VanillaFactory.createItem("hothikariumingot");
hothikariumingot.register();

var highdensityplutoniumnugget = VanillaFactory.createItem("highdensityplutoniumnugget");
highdensityplutoniumnugget.register();

var wrappedplutonium = VanillaFactory.createItem("wrappedplutonium");
wrappedplutonium.register();

var plutoniumbasedliquidfuel = VanillaFactory.createFluid("plutoniumbasedliquidfuel", Color.fromHex("EB1010"));
plutoniumbasedliquidfuel.temperature=(300);
plutoniumbasedliquidfuel.register();

var plutoniumbasedliquidfuele = VanillaFactory.createFluid("plutoniumbasedliquidfuele", Color.fromHex("C41010"));
plutoniumbasedliquidfuele.temperature=(300);
plutoniumbasedliquidfuele.register();

var neutronaccelerator = VanillaFactory.createBlock("neutronaccelerator", <blockmaterial:rock>);
neutronaccelerator.setBlockHardness(10.0);
neutronaccelerator.setBlockResistance(10.0);
neutronaccelerator.setToolClass("pickaxe");
neutronaccelerator.setToolLevel(5);
neutronaccelerator.setBlockSoundType(<soundtype:metal>);
neutronaccelerator.register();

var neutronsensor = VanillaFactory.createBlock("neutronsensor", <blockmaterial:rock>);
neutronsensor.setBlockHardness(10.0);
neutronsensor.setBlockResistance(10.0);
neutronsensor.setToolClass("pickaxe");
neutronsensor.setToolLevel(5);
neutronsensor.setBlockSoundType(<soundtype:metal>);
neutronsensor.register();

var highdensityplutonium = VanillaFactory.createItem("highdensityplutonium");
highdensityplutonium.register();

var perciseelectronicunitcasing = VanillaFactory.createBlock("perciseelectronicunitcasing", <blockmaterial:rock>);
perciseelectronicunitcasing.setBlockHardness(10.0);
perciseelectronicunitcasing.setBlockResistance(10.0);
perciseelectronicunitcasing.setToolClass("pickaxe");
perciseelectronicunitcasing.setToolLevel(5);
perciseelectronicunitcasing.setBlockSoundType(<soundtype:metal>);
perciseelectronicunitcasing.register();

var borontrioxide = VanillaFactory.createFluid("borontrioxide", Color.fromHex("64695D"));
borontrioxide.register();

var sodiumchloride = VanillaFactory.createFluid("sodiumchloride", Color.fromHex("5B6787"));
sodiumchloride.register();

var unprocessedboronsolution = VanillaFactory.createFluid("unprocessedboronsolution", Color.fromHex("739993"));
unprocessedboronsolution.register();

var unprocessedborondust = VanillaFactory.createItem("unprocessedborondust");
unprocessedborondust.register();

var boronnanoparticles = VanillaFactory.createItem("boronnanoparticles");
boronnanoparticles.register();

var liquidboronnanoparticles = VanillaFactory.createFluid("liquidboronnanoparticles", Color.fromHex("739993"));
liquidboronnanoparticles.register();

var hotmarcem200steelingot = VanillaFactory.createItem("hotmarcem200steelingot");
hotmarcem200steelingot.register();

var plutoniumoxideuraniummixturedust = VanillaFactory.createItem("plutoniumoxideuraniummixturedust");
plutoniumoxideuraniummixturedust.register();

var cupronickelcoil = VanillaFactory.createItem("cupronickelcoil");
cupronickelcoil.register();

var kanthalcoil = VanillaFactory.createItem("kanthalcoil");
kanthalcoil.register();

var nichromecoil = VanillaFactory.createItem("nichromecoil");
nichromecoil.register();

var tungstensteelcoil = VanillaFactory.createItem("tungstensteelcoil");
tungstensteelcoil.register();

var hssgcoil = VanillaFactory.createItem("hssgcoil");
hssgcoil.register();

var naquadacoil = VanillaFactory.createItem("naquadacoil");
naquadacoil.register();
 
var naquadaalloycoil = VanillaFactory.createItem("naquadaalloycoil");
naquadaalloycoil.register();

var superconductingcoil = VanillaFactory.createItem("superconductingcoil");
superconductingcoil.register();

var biocells = VanillaFactory.createItem("biocells");
biocells.register();

var bioprocesssingunit = VanillaFactory.createItem("bioprocesssingunit");
bioprocesssingunit.register();

var engravedmanyiullynchip = VanillaFactory.createItem("engravedmanyiullynchip");
engravedmanyiullynchip.register();

var engravedgoldchip = VanillaFactory.createItem("engravedgoldchip");
engravedgoldchip.register();

var engravedenergychip = VanillaFactory.createItem("engravedenergychip");
engravedenergychip.register();

var highdensityuraniumnugget = VanillaFactory.createItem("highdensityuraniumnugget");
highdensityuraniumnugget.register();

var highdensityuranium = VanillaFactory.createItem("highdensityuranium");
highdensityuranium.register();

var uraniumbasedliquidfuel = VanillaFactory.createFluid("uraniumbasedliquidfuel", Color.fromHex("034314"));
uraniumbasedliquidfuel.temperature=(300);
uraniumbasedliquidfuel.register();

var uraniumbasedliquidfuele = VanillaFactory.createFluid("uraniumbasedliquidfuele", Color.fromHex("034b16"));
uraniumbasedliquidfuele.temperature=(300);
uraniumbasedliquidfuele.register();

var tungsticnaquadah = VanillaFactory.createItem("tungsticnaquadah");
tungsticnaquadah.register();

var moltentungsticnaquadah = VanillaFactory.createFluid("moltentungsticnaquadah", Color.fromHex("1F1F1F"));
moltentungsticnaquadah.temperature=(1600);
moltentungsticnaquadah.register();

var sterilizedbiocatalystmedium = VanillaFactory.createFluid("sterilizedbiocatalystmedium", Color.fromHex("237A10"));
sterilizedbiocatalystmedium.temperature=(2600);
sterilizedbiocatalystmedium.register();

var rawsterilizedbiocatalystmedium = VanillaFactory.createFluid("rawsterilizedbiocatalystmedium", Color.fromHex("2E871A"));
rawsterilizedbiocatalystmedium.temperature=(300);
rawsterilizedbiocatalystmedium.register();

var hotmanyullyningot = VanillaFactory.createItem("hotmanyullyningot");
hotmanyullyningot.register();

var naquadahfuelrefinerycasing = VanillaFactory.createBlock("naquadahfuelrefinerycasing", <blockmaterial:rock>);
naquadahfuelrefinerycasing.setBlockHardness(10.0);
naquadahfuelrefinerycasing.setBlockResistance(10.0);
naquadahfuelrefinerycasing.setToolClass("pickaxe");
naquadahfuelrefinerycasing.setToolLevel(5);
naquadahfuelrefinerycasing.setBlockSoundType(<soundtype:metal>);
naquadahfuelrefinerycasing.register();

var fieldrestrictioncoil = VanillaFactory.createBlock("fieldrestrictioncoil", <blockmaterial:rock>);
fieldrestrictioncoil.setBlockHardness(10.0);
fieldrestrictioncoil.setBlockResistance(10.0);
fieldrestrictioncoil.setToolClass("pickaxe");
fieldrestrictioncoil.setToolLevel(5);
fieldrestrictioncoil.setBlockSoundType(<soundtype:metal>);
fieldrestrictioncoil.register();

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

var naqudahasphalt = VanillaFactory.createFluid("naqudahasphalt", Color.fromHex("137009"));
naqudahasphalt.temperature=(1300);
naqudahasphalt.register();

var hotadamantiumalloyingot = VanillaFactory.createItem("hotadamantiumalloyingot");
hotadamantiumalloyingot.register();

var hotblackplutoniumingot = VanillaFactory.createItem("hotblackplutoniumingot");
hotblackplutoniumingot.register();

var hotfluxedelectrumingot = VanillaFactory.createItem("hotfluxedelectrumingot");
hotfluxedelectrumingot.register();

var moderatelycrackednaquadahasphalt = VanillaFactory.createFluid("moderatelycrackednaquadahasphalt", Color.fromHex("227033"));
moderatelycrackednaquadahasphalt.temperature=(1300);
moderatelycrackednaquadahasphalt.register();

var acidnaquadahemulsion = VanillaFactory.createFluid("acidnaquadahemulsion", Color.fromHex("444A45"));
acidnaquadahemulsion.temperature=(2300);
acidnaquadahemulsion.register();

var naquadahemulsion = VanillaFactory.createFluid("naquadahemulsion", Color.fromHex("2C2E2C"));
naquadahemulsion.temperature=(1800);
naquadahemulsion.register();

var radioactivesludge = VanillaFactory.createItem("radioactivesludge");
radioactivesludge.register();

var bisphenolc = VanillaFactory.createFluid("bisphenolc", Color.fromHex("5D6575"));
bisphenolc.temperature=(2300);
bisphenolc.register();

var distilledmonazitedust = VanillaFactory.createItem("distilledmonazitedust");
distilledmonazitedust.register();

var monazitebasedpulp = VanillaFactory.createItem("monazitebasedpulp");
monazitebasedpulp.register();

var monazitecluster = VanillaFactory.createItem("monazitecluster");
monazitecluster.register();

var monazitedigesteddust = VanillaFactory.createItem("monazitedigesteddust");
monazitedigesteddust.register();

var monazitefilteredpulp = VanillaFactory.createItem("monazitefilteredpulp");
monazitefilteredpulp.register();

var monazitenitride = VanillaFactory.createItem("monazitenitride");
monazitenitride.register();

var monaziteoxide = VanillaFactory.createItem("monaziteoxide");
monaziteoxide.register();

var siftedmonazite = VanillaFactory.createItem("siftedmonazite");
siftedmonazite.register();

var monazitecakesolution = VanillaFactory.createFluid("monazitecakesolution", Color.fromHex("2A751B"));
monazitecakesolution.temperature=(2300);
monazitecakesolution.register();

var monazitefilteredcakesolution = VanillaFactory.createFluid("monazitefilteredcakesolution", Color.fromHex("1B5710"));
monazitefilteredcakesolution.temperature=(2300);
monazitefilteredcakesolution.register();

var osmiumsieve = VanillaFactory.createItem("osmiumsieve");
osmiumsieve.register();

var monazitefilteredsolution = VanillaFactory.createFluid("monazitefilteredsolution", Color.fromHex("294207"));
monazitefilteredsolution.temperature=(2300);
monazitefilteredsolution.register();

var thoriadust = VanillaFactory.createItem("thoriadust");
thoriadust.register();

var naquadahdopedmonazite = VanillaFactory.createItem("naquadahdopedmonazite");
naquadahdopedmonazite.register();

var sunnariumenrichedmonazite = VanillaFactory.createItem("sunnariumenrichedmonazite");
sunnariumenrichedmonazite.register();

var rutherfordiumcontainingnaqdopedmonazite = VanillaFactory.createItem("rutherfordiumcontainingnaqdopedmonazite");
rutherfordiumcontainingnaqdopedmonazite.register();

var sunnariumoxide = VanillaFactory.createItem("sunnariumoxide");
sunnariumoxide.register();

var sunnariumdioxide = VanillaFactory.createItem("sunnariumdioxide");
sunnariumdioxide.register();

var rutherfordiumcarbideoxide = VanillaFactory.createItem("rutherfordiumcarbideoxide");
rutherfordiumcarbideoxide.register();

var vanadiumtitaniumconentratedust = VanillaFactory.createItem("vanadiumtitaniumconentratedust");
vanadiumtitaniumconentratedust.register();

var sunaricoreresiduedust = VanillaFactory.createItem("sunaricoreresiduedust");
sunaricoreresiduedust.register();

var sunnariumxenontrioxidedust = VanillaFactory.createItem("sunnariumxenontrioxidedust");
sunnariumxenontrioxidedust.register();

var samaricinfusedresiduedust = VanillaFactory.createItem("samaricinfusedresiduedust");
samaricinfusedresiduedust.register();

var infusedgoldtrioxide = VanillaFactory.createItem("infusedgoldtrioxide");
infusedgoldtrioxide.register();

var electrocitinerawalloyingot = VanillaFactory.createItem("electrocitinerawalloyingot");
electrocitinerawalloyingot.register();

var fentanyl = VanillaFactory.createFluid("fentanyl", Color.fromHex("F8FCCC"));
fentanyl.temperature=(1200);
fentanyl.register();

var Desomorphine = VanillaFactory.createFluid("Desomorphine", Color.fromHex("DCFCCF"));
Desomorphine.temperature=(1200);
Desomorphine.register();

var highdensitythoria = VanillaFactory.createItem("highdensitythoria");
highdensitythoria.register();

var endsteelconcentrate = VanillaFactory.createItem("endsteelconcentrate");
endsteelconcentrate.register();

var hyperchargedleptontrapcrystal = VanillaFactory.createItem("hyperchargedleptontrapcrystal");
hyperchargedleptontrapcrystal.register();

var protoadamantiumplatedalloyplate = VanillaFactory.createItem("protoadamantiumplatedalloyplate");
protoadamantiumplatedalloyplate.register();

var protoadamantiumplatedalloyingot = VanillaFactory.createItem("protoadamantiumplatedalloyingot");
protoadamantiumplatedalloyingot.register();

var protoadamantiumalloycatalystdust = VanillaFactory.createItem("protoadamantiumalloycatalystdust");
protoadamantiumalloycatalystdust.register();

var moltenprotoadamantiumplatedalloy = VanillaFactory.createFluid("moltenprotoadamantiumplatedalloy", Color.fromHex("252b7a"));
moltenprotoadamantiumplatedalloy.temperature=(1800);
moltenprotoadamantiumplatedalloy.register();

var protoadamantiumalloycatalyst = VanillaFactory.createFluid("protoadamantiumalloycatalyst", Color.fromHex("2c3393"));
protoadamantiumalloycatalyst.temperature=(2200);
protoadamantiumalloycatalyst.register();

var refinedglue = VanillaFactory.createFluid("refinedglue", Color.fromHex("A9AD21"));
refinedglue.register();

var infinityplatedplate = VanillaFactory.createItem("infinityplatedplate");
infinityplatedplate.register();

var infinityplatedingot = VanillaFactory.createItem("infinityplatedingot");
infinityplatedingot.register();

var assemblingcomponent = VanillaFactory.createItem("assemblingcomponent");
assemblingcomponent.register();

var naquadahactivationliquid = VanillaFactory.createFluid("naquadahactivationliquid", Color.fromHex("2b1303"));
naquadahactivationliquid.register();

var unimprintedcrystalcpu = VanillaFactory.createItem("unimprintedcrystalcpu");
unimprintedcrystalcpu.register();

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

var computation = VanillaFactory.createItem("computation");
computation.register();

var computationcomponent = VanillaFactory.createItem("computationcomponent");
computationcomponent.register();

var ganymede = VanillaFactory.createItem("ganymede");
ganymede.register();

var io = VanillaFactory.createItem("io");
io.register();

var barnadac = VanillaFactory.createItem("barnadac");
barnadac.register();

var callisto = VanillaFactory.createItem("callisto");
callisto.register();

var ceres = VanillaFactory.createItem("ceres");
ceres.register();

var diona = VanillaFactory.createItem("diona");
diona.register();

var enceladus = VanillaFactory.createItem("enceladus");
enceladus.register();

var europa = VanillaFactory.createItem("europa");
europa.register();

var haumea = VanillaFactory.createItem("haumea");
haumea.register();

var kupiterbelt = VanillaFactory.createItem("kupiterbelt");
kupiterbelt.register();

var mercury = VanillaFactory.createItem("mercury");
mercury.register();

var miranda = VanillaFactory.createItem("miranda");
miranda.register();

var phobos = VanillaFactory.createItem("phobos");
phobos.register();

var pluto = VanillaFactory.createItem("pluto");
pluto.register();

var proximab = VanillaFactory.createItem("proximab");
proximab.register();

var taucetif = VanillaFactory.createItem("taucetif");
taucetif.register();

var titan = VanillaFactory.createItem("titan");
titan.register();

var triton = VanillaFactory.createItem("triton");
triton.register();

var circuitcompundmk1 = VanillaFactory.createItem("circuitcompundmk1");
circuitcompundmk1.register();

var circuitcompundmk2 = VanillaFactory.createItem("circuitcompundmk2");
circuitcompundmk2.register();

var circuitcompundmk3 = VanillaFactory.createItem("circuitcompundmk3");
circuitcompundmk3.register();

var advancedcircuitmold = VanillaFactory.createItem("advancedcircuitmold");
advancedcircuitmold.register();

var hotactivatednaquadahingot = VanillaFactory.createItem("hotactivatednaquadahingot");
hotactivatednaquadahingot.register();

var molteninfnite = VanillaFactory.createFluid("molteninfnite", Color.fromHex("6099C4"));
molteninfnite.temperature=(9999);
molteninfnite.register();

var titansteelcoil = VanillaFactory.createItem("titansteelcoil");
titansteelcoil.register();

var pykoniumcoil = VanillaFactory.createItem("pykoniumcoil");
pykoniumcoil.register();

var infinitycoil = VanillaFactory.createItem("infinitycoil");
infinitycoil.register();

var blacktitaniumcoil = VanillaFactory.createItem("blacktitaniumcoil");
blacktitaniumcoil.register();

var neutroniumcoil = VanillaFactory.createItem("neutroniumcoil");
neutroniumcoil.register();

var cosmicneutroniumcoil = VanillaFactory.createItem("cosmicneutroniumcoil");
cosmicneutroniumcoil.register();

var heavydutyalloyt5 = VanillaFactory.createItem("heavydutyalloyt5");
heavydutyalloyt5.register();

var heavydutyalloyt6 = VanillaFactory.createItem("heavydutyalloyt6");
heavydutyalloyt6.register();

var hppic = VanillaFactory.createItem("hppic");
hppic.register();

var hppicwafer = VanillaFactory.createItem("hppicwafer");
hppicwafer.register();

var silicongradedust = VanillaFactory.createItem("silicongradedust");
silicongradedust.register();

var iron4chloride = VanillaFactory.createFluid("iron4chloride", Color.fromHex("424242"));
iron4chloride.register();

var yzcetib = VanillaFactory.createItem("yzcetib");
yzcetib.register();

var yzcetic = VanillaFactory.createItem("yzcetic");
yzcetic.register();

var yzcetid = VanillaFactory.createItem("yzcetid");
yzcetid.register();

var trappist1c = VanillaFactory.createItem("trappist1c");
trappist1c.register();

var trappist1e = VanillaFactory.createItem("trappist1e");
trappist1e.register();

var overworld = VanillaFactory.createItem("overworld");
overworld.register();

var venus = VanillaFactory.createItem("venus");
venus.register();

var moon = VanillaFactory.createItem("moon");
moon.register();

var asteroids = VanillaFactory.createItem("asteroids");
asteroids.register();

var fronos = VanillaFactory.createItem("fronos");
fronos.register();

var chalos = VanillaFactory.createItem("chalos");
chalos.register();

var mars = VanillaFactory.createItem("mars");
mars.register();

var nibiru = VanillaFactory.createItem("nibiru");
nibiru.register();

var uhepic = VanillaFactory.createItem("uhepic");
uhepic.register();

var hotantoingot = VanillaFactory.createItem("hotantoingot");
hotantoingot.register();

var hotultimateingot = VanillaFactory.createItem("hotultimateingot");
hotultimateingot.register();

var tiedhay = VanillaFactory.createItem("tiedhay");
tiedhay.register();

var hotincoloy945xingot = VanillaFactory.createItem("hotincoloy945xingot");
hotincoloy945xingot.register();

var electricalrutherfordiumcupritecasing = VanillaFactory.createBlock("electricalrutherfordiumcupritecasing", <blockmaterial:rock>);
electricalrutherfordiumcupritecasing.setBlockHardness(10.0);
electricalrutherfordiumcupritecasing.setBlockResistance(10.0);
electricalrutherfordiumcupritecasing.setToolClass("pickaxe");
electricalrutherfordiumcupritecasing.setToolLevel(7);
electricalrutherfordiumcupritecasing.setBlockSoundType(<soundtype:metal>);
electricalrutherfordiumcupritecasing.register();

var particleprotectioncasing = VanillaFactory.createBlock("particleprotectioncasing", <blockmaterial:rock>);
particleprotectioncasing.setBlockHardness(10.0);
particleprotectioncasing.setBlockResistance(10.0);
particleprotectioncasing.setToolClass("pickaxe");
particleprotectioncasing.setToolLevel(7);
particleprotectioncasing.setBlockSoundType(<soundtype:metal>);
particleprotectioncasing.register();

var moltenrawneutronium = VanillaFactory.createFluid("moltenrawneutronium", Color.fromHex("F5F2D6"));
moltenrawneutronium.register();

var rawneutroniumdust = VanillaFactory.createItem("rawneutroniumdust");
rawneutroniumdust.register();

var rawneutroniumingot = VanillaFactory.createItem("rawneutroniumingot");
rawneutroniumingot.register();

var hotrawneutroniumingot = VanillaFactory.createItem("hotrawneutroniumingot");
hotrawneutroniumingot.register();

var plutoniumuraniumferitemixturedust = VanillaFactory.createItem("plutoniumuraniumferitemixturedust");
plutoniumuraniumferitemixturedust.register();

var moxferritedust = VanillaFactory.createItem("moxferritedust");
moxferritedust.register();

var ulpicwafer = VanillaFactory.createItem("ulpicwafer");
ulpicwafer.register();

var ulpic = VanillaFactory.createItem("ulpic");
ulpic.register();

var lpicwafer = VanillaFactory.createItem("lpicwafer");
lpicwafer.register();

var lpic = VanillaFactory.createItem("lpic");
lpic.register();

var flintstiffednet = VanillaFactory.createItem("flintstiffednet");
flintstiffednet.register();

var aluminiumreinforcednet = VanillaFactory.createItem("aluminiumreinforcednet");
aluminiumreinforcednet.register();

var europiumdopednet = VanillaFactory.createItem("europiumdopednet");
europiumdopednet.register();

var sterilizedeuropiumnet = VanillaFactory.createItem("sterilizedeuropiumnet");
sterilizedeuropiumnet.register();

var zeliusactivationfluid = VanillaFactory.createFluid("zeliusactivationfluid", Color.fromHex("734ca4"));
zeliusactivationfluid.register();

var net = VanillaFactory.createItem("net");
net.register();

var flintshard = VanillaFactory.createItem("flintshard");
flintshard.register();

var dehydratedaluminiumcatalyst = VanillaFactory.createItem("dehydratedaluminiumcatalyst");
dehydratedaluminiumcatalyst.register();

var aluminiumcatalyst = VanillaFactory.createItem("aluminiumcatalyst");
aluminiumcatalyst.register();

var rdxdust = VanillaFactory.createItem("rdxdust");
rdxdust.register();

var hdxdust = VanillaFactory.createItem("hdxdust");
hdxdust.register();

var formaldehydedust = VanillaFactory.createItem("formaldehydedust");
formaldehydedust.register();

var hexaminedust = VanillaFactory.createItem("hexaminedust");
hexaminedust.register();

var onecoolant = VanillaFactory.createItem("onecoolant");
onecoolant.register();

var onecryogeniccoolant = VanillaFactory.createItem("onecryogeniccoolant");
onecryogeniccoolant.register();

var twocryogeniccoolant = VanillaFactory.createItem("twocryogeniccoolant");
twocryogeniccoolant.register();

var tricryogeniccoolant = VanillaFactory.createItem("tricryogeniccoolant");
tricryogeniccoolant.register();

var hyperreactiveliquid = VanillaFactory.createFluid("hyperreactiveliquid", Color.fromHex("773693"));
hyperreactiveliquid.register();

var exoticingot = VanillaFactory.createItem("exoticingot");
exoticingot.register();

var extremeradiationproofplating = VanillaFactory.createItem("extremeradiationproofplating");
extremeradiationproofplating.register();

var coolantcontainmentcell = VanillaFactory.createItem("coolantcontainmentcell");
coolantcontainmentcell.register();

var spectrekeyhandle = VanillaFactory.createItem("spectrekeyhandle");
spectrekeyhandle.register();

var moltenlegendarium = VanillaFactory.createFluid("moltenlegendarium", Color.fromHex("c3c3c3"));
moltenlegendarium.register();

var moltenlanthanumfullerenenanotubes = VanillaFactory.createFluid("moltenlanthanumfullerenenanotubes", Color.fromHex("59335c"));
moltenlanthanumfullerenenanotubes.register();

var moltenactiniumsuperhydride = VanillaFactory.createFluid("moltenactiniumsuperhydride", Color.fromHex("8c273f"));
moltenactiniumsuperhydride.register();

var moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea = VanillaFactory.createFluid("moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea", Color.fromHex("85428a"));
moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea.register();

var moltenchargedcesiumceriumcobaltindium = VanillaFactory.createFluid("moltenchargedcesiumceriumcobaltindium", Color.fromHex("296b0a"));
moltenchargedcesiumceriumcobaltindium.register();

var moltenborocarbide = VanillaFactory.createFluid("moltenborocarbide", Color.fromHex("679112"));
moltenborocarbide.register();

var moltenfullerenesuperconductor = VanillaFactory.createFluid("moltenfullerenesuperconductor", Color.fromHex("74eb1a"));
moltenfullerenesuperconductor.register();

var blocklasermodule = VanillaFactory.createBlock("blocklasermodule", <blockmaterial:rock>);
blocklasermodule.setBlockHardness(10.0);
blocklasermodule.setBlockResistance(10.0);
blocklasermodule.setToolClass("pickaxe");
blocklasermodule.setToolLevel(7);
blocklasermodule.setBlockSoundType(<soundtype:metal>);
blocklasermodule.register();

var advancedassemblylinecasing = VanillaFactory.createBlock("advancedassemblylinecasing", <blockmaterial:rock>);
advancedassemblylinecasing.setBlockHardness(10.0);
advancedassemblylinecasing.setBlockResistance(10.0);
advancedassemblylinecasing.setToolClass("pickaxe");
advancedassemblylinecasing.setToolLevel(5);
advancedassemblylinecasing.setBlockSoundType(<soundtype:metal>);
advancedassemblylinecasing.register();

var laserbindingmodule = VanillaFactory.createBlock("laserbindingmodule", <blockmaterial:rock>);
laserbindingmodule.setBlockHardness(10.0);
laserbindingmodule.setBlockResistance(10.0);
laserbindingmodule.setToolClass("pickaxe");
laserbindingmodule.setToolLevel(5);
laserbindingmodule.setBlockSoundType(<soundtype:metal>);
laserbindingmodule.register();

var creatium = VanillaFactory.createFluid("creatium", Color.fromHex("7B1FA2"));
creatium.register();

var berylliumdetector = VanillaFactory.createBlock("berylliumdetector", <blockmaterial:rock>);
berylliumdetector.setBlockHardness(10.0);
berylliumdetector.setBlockResistance(10.0);
berylliumdetector.setToolClass("pickaxe");
berylliumdetector.setToolLevel(5);
berylliumdetector.setBlockSoundType(<soundtype:metal>);
berylliumdetector.register();

var electromagnet = VanillaFactory.createBlock("electromagnet", <blockmaterial:rock>);
electromagnet.setBlockHardness(10.0);
electromagnet.setBlockResistance(10.0);
electromagnet.setToolClass("pickaxe");
electromagnet.setToolLevel(5);
electromagnet.setBlockSoundType(<soundtype:metal>);
electromagnet.register();

var dialuminiumtrioxide = VanillaFactory.createItem("dialuminiumtrioxide");
dialuminiumtrioxide.register();

var dialuminiummonocobalttetraoxide = VanillaFactory.createItem("dialuminiummonocobalttetraoxide");
dialuminiummonocobalttetraoxide.register();

var titansteelcircuit = VanillaFactory.createItem("titansteelcircuit");
titansteelcircuit.register();

var einsteiniumcircuit = VanillaFactory.createItem("einsteiniumcircuit");
einsteiniumcircuit.register();

var degeneraterheniumcircuit = VanillaFactory.createItem("degeneraterheniumcircuit");
degeneraterheniumcircuit.register();

var lowqualitytwilightstone = VanillaFactory.createItem("lowqualitytwilightstone");
lowqualitytwilightstone.register();

var intermediatequalitytwilightstone = VanillaFactory.createItem("intermediatequalitytwilightstone");
intermediatequalitytwilightstone.register();

var highqualitytwilightstone = VanillaFactory.createItem("highqualitytwilightstone");
highqualitytwilightstone.register();

var perfecttwilightstone = VanillaFactory.createItem("perfecttwilightstone");
perfecttwilightstone.register();

var manasolution = VanillaFactory.createFluid("manasolution", Color.fromHex("51A3E5"));
manasolution.register();

var distilledmana = VanillaFactory.createFluid("distilledmana", Color.fromHex("4A90C9"));
distilledmana.register();

var dissolutedmana = VanillaFactory.createFluid("dissolutedmana", Color.fromHex("76A6CD"));
dissolutedmana.register();

var highmana = VanillaFactory.createFluid("highmana", Color.fromHex("B1CADD"));
highmana.register();

var thoriumleach = VanillaFactory.createFluid("thoriumleach", Color.fromHex("B1CADD"));
thoriumleach.register();

var thoriumleachdust = VanillaFactory.createItem("thoriumleachdust");
thoriumleachdust.register();

var activatedthoriumsolution = VanillaFactory.createFluid("activatedthoriumsolution", Color.fromHex("004D40"));
activatedthoriumsolution.register();

var trueneutroniumparticle = VanillaFactory.createItem("trueneutroniumparticle");
trueneutroniumparticle.register();

var stemcellcontainmentcell = VanillaFactory.createItem("stemcellcontainmentcell");
stemcellcontainmentcell.register();

var biotransistor = VanillaFactory.createItem("biotransistor");
biotransistor.register();

var opticalenforcedlaser = VanillaFactory.createItem("opticalenforcedlaser");
opticalenforcedlaser.register();

var Biowarecoolingunit = VanillaFactory.createItem("Biowarecoolingunit");
Biowarecoolingunit.register();

var biowareprocessingunit = VanillaFactory.createItem("biowareprocessingunit");
biowareprocessingunit.register();

var biowaremainchip = VanillaFactory.createItem("biowaremainchip");
biowaremainchip.register();

var biowaremainboard = VanillaFactory.createItem("biowaremainboard");
biowaremainboard.register();

var gemstonecluster = VanillaFactory.createItem("gemstonecluster");
gemstonecluster.register();

var coalball = VanillaFactory.createItem("coalball");
coalball.register();

var uvhasoc = VanillaFactory.createItem("uvhasoc");
uvhasoc.register();

var uvhasocw = VanillaFactory.createItem("uvhasocw");
uvhasocw.register();

var enhancedenderiumingot = VanillaFactory.createItem("enhancedenderiumingot");
enhancedenderiumingot.register();

var enhancedenderiumplate = VanillaFactory.createItem("enhancedenderiumplate");
enhancedenderiumplate.register();

var enhancedenderiumlense = VanillaFactory.createItem("enhancedenderiumlense");
enhancedenderiumlense.register();

var enhancedenderiumrod = VanillaFactory.createItem("enhancedenderiumrod");
enhancedenderiumrod.register();

var compressedmetaldust = VanillaFactory.createItem("compressedmetaldust");
compressedmetaldust.register();

var compressedmetalingot = VanillaFactory.createItem("compressedmetalingot");
compressedmetalingot.register();

var moltenenhancedenderium = VanillaFactory.createFluid("moltenenhancedenderium", Color.fromHex("113817"));
moltenenhancedenderium.register();

var enhancedenderiumdust = VanillaFactory.createItem("enhancedenderiumdust");
enhancedenderiumdust.register();

var enhancedenderiumsmalldust = VanillaFactory.createItem("enhancedenderiumsmalldust");
enhancedenderiumsmalldust.register();

var enhancedenderiumunrefinedcrystal = VanillaFactory.createItem("enhancedenderiumunrefinedcrystal");
enhancedenderiumunrefinedcrystal.register();

var enhancedenderiumcrystal = VanillaFactory.createItem("enhancedenderiumcrystal");
enhancedenderiumcrystal.register();

var enhancedenderiumrefinedmetalresidues = VanillaFactory.createItem("enhancedenderiumrefinedmetalresidues");
enhancedenderiumrefinedmetalresidues.register();

var awakenedcompressedmetalingot = VanillaFactory.createItem("awakenedcompressedmetalingot");
awakenedcompressedmetalingot.register();

var awakenedcompressedmetalplate = VanillaFactory.createItem("awakenedcompressedmetalplate");
awakenedcompressedmetalplate.register();

var moltenawakenedcompressedmetal = VanillaFactory.createFluid("moltenawakenedcompressedmetal", Color.fromHex("ab4b1b"));
moltenawakenedcompressedmetal.register();

var purified4thorium = VanillaFactory.createItem("purified4thorium");
purified4thorium.register();

var purified3thorium = VanillaFactory.createItem("purified3thorium");
purified3thorium.register();

var purified2thorium = VanillaFactory.createItem("purified2thorium");
purified2thorium.register();

var purified1thorium = VanillaFactory.createItem("purified1thorium");
purified1thorium.register();

var quantumcontrolcomputermk1 = VanillaFactory.createItem("quantumcontrolcomputermk1");
quantumcontrolcomputermk1.register();

var quantumcontrolcomputermk2 = VanillaFactory.createItem("quantumcontrolcomputermk2");
quantumcontrolcomputermk2.register();

var quantumcontrolcomputermk3 = VanillaFactory.createItem("quantumcontrolcomputermk3");
quantumcontrolcomputermk3.register();

var liquidrawneutronium  = VanillaFactory.createFluid("liquidrawneutronium", Color.fromHex("F5F2D6"));
liquidrawneutronium.register();

var dualitioncore = VanillaFactory.createItem("dualitioncore");
dualitioncore.register();

var photopolymer  = VanillaFactory.createFluid("photopolymer", Color.fromHex("4CAF50"));
photopolymer.register();

var enrichedgraphitedust = VanillaFactory.createItem("enrichedgraphitedust");
enrichedgraphitedust.register();

var irradiated_borax = VanillaFactory.createItem("irradiated_borax");
irradiated_borax.register();

var unimpuredwafer = VanillaFactory.createItem("unimpuredwafer");
unimpuredwafer.register();

var hydrogentetrafluoride  = VanillaFactory.createFluid("hydrogentetrafluoride", Color.fromHex("90CAF9"));
hydrogentetrafluoride.register();

var hydrogentetrafluoromehtane = VanillaFactory.createFluid("hydrogentetrafluoromehtane", Color.fromHex("8D6E63"));
hydrogentetrafluoromehtane.register();

var hydrogentetrafluorocarbidedioxide = VanillaFactory.createFluid("hydrogentetrafluorocarbidedioxide", Color.fromHex("F8BBD0"));
hydrogentetrafluorocarbidedioxide.register();

var fluorohydrideammoniumcarbamat = VanillaFactory.createFluid("fluorohydrideammoniumcarbamat", Color.fromHex("2E7D32"));
fluorohydrideammoniumcarbamat.register();

var pcbb = VanillaFactory.createFluid("pcbb", Color.fromHex("9C27B0"));
pcbb.register();

var photopolymerplate = VanillaFactory.createItem("photopolymerplate");
photopolymerplate.register();

var stablestar = VanillaFactory.createItem("stablestar");
stablestar.register();

var spacetimecontainingcomputationalunit = VanillaFactory.createItem("spacetimecontainingcomputationalunit");
spacetimecontainingcomputationalunit.register();

var transcendantminingcasings = VanillaFactory.createBlock("transcendantminingcasings", <blockmaterial:rock>);
transcendantminingcasings.setBlockHardness(800.0);
transcendantminingcasings.setBlockResistance(10.0);
transcendantminingcasings.setToolClass("pickaxe");
transcendantminingcasings.setToolLevel(11);
transcendantminingcasings.setBlockSoundType(<soundtype:metal>);
transcendantminingcasings.register();


var opticallyenhancedcircuitboard = VanillaFactory.createItem("opticallyenhancedcircuitboard");
opticallyenhancedcircuitboard.register();

var opticalcircuitboard = VanillaFactory.createItem("opticalcircuitboard");
opticalcircuitboard.register();

var rhodium3 = VanillaFactory.createItem("rhodium3");
rhodium3.register();

var rhodium2a = VanillaFactory.createItem("rhodium2a");
rhodium2a.register();

var lanthanumyttriumdust = VanillaFactory.createItem("lanthanumyttriumdust");
lanthanumyttriumdust.register();

var lanthanumyttriumsolution = VanillaFactory.createFluid("lanthanumyttriumsolution", Color.fromHex("615263"));
lanthanumyttriumsolution.register();

var lanthanumyttriumcuprite = VanillaFactory.createItem("lanthanumyttriumcuprite");
lanthanumyttriumcuprite.register();

var lanthanumdopedyttrium = VanillaFactory.createItem("lanthanumdopedyttrium");
lanthanumdopedyttrium.register();

var lanthanum2dopedyttriumbarium = VanillaFactory.createItem("lanthanum2dopedyttriumbarium");
lanthanum2dopedyttriumbarium.register();

var bariumsludgedustresidue = VanillaFactory.createItem("bariumsludgedustresidue");
bariumsludgedustresidue.register();

var yttriumlanthanumceriummixturedust = VanillaFactory.createItem("yttriumlanthanumceriummixturedust");
yttriumlanthanumceriummixturedust.register();

var lanthanumceriumacidicsolution = VanillaFactory.createFluid("lanthanumceriumacidicsolution", Color.fromHex("A1887F"));
lanthanumceriumacidicsolution.register();

var ceriumlanthanumcompound = VanillaFactory.createItem("ceriumlanthanumcompound");
ceriumlanthanumcompound.register();
 
var ceriumlanthanumsaturatedcompound = VanillaFactory.createItem("ceriumlanthanumsaturatedcompound");
ceriumlanthanumsaturatedcompound.register();

var ceriumlanthanumsaturatedsamaritecompound = VanillaFactory.createItem("ceriumlanthanumsaturatedsamaritecompound");
ceriumlanthanumsaturatedsamaritecompound.register();

var ceriumlanthanumsaturatedcompoundsolution = VanillaFactory.createFluid("ceriumlanthanumsaturatedcompoundsolution", Color.fromHex("FFE0B2"));
ceriumlanthanumsaturatedcompoundsolution.register();

var ceriumlanthanumsaturatedcompoundingot = VanillaFactory.createItem("ceriumlanthanumsaturatedcompoundingot");
ceriumlanthanumsaturatedcompoundingot.register();

var ceriumlanthanumsaturatedcompounddust = VanillaFactory.createItem("ceriumlanthanumsaturatedcompounddust");
ceriumlanthanumsaturatedcompounddust.register();

var moltenceriumdopedlanthanum = VanillaFactory.createFluid("moltenceriumdopedlanthanum", Color.fromHex("F3EDBF"));
moltenceriumdopedlanthanum.register();

var ceriumdopedlanthanumdust = VanillaFactory.createItem("ceriumdopedlanthanumdust");
ceriumdopedlanthanumdust.register();

var unprocessedcelasolution = VanillaFactory.createFluid("unprocessedcelasolution", Color.fromHex("D9DF95"));
unprocessedcelasolution.register();

var celananoparticle = VanillaFactory.createItem("celananoparticle");
celananoparticle.register();

var moltencelananoparticles = VanillaFactory.createFluid("moltencelananoparticles", Color.fromHex("D9DF95"));
moltencelananoparticles.register();

var lanthanumseedcrystal = VanillaFactory.createItem("lanthanumseedcrystal");
lanthanumseedcrystal.register();

var moltencelananocarbides = VanillaFactory.createFluid("moltencelananocarbides", Color.fromHex("AB47BC"));
moltencelananocarbides.register();

var celasiliconboule = VanillaFactory.createItem("celasiliconboule");
celasiliconboule.register();

var moltenceriumlanthanum = VanillaFactory.createFluid("moltenceriumlanthanum", Color.fromHex("D9DF95"));
moltenceriumlanthanum.register();

var ceriumlanthanumingot = VanillaFactory.createItem("ceriumlanthanumingot");
ceriumlanthanumingot.register();

var ceriumlanthanumdust = VanillaFactory.createItem("ceriumlanthanumdust");
ceriumlanthanumdust.register();

var unprocessedceladust = VanillaFactory.createItem("unprocessedceladust");
unprocessedceladust.register();

var celananocarbides = VanillaFactory.createItem("celananocarbides");
celananocarbides.register();

var lanthanumceriumsolution = VanillaFactory.createFluid("lanthanumceriumsolution", Color.fromHex("E2E7B3"));
lanthanumceriumsolution.register();

var unimprintedntypewafer = VanillaFactory.createItem("unimprintedntypewafer");
unimprintedntypewafer.register();

var celawafer = VanillaFactory.createItem("celawafer");
celawafer.register();

var celauwafer = VanillaFactory.createItem("celauwafer");
celauwafer.register();

var fcelauwafer = VanillaFactory.createItem("fcelauwafer");
fcelauwafer.register();

var photogenallyenhancedwafer = VanillaFactory.createItem("photogenallyenhancedwafer");
photogenallyenhancedwafer.register();

var usedphotopolymersolution = VanillaFactory.createFluid("usedphotopolymersolution", Color.fromHex("CE93D8"));
usedphotopolymersolution.register();

var yttriumsludgedustresidue = VanillaFactory.createItem("yttriumsludgedustresidue");
yttriumsludgedustresidue.register();

var extradistilledwater = VanillaFactory.createFluid("extradistilledwater", Color.fromHex("BBDEFB"));
extradistilledwater.register();

var rawlapotron = VanillaFactory.createItem("rawlapotron");
rawlapotron.register();

var lapotrondust = VanillaFactory.createItem("lapotrondust");
lapotrondust.register();
 
var boundleather = VanillaFactory.createItem("boundleather");
boundleather.register();

var reinforcedstring = VanillaFactory.createItem("reinforcedstring");
reinforcedstring.register();

var treatedwoodplanks = VanillaFactory.createBlock("treatedwoodplanks", <blockmaterial:wood>);
treatedwoodplanks.setBlockHardness(12.0);
treatedwoodplanks.setBlockResistance(10.0);
treatedwoodplanks.setToolClass("axe");
treatedwoodplanks.setToolLevel(2);
treatedwoodplanks.setBlockSoundType(<soundtype:metal>);
treatedwoodplanks.register();

var quaternaryammonium = VanillaFactory.createFluid("quaternaryammonium", Color.fromHex("CFD8DC"));
quaternaryammonium.register();

var vacuumfurnacecasing = VanillaFactory.createBlock("vacuumfurnacecasing", <blockmaterial:rock>);
vacuumfurnacecasing.setBlockHardness(10.0);
vacuumfurnacecasing.setBlockResistance(10.0);
vacuumfurnacecasing.setToolClass("pickaxe");
vacuumfurnacecasing.setToolLevel(5);
vacuumfurnacecasing.setBlockSoundType(<soundtype:metal>);
vacuumfurnacecasing.register();

var wrapofnaquadahfinewire = VanillaFactory.createItem("wrapofnaquadahfinewire");
wrapofnaquadahfinewire.register();

var copperalloycoil = VanillaFactory.createItem("copperalloycoil");
copperalloycoil.register();

var copperalloycoilblock = VanillaFactory.createBlock("copperalloycoilblock", <blockmaterial:rock>);
copperalloycoilblock.setBlockHardness(10.0);
copperalloycoilblock.setBlockResistance(10.0);
copperalloycoilblock.setToolClass("pickaxe");
copperalloycoilblock.setToolLevel(5);
copperalloycoilblock.setBlockSoundType(<soundtype:metal>);
copperalloycoilblock.register();

var wrapofruriditfinewire = VanillaFactory.createItem("wrapofruriditfinewire");
wrapofruriditfinewire.register();

var wrapofosmiumfinewire = VanillaFactory.createItem("wrapofosmiumfinewire");
wrapofosmiumfinewire.register();

var wrapofelectrumfoil = VanillaFactory.createItem("wrapofelectrumfoil");
wrapofelectrumfoil.register();

var wrapofhsssfoil = VanillaFactory.createItem("wrapofhsssfoil");
wrapofhsssfoil.register();

var aluminasilicatecatalyst = VanillaFactory.createItem("aluminasilicatecatalyst");
aluminasilicatecatalyst.register();

var buildingwrench = VanillaFactory.createItem("buildingwrench");
buildingwrench.register();

var pbistrengthenedtetrixcasing = VanillaFactory.createBlock("pbistrengthenedtetrixcasing", <blockmaterial:rock>);
pbistrengthenedtetrixcasing.setBlockHardness(10.0);
pbistrengthenedtetrixcasing.setBlockResistance(10.0);
pbistrengthenedtetrixcasing.setToolClass("pickaxe");
pbistrengthenedtetrixcasing.setToolLevel(5);
pbistrengthenedtetrixcasing.setBlockSoundType(<soundtype:metal>);
pbistrengthenedtetrixcasing.register();

var dissolvingfluid = VanillaFactory.createFluid("dissolvingfluid", Color.fromHex("CFD8DC"));
dissolvingfluid.register();

var aluminosilicatewoolsolution = VanillaFactory.createFluid("aluminosilicatewoolsolution", Color.fromHex("8A8A8A"));
aluminosilicatewoolsolution.register();

var thorium_crude_metal = VanillaFactory.createItem("thorium_crude_metal");
thorium_crude_metal.register();

var thorium_residues = VanillaFactory.createItem("thorium_residues");
thorium_residues.register();

var refined_thorium_salts = VanillaFactory.createItem("refined_thorium_salts");
refined_thorium_salts.register();

var thorium_metallic_powder = VanillaFactory.createItem("thorium_metallic_powder");
thorium_metallic_powder.register();

var thorium_salt = VanillaFactory.createItem("thorium_salt");
thorium_salt.register();

var thorium_radioactive_powder = VanillaFactory.createItem("thorium_radioactive_powder");
thorium_radioactive_powder.register();

var thorium_radioactive_dust = VanillaFactory.createItem("thorium_radioactive_dust");
thorium_radioactive_dust.register();

var thorium_233_dust = VanillaFactory.createItem("thorium_233_dust");
thorium_233_dust.register();

var thorium_emulsion = VanillaFactory.createFluid("thorium_emulsion", Color.fromHex("495B49"));
thorium_emulsion.register();

var low_thorium_solution = VanillaFactory.createFluid("low_thorium_solution", Color.fromHex("0C220C"));
low_thorium_solution.register();

var radioactive_sludge = VanillaFactory.createFluid("radioactive_sludge", Color.fromHex("885B49"));
radioactive_sludge.register();

var radium_metallic_powder = VanillaFactory.createItem("radium_metallic_powder");
radium_metallic_powder.register();

var radium_emulsion = VanillaFactory.createFluid("radium_emulsion", Color.fromHex("7E7E85"));
radium_emulsion.register();

var radium_sodium_solution = VanillaFactory.createFluid("radium_sodium_solution", Color.fromHex("7E7E97"));
radium_sodium_solution.register();

var radium_cake_dust = VanillaFactory.createItem("radium_cake_dust");
radium_cake_dust.register();

var radium_cake_solution = VanillaFactory.createFluid("radium_cake_solution", Color.fromHex("666B66"));
radium_cake_solution.register();

var reprep_radium_202 = VanillaFactory.createItem("reprep_radium_202");
reprep_radium_202.register();

var radium_202_dust = VanillaFactory.createItem("radium_202_dust");
radium_202_dust.register();

var woodeneglinsteelcasing = VanillaFactory.createBlock("woodeneglinsteelcasing", <blockmaterial:rock>);
woodeneglinsteelcasing.setBlockHardness(20.0);
woodeneglinsteelcasing.setBlockResistance(10.0);
woodeneglinsteelcasing.setToolClass("pickaxe");
woodeneglinsteelcasing.setToolLevel(5);
woodeneglinsteelcasing.setBlockSoundType(<soundtype:metal>);
woodeneglinsteelcasing.register();

var logcasing = VanillaFactory.createBlock("logcasing", <blockmaterial:rock>);
logcasing.setBlockHardness(20.0);
logcasing.setBlockResistance(10.0);
logcasing.setToolClass("pickaxe");
logcasing.setToolLevel(5);
logcasing.setBlockSoundType(<soundtype:metal>);
logcasing.register();

var steelborderedwoodencasing = VanillaFactory.createBlock("steelborderedwoodencasing", <blockmaterial:wood>);
steelborderedwoodencasing.setBlockHardness(20.0);
steelborderedwoodencasing.setBlockResistance(10.0);
steelborderedwoodencasing.setToolClass("pickaxe");
steelborderedwoodencasing.setToolLevel(5);
steelborderedwoodencasing.setBlockSoundType(<soundtype:metal>);
steelborderedwoodencasing.register();

var solardistilledwater = VanillaFactory.createFluid("solardistilledwater", Color.fromHex("40b0ed"));
solardistilledwater.register();

var dirtywater = VanillaFactory.createFluid("dirtywater", Color.fromHex("6e3415"));
dirtywater.register();

var lightlytreatedwoodplanks = VanillaFactory.createBlock("lightlytreatedwoodplanks", <blockmaterial:wood>);
lightlytreatedwoodplanks.setBlockHardness(12.0);
lightlytreatedwoodplanks.setBlockResistance(10.0);
lightlytreatedwoodplanks.setToolClass("axe");
lightlytreatedwoodplanks.setToolLevel(2);
lightlytreatedwoodplanks.setBlockSoundType(<soundtype:metal>);
lightlytreatedwoodplanks.register();

var thermalcasing = VanillaFactory.createBlock("thermalcasing", <blockmaterial:rock>);
thermalcasing.setBlockHardness(12.0);
thermalcasing.setBlockResistance(10.0);
thermalcasing.setToolClass("axe");
thermalcasing.setToolLevel(2);
thermalcasing.setBlockSoundType(<soundtype:metal>);
thermalcasing.register();

var forcefieldgenerator = VanillaFactory.createItem("forcefieldgenerator");
forcefieldgenerator.register();

var ionthruster = VanillaFactory.createItem("ionthruster");
ionthruster.register();

var articficialmuscle = VanillaFactory.createItem("articficialmuscle");
articficialmuscle.register();

var detectiondevice = VanillaFactory.createBlock("detectiondevice", <blockmaterial:rock>);
detectiondevice.setBlockHardness(12.0);
detectiondevice.setBlockResistance(10.0);
detectiondevice.setToolClass("axe");
detectiondevice.setToolLevel(2);
detectiondevice.setBlockSoundType(<soundtype:metal>);
detectiondevice.register();

var wiring = VanillaFactory.createItem("wiring");
wiring.register();

var solenoid = VanillaFactory.createItem("solenoid");
solenoid.register();

var motor = VanillaFactory.createItem("motor");
motor.register();

var carbonmyogel = VanillaFactory.createItem("carbonmyogel");
carbonmyogel.register();

var spectreplate = VanillaFactory.createItem("spectreplate");
spectreplate.register();

var superlubricenttincture = VanillaFactory.createFluid("superlubricenttincture", Color.fromHex("5a5c00"));
superlubricenttincture.register();

var optimizedrestrictedpcbcasing = VanillaFactory.createBlock("optimizedrestrictedpcbcasing", <blockmaterial:rock>);
optimizedrestrictedpcbcasing.setBlockHardness(80.0);
optimizedrestrictedpcbcasing.setBlockResistance(10.0);
optimizedrestrictedpcbcasing.setToolClass("axe");
optimizedrestrictedpcbcasing.setToolLevel(2);
optimizedrestrictedpcbcasing.setBlockSoundType(<soundtype:metal>);
optimizedrestrictedpcbcasing.register();

var opticalspeedingpipecasing = VanillaFactory.createBlock("opticalspeedingpipecasing", <blockmaterial:rock>);
opticalspeedingpipecasing.setBlockHardness(80.0);
opticalspeedingpipecasing.setBlockResistance(10.0);
opticalspeedingpipecasing.setToolClass("axe");
opticalspeedingpipecasing.setToolLevel(2);
opticalspeedingpipecasing.setBlockSoundType(<soundtype:metal>);
opticalspeedingpipecasing.register();

var perfectlysealedvacuumcasing = VanillaFactory.createBlock("perfectlysealedvacuumcasing", <blockmaterial:rock>);
perfectlysealedvacuumcasing.setBlockHardness(80.0);
perfectlysealedvacuumcasing.setBlockResistance(10.0);
perfectlysealedvacuumcasing.setToolClass("axe");
perfectlysealedvacuumcasing.setToolLevel(2);
perfectlysealedvacuumcasing.setBlockSoundType(<soundtype:metal>);
perfectlysealedvacuumcasing.register();

var paraphenylenediaminesolution = VanillaFactory.createFluid("paraphenylenediaminesolution", Color.fromHex("BA68C8"));
paraphenylenediaminesolution.register();

var terephthaloylchloride = VanillaFactory.createItem("terephthaloylchloride");
terephthaloylchloride.register();

var paraphenylenediamine = VanillaFactory.createItem("paraphenylenediamine");
paraphenylenediamine.register();

var nmethyl2pyrrolidone = VanillaFactory.createFluid("nmethyl2pyrrolidone", Color.fromHex("81D4FA"));
nmethyl2pyrrolidone.register();

var bbutyrolactone = VanillaFactory.createFluid("bbutyrolactone", Color.fromHex("C8E6C9"));
bbutyrolactone.register();

var twonaphthol = VanillaFactory.createFluid("twonaphthol", Color.fromHex("FFAB91"));
twonaphthol.register();

var binol = VanillaFactory.createFluid("binol", Color.fromHex("37474F"));
binol.register();

var diketene = VanillaFactory.createFluid("diketene", Color.fromHex("B0BEC5"));
diketene.register();

var chlorodiphenylphosphine = VanillaFactory.createFluid("chlorodiphenylphosphine", Color.fromHex("BA68C8"));
chlorodiphenylphosphine.register();

var binap = VanillaFactory.createItem("binap");
binap.register();

var unrefinedkevlar = VanillaFactory.createFluid("unrefinedkevlar", Color.fromHex("FFEB3B"));
unrefinedkevlar.register();

var kevlarmix = VanillaFactory.createItem("kevlarmix");
kevlarmix.register();

var rotarryspinningwhisker = VanillaFactory.createItem("rotarryspinningwhisker");
rotarryspinningwhisker.register();

var terephtaladehyde = VanillaFactory.createFluid("terephtaladehyde", Color.fromHex("CFD8DC"));
terephtaladehyde.register();

var carbondisulfide = VanillaFactory.createFluid("carbondisulfide", Color.fromHex("4DB6AC"));
carbondisulfide.register();

var naphtalene = VanillaFactory.createFluid("naphtalene", Color.fromHex("FF8F00"));
naphtalene.register();

var butylithium = VanillaFactory.createFluid("butylithium", Color.fromHex("C2185B"));
butylithium.register();

var liquidbinap = VanillaFactory.createFluid("liquidbinap", Color.fromHex("263238"));
liquidbinap.register();

var crystalkevlar = VanillaFactory.createFluid("crystalkevlar", Color.fromHex("FFEE58"));
crystalkevlar.register();

var supraplasma = VanillaFactory.createFluid("supraplasma", Color.fromHex("cba3cc"));
supraplasma.register();

var metastableenergeticalalloy = VanillaFactory.createFluid("metastableenergeticalalloy", Color.fromHex("db4234"));
metastableenergeticalalloy.register();

var leadmetallicpowder = VanillaFactory.createItem("leadmetallicpowder");
leadmetallicpowder.register();

var muddustresidues = VanillaFactory.createItem("muddustresidues");
muddustresidues.register();

var purifiedthoriumemulsion = VanillaFactory.createFluid("purifiedthoriumemulsion", Color.fromHex("388E3C"));
purifiedthoriumemulsion.register();

var driedthoriumemulsion = VanillaFactory.createFluid("driedthoriumemulsion", Color.fromHex("305731"));
driedthoriumemulsion.register();

var sulfuricthoriumsolution = VanillaFactory.createFluid("sulfuricthoriumsolution", Color.fromHex("FF7043"));
sulfuricthoriumsolution.register();

var hydrocrackedthoriumsolution = VanillaFactory.createFluid("hydrocrackedthoriumsolution", Color.fromHex("A5D6A7"));
hydrocrackedthoriumsolution.register();

var thoriumsolution = VanillaFactory.createFluid("thoriumsolution", Color.fromHex("2E7D32"));
thoriumsolution.register();

var heatedthoriumsolution = VanillaFactory.createFluid("heatedthoriumsolution", Color.fromHex("DCE775"));
heatedthoriumsolution.register();

var supercooledthoriumsolution = VanillaFactory.createFluid("supercooledthoriumsolution", Color.fromHex("B3E5FC"));
supercooledthoriumsolution.register();

var seperationfilter = VanillaFactory.createItem("seperationfilter");
seperationfilter.register();

var seperationcatalyst = VanillaFactory.createItem("seperationcatalyst");
seperationcatalyst.register();

var thoriumleachsolution = VanillaFactory.createFluid("thoriumleachsolution", Color.fromHex("06521c"));
thoriumleachsolution.register();

var fusioncoil = VanillaFactory.createItem("fusioncoil");
fusioncoil.register();

var superconductingwire = VanillaFactory.createItem("superconductingwire");
superconductingwire.register();

var computercasingvent = VanillaFactory.createBlock("computercasingvent", <blockmaterial:rock>);
computercasingvent.setBlockHardness(80.0);
computercasingvent.setBlockResistance(10.0);
computercasingvent.setToolClass("pickaxe");
computercasingvent.setToolLevel(2);
computercasingvent.setBlockSoundType(<soundtype:metal>);
computercasingvent.register();

var annihilationcasing = VanillaFactory.createBlock("annihilationcasing", <blockmaterial:rock>);
annihilationcasing.setBlockHardness(80.0);
annihilationcasing.setBlockResistance(10.0);
annihilationcasing.setToolClass("pickaxe");
annihilationcasing.setToolLevel(2);
annihilationcasing.setBlockSoundType(<soundtype:metal>);
annihilationcasing.register();

var fieldgeneratorcasing = VanillaFactory.createBlock("fieldgeneratorcasing", <blockmaterial:rock>);
fieldgeneratorcasing.setBlockHardness(80.0);
fieldgeneratorcasing.setBlockResistance(10.0);
fieldgeneratorcasing.setToolClass("pickaxe");
fieldgeneratorcasing.setToolLevel(2);
fieldgeneratorcasing.setBlockSoundType(<soundtype:metal>);
fieldgeneratorcasing.register();

var coil = VanillaFactory.createBlock("coil", <blockmaterial:rock>);
coil.setBlockHardness(80.0);
coil.setBlockResistance(10.0);
coil.setToolClass("pickaxe");
coil.setToolLevel(2);
coil.setBlockSoundType(<soundtype:metal>);
coil.register();

var quantumcomputercasing = VanillaFactory.createBlock("quantumcomputercasing", <blockmaterial:rock>);
quantumcomputercasing.setBlockHardness(80.0);
quantumcomputercasing.setBlockResistance(10.0);
quantumcomputercasing.setToolClass("pickaxe");
quantumcomputercasing.setToolLevel(2);
quantumcomputercasing.setBlockSoundType(<soundtype:metal>);
quantumcomputercasing.register();

var lasercasing = VanillaFactory.createBlock("lasercasing", <blockmaterial:rock>);
lasercasing.setBlockHardness(80.0);
lasercasing.setBlockResistance(10.0);
lasercasing.setToolClass("pickaxe");
lasercasing.setToolLevel(2);
lasercasing.setBlockSoundType(<soundtype:metal>);
lasercasing.register();

var quantumcasing = VanillaFactory.createBlock("quantumcasing", <blockmaterial:rock>);
quantumcasing.setBlockHardness(80.0);
quantumcasing.setBlockResistance(10.0);
quantumcasing.setToolClass("pickaxe");
quantumcasing.setToolLevel(2);
quantumcasing.setBlockSoundType(<soundtype:metal>);
quantumcasing.register();

var reactorsimulator = VanillaFactory.createBlock("reactorsimulator", <blockmaterial:rock>);
reactorsimulator.setBlockHardness(80.0);
reactorsimulator.setBlockResistance(10.0);
reactorsimulator.setToolClass("pickaxe");
reactorsimulator.setToolLevel(2);
reactorsimulator.setBlockSoundType(<soundtype:metal>);
reactorsimulator.register();

var quantumglass = VanillaFactory.createBlock("quantumglass", <blockmaterial:glass>);
quantumglass.setBlockHardness(1.5);
quantumglass.setBlockResistance(3.0);
quantumglass.setBlockLayer("TRANSLUCENT");
quantumglass.setLightOpacity(12);
quantumglass.setTranslucent(true);
quantumglass.setFullBlock(false);
quantumglass.setToolClass("pickaxe");
quantumglass.setToolLevel(2);
quantumglass.setBlockSoundType(<soundtype:stone>);
quantumglass.register();

var tungstalloytwo = VanillaFactory.createFluid("tungstalloytwo", Color.fromHex("06521c"));
tungstalloytwo.register();

var automationframe = VanillaFactory.createBlock("automationframe", <blockmaterial:glass>);
automationframe.setBlockHardness(1.5);
automationframe.setBlockResistance(3.0);
automationframe.setBlockLayer("TRANSLUCENT");
automationframe.setLightOpacity(15);
automationframe.setTranslucent(true);
automationframe.setFullBlock(false);
automationframe.setToolClass("pickaxe");
automationframe.setToolLevel(2);
automationframe.setBlockSoundType(<soundtype:stone>);
automationframe.register();

var livingsolder = VanillaFactory.createFluid("livingsolder", Color.fromHex("886C62"));
livingsolder.register();

var mutatedlivingsolder = VanillaFactory.createFluid("mutatedlivingsolder", Color.fromHex("694653"));
mutatedlivingsolder.register();

var fuelrod = VanillaFactory.createBlock("fuelrod", <blockmaterial:glass>);
fuelrod.setBlockHardness(1.5);
fuelrod.setBlockResistance(3.0);
fuelrod.setBlockLayer("TRANSLUCENT");
fuelrod.setLightOpacity(15);
fuelrod.setTranslucent(true);
fuelrod.setFullBlock(false);
fuelrod.setToolClass("pickaxe");
fuelrod.setToolLevel(2);
fuelrod.setBlockSoundType(<soundtype:stone>);
fuelrod.register();

var dimensionalcasing = VanillaFactory.createBlock("dimensionalcasing", <blockmaterial:rock>);
dimensionalcasing.setBlockHardness(80.0);
dimensionalcasing.setBlockResistance(10.0);
dimensionalcasing.setToolClass("pickaxe");
dimensionalcasing.setToolLevel(2);
dimensionalcasing.setBlockSoundType(<soundtype:metal>);
dimensionalcasing.register();

var explosivehydrazine = VanillaFactory.createFluid("explosivehydrazine", Color.fromHex("827722"));
explosivehydrazine.register();

var hmx = VanillaFactory.createItem("hmx");
hmx.register();

var spacetimebendingprocessor = VanillaFactory.createItem("spacetimebendingprocessor");
spacetimebendingprocessor.register();

var spacetimebendingmainframe = VanillaFactory.createItem("spacetimebendingmainframe");
spacetimebendingmainframe.register();

var spacetimebendingcomputer = VanillaFactory.createItem("spacetimebendingcomputer");
spacetimebendingcomputer.register();

var spacetimebendingassembly = VanillaFactory.createItem("spacetimebendingassembly");
spacetimebendingassembly.register();

var sulfurousacid = VanillaFactory.createFluid("sulfurousacid", Color.fromHex("827722"));
sulfurousacid.register();

var blockgraphite = VanillaFactory.createBlock("blockgraphite", <blockmaterial:rock>);
blockgraphite.setBlockHardness(12.0);
blockgraphite.setBlockResistance(10.0);
blockgraphite.setToolClass("pickaxe");
blockgraphite.setToolLevel(2);
blockgraphite.setBlockSoundType(<soundtype:metal>);
blockgraphite.register();

var millcasing = VanillaFactory.createBlock("millcasing", <blockmaterial:rock>);
millcasing.setBlockHardness(12.0);
millcasing.setBlockResistance(10.0);
millcasing.setToolClass("pickaxe");
millcasing.setToolLevel(2);
millcasing.setBlockSoundType(<soundtype:metal>);
millcasing.register();

var purepetridish = VanillaFactory.createItem("purepetridish");
purepetridish.register();

var hundretmethanol = VanillaFactory.createFluid("hundretmethanol", Color.fromHex("827722"));
hundretmethanol.register();

var hundretbutanol = VanillaFactory.createFluid("hundretbutanol", Color.fromHex("827722"));
hundretbutanol.register();

var datadisc = VanillaFactory.createItem("datadisc");
datadisc.register();

var datadiskblackholecompressor = VanillaFactory.createItem("datadiskblackholecompressor");
datadiskblackholecompressor.register();

var polyurethanecatalystadust = VanillaFactory.createItem("polyurethanecatalystadust");
polyurethanecatalystadust.register();

var polyurethanecatalystbdust = VanillaFactory.createItem("polyurethanecatalystbdust");
polyurethanecatalystbdust.register();

var propionicacid = VanillaFactory.createFluid("propionicacid", Color.fromHex("E0E0E0"));
propionicacid.register();

var nickeltetracarbonyl = VanillaFactory.createFluid("nickeltetracarbonyl", Color.fromHex("B7D7F0"));
nickeltetracarbonyl.register();

var oranorhodiumcatalystdust = VanillaFactory.createItem("oranorhodiumcatalystdust");
oranorhodiumcatalystdust.register();

var trimethylborate = VanillaFactory.createFluid("trimethylborate", Color.fromHex("D7CCC8"));
trimethylborate.register();

var hexanol = VanillaFactory.createFluid("hexanol", Color.fromHex("B71C1C"));
hexanol.register();

var wovenkevlar = VanillaFactory.createItem("wovenkevlar");
wovenkevlar.register();

var polyurethaneresin = VanillaFactory.createFluid("polyurethaneresin", Color.fromHex("C3B640"));
polyurethaneresin.register();

var fourdiphenylmethanediiscocyanatedust = VanillaFactory.createItem("fourdiphenylmethanediiscocyanatedust");
fourdiphenylmethanediiscocyanatedust.register();

var diaminodiphenylmethanemixture = VanillaFactory.createFluid("diaminodiphenylmethanemixture", Color.fromHex("E1BEE7"));
diaminodiphenylmethanemixture.register();

var diphenylmethanediiscocyanatemixture = VanillaFactory.createFluid("diphenylmethanediiscocyanatemixture", Color.fromHex("DFC9E2"));
diphenylmethanediiscocyanatemixture.register();

var pentaerythritoldust = VanillaFactory.createItem("pentaerythritoldust");
pentaerythritoldust.register();

var siliconoil = VanillaFactory.createFluid("siliconoil", Color.fromHex("D4D4D4"));
siliconoil.register();

var pentanol = VanillaFactory.createFluid("pentanol", Color.fromHex("EF9A9A"));
pentanol.register();

var reinfrocedkevlarcloth = VanillaFactory.createItem("reinfrocedkevlarcloth");
reinfrocedkevlarcloth.register();

var pentoldehyde = VanillaFactory.createFluid("pentoldehyde", Color.fromHex("EF9A9A"));
pentoldehyde.register();

var isopentoldehyde = VanillaFactory.createFluid("isopentoldehyde", Color.fromHex("EF9A9A"));
isopentoldehyde.register();

var tinyoranorhodiumcatalystdust = VanillaFactory.createItem("tinyoranorhodiumcatalystdust");
tinyoranorhodiumcatalystdust.register();

var enrichedenderium = VanillaFactory.createItem("enrichedenderium");
enrichedenderium.register();

var petridishmold = VanillaFactory.createItem("petridishmold");
petridishmold.register();

var mutationbasedpetridish = VanillaFactory.createItem("mutationbasedpetridish");
mutationbasedpetridish.register();

var algaebreedingbase = VanillaFactory.createItem("algaebreedingbase");
algaebreedingbase.register();

var taucetialgaemixture = VanillaFactory.createItem("taucetialgaemixture");
taucetialgaemixture.register();

var evolvedalaemixture = VanillaFactory.createItem("evolvedalaemixture");
evolvedalaemixture.register();

var biocircuitboard = VanillaFactory.createItem("biocircuitboard");
biocircuitboard.register();

var ultrabiomutatedcircuitboard = VanillaFactory.createItem("ultrabiomutatedcircuitboard");
ultrabiomutatedcircuitboard.register();

var nanopic = VanillaFactory.createItem("nanopic");
nanopic.register();

var nanopicw = VanillaFactory.createItem("nanopicw");
nanopicw.register();

var pikopic = VanillaFactory.createItem("pikopic");
pikopic.register();

var pikopicw = VanillaFactory.createItem("pikopicw");
pikopicw.register();

var femtopic = VanillaFactory.createItem("femtopic");
femtopic.register();

var femtopicw = VanillaFactory.createItem("femtopicw");
femtopicw.register();

var attopicw = VanillaFactory.createItem("attopicw");
attopicw.register();

var attopic = VanillaFactory.createItem("attopic");
attopic.register();

var zeptopic = VanillaFactory.createItem("zeptopic");
zeptopic.register();

var zeptopicw = VanillaFactory.createItem("zeptopicw");
zeptopicw.register();

var yoctopic = VanillaFactory.createItem("yoctopic");
yoctopic.register();

var yoctopicw = VanillaFactory.createItem("yoctopicw");
yoctopicw.register();

var xontopic = VanillaFactory.createItem("xontopic");
xontopic.register();

var xontopicw = VanillaFactory.createItem("xontopicw");
xontopicw.register();

var seaborgiumdopedboule = VanillaFactory.createItem("seaborgiumdopedboule");
seaborgiumdopedboule.register();

var biobasedpetridish = VanillaFactory.createItem("biobasedpetridish");
biobasedpetridish.register();
 
var seaborgiumdopedwafer = VanillaFactory.createItem("seaborgiumdopedwafer");
seaborgiumdopedwafer.register();

var biobasedpetridiswithculture = VanillaFactory.createItem("biobasedpetridiswithculture");
biobasedpetridiswithculture.register();

var sterilebiomedium = VanillaFactory.createFluid("sterilebiomedium", Color.fromHex("1B5E20"));
sterilebiomedium.register();

var titaniumiodine = VanillaFactory.createItem("titaniumiodine");
titaniumiodine.register();

var moltenredstonealloy = VanillaFactory.createFluid("moltenredstonealloy", Color.fromHex("822020"));
moltenredstonealloy.register();

var isohexanoldehyde = VanillaFactory.createFluid("isohexanoldehyde", Color.fromHex("B71C1C"));
isohexanoldehyde.register();

var hexanoldehyde = VanillaFactory.createFluid("hexanoldehyde", Color.fromHex("B71C1C"));
hexanoldehyde.register();

var scsteamturbinecasing = VanillaFactory.createBlock("scsteamturbinecasing", <blockmaterial:rock>);
scsteamturbinecasing.setBlockHardness(12.0);
scsteamturbinecasing.setBlockResistance(10.0);
scsteamturbinecasing.setToolClass("pickaxe");
scsteamturbinecasing.setToolLevel(2);
scsteamturbinecasing.setBlockSoundType(<soundtype:metal>);
scsteamturbinecasing.register();

var dilutedoil = VanillaFactory.createFluid("dilutedoil", Color.fromHex("141414"));
dilutedoil.register();

var desaltedoil = VanillaFactory.createFluid("desaltedoil", Color.fromHex("2C2C2C"));
desaltedoil.register();

var sulfuricoilresidues = VanillaFactory.createFluid("sulfuricoilresidues", Color.fromHex("FFEE58"));
sulfuricoilresidues.register();

var sulfuricbyproducts = VanillaFactory.createFluid("sulfuricbyproducts", Color.fromHex("2C2C2C"));
sulfuricbyproducts.register();

var heavyoilresidues = VanillaFactory.createFluid("heavyoilresidues", Color.fromHex("181816"));
heavyoilresidues.register();

var paraffinwax = VanillaFactory.createItem("paraffinwax");
paraffinwax.register();

var stackwax = VanillaFactory.createItem("stackwax");
stackwax.register();

var bitominousresidue = VanillaFactory.createItem("bitominousresidue");
bitominousresidue.register();

var fractionatedoil = VanillaFactory.createFluid("fractionatedoil", Color.fromHex("181816"));
fractionatedoil.register();

var tar = VanillaFactory.createFluid("tar", Color.fromHex("222121"));
tar.register();

var oilgas = VanillaFactory.createFluid("oilgas", Color.fromHex("121010"));
oilgas.register();

var vacuumflashedtar = VanillaFactory.createFluid("vacuumflashedtar", Color.fromHex("121010"));
vacuumflashedtar.register();

var petreulumcoke = VanillaFactory.createItem("petreulumcoke");
petreulumcoke.register();

var asphalt = VanillaFactory.createItem("asphalt");
asphalt.register();

var richamine = VanillaFactory.createFluid("richamine", Color.fromHex("121010"));
richamine.register();

var sourgas = VanillaFactory.createFluid("sourgas", Color.fromHex("121010"));
sourgas.register();

var oilfractions = VanillaFactory.createFluid("oilfractions", Color.fromHex("121010"));
oilfractions.register();

var treatedsulfuricfractions = VanillaFactory.createFluid("treatedsulfuricfractions", Color.fromHex("121010"));
treatedsulfuricfractions.register();

var boiledleather = VanillaFactory.createItem("boiledleather");
boiledleather.register();

var rareearthone = VanillaFactory.createItem("rareearthone");
rareearthone.register();

var rareearthtwo = VanillaFactory.createItem("rareearthtwo");
rareearthtwo.register();

var rareearththree = VanillaFactory.createItem("rareearththree");
rareearththree.register();

var crackingcatalystpreparation = VanillaFactory.createItem("crackingcatalystpreparation");
crackingcatalystpreparation.register();

var crackingcatalyst = VanillaFactory.createItem("crackingcatalyst");
crackingcatalyst.register();

var usedcrackingcatalyst = VanillaFactory.createItem("usedcrackingcatalyst");
usedcrackingcatalyst.register();

var uncatalyzedsulfuricgas = VanillaFactory.createFluid("uncatalyzedsulfuricgas", Color.fromHex("D4E157"));
uncatalyzedsulfuricgas.register();

var aluminacatalyst = VanillaFactory.createItem("aluminacatalyst");
aluminacatalyst.register();

var fluegas = VanillaFactory.createFluid("fluegas", Color.fromHex("B1B1B0"));
fluegas.register();

var cathode = VanillaFactory.createItem("cathode");
cathode.register();

var anode = VanillaFactory.createItem("anode");
anode.register();

var wastewater = VanillaFactory.createFluid("wastewater", Color.fromHex("2E4D7F"));
wastewater.register();

var hydrogeniodide = VanillaFactory.createItem("hydrogeniodide");
hydrogeniodide.register();

var calcinatedbastnasite = VanillaFactory.createItem("calcinatedbastnasite");
calcinatedbastnasite.register();

var muddybastnasitesolution = VanillaFactory.createFluid("muddybastnasitesolution", Color.fromHex("842508"));
muddybastnasitesolution.register();

var conditionedbastnasitemud = VanillaFactory.createFluid("conditionedbastnasitemud", Color.fromHex("544340"));
conditionedbastnasitemud.register();

var dilutedbastnasitemud = VanillaFactory.createFluid("dilutedbastnasitemud", Color.fromHex("2E4D7F"));
dilutedbastnasitemud.register();

var filteredbsatnasitemud = VanillaFactory.createFluid("filteredbsatnasitemud", Color.fromHex("2E4D7F"));
filteredbsatnasitemud.register();

var wetbastnasiterareearthconcentrate = VanillaFactory.createFluid("wetbastnasiterareearthconcentrate", Color.fromHex("2E4D7F"));
wetbastnasiterareearthconcentrate.register();

var bastnasiteconcentrate = VanillaFactory.createFluid("bastnasiteconcentrate", Color.fromHex("2E4D7F"));
bastnasiteconcentrate.register();

var roastedbastnasite = VanillaFactory.createItem("roastedbastnasite");
roastedbastnasite.register();

var roastedbastnasiteconcentrate = VanillaFactory.createFluid("roastedbastnasiteconcentrate", Color.fromHex("2E4D7F"));
roastedbastnasiteconcentrate.register();

var jetfuel = VanillaFactory.createFluid("jetfuel", Color.fromHex("429D46"));
jetfuel.register();

var combustionpromoter = VanillaFactory.createFluid("combustionpromoter", Color.fromHex("2E4D7F"));
combustionpromoter.register();

var ferrocene = VanillaFactory.createItem("ferrocene");
ferrocene.register();

var ethanolgasoline = VanillaFactory.createFluid("ethanolgasoline", Color.fromHex("2E4D7F"));
ethanolgasoline.register();

var impureferrocenemixture = VanillaFactory.createFluid("impureferrocenemixture", Color.fromHex("8E24AA"));
impureferrocenemixture.register();

var ether = VanillaFactory.createFluid("ether", Color.fromHex("E65100"));
ether.register();

var ferrocenesolution = VanillaFactory.createFluid("ferrocenesolution", Color.fromHex("B0BEC5"));
ferrocenesolution.register();

var dirtdust = VanillaFactory.createItem("dirtdust");
dirtdust.register();

var datadiskassemblyline = VanillaFactory.createItem("datadiskassemblyline");
datadiskassemblyline.register();

var datadiskdigester = VanillaFactory.createItem("datadiskdigester");
datadiskdigester.register();

var acidicbastnasiteconcentrate = VanillaFactory.createFluid("acidicbastnasiteconcentrate", Color.fromHex("BF360C"));
acidicbastnasiteconcentrate.register();

var ceriumcontainingbastnasiteconcentrate = VanillaFactory.createFluid("ceriumcontainingbastnasiteconcentrate", Color.fromHex("BF5D40"));
ceriumcontainingbastnasiteconcentrate.register();

var bastnasiterarerearthoxidemixture = VanillaFactory.createFluid("bastnasiterarerearthoxidemixture", Color.fromHex("D28770"));
bastnasiterarerearthoxidemixture.register();

var bastnasiterarerearthoxidemixturedust = VanillaFactory.createItem("bastnasiterarerearthoxidemixturedust");
bastnasiterarerearthoxidemixturedust.register();

var bastnasiterarerearthconcentrate = VanillaFactory.createFluid("bastnasiterarerearthconcentrate", Color.fromHex("2E4D7F"));
bastnasiterarerearthconcentrate.register();

var nitrogenatedbastnasiterarerearthoxides = VanillaFactory.createFluid("nitrogenatedbastnasiterarerearthoxides", Color.fromHex("2E4D7F"));
nitrogenatedbastnasiterarerearthoxides.register();

var bastnasiterarerearthoxidesemulsion = VanillaFactory.createFluid("bastnasiterarerearthoxidesemulsion", Color.fromHex("2E4D7F"));
bastnasiterarerearthoxidesemulsion.register();

var bastnasiterarerearthoxidessolution = VanillaFactory.createFluid("bastnasiterarerearthoxidessolution", Color.fromHex("2E4D7F"));
bastnasiterarerearthoxidessolution.register();

var neodymiumrareearthconcentrate = VanillaFactory.createItem("neodymiumrareearthconcentrate");
neodymiumrareearthconcentrate.register();

var datadiskumvproc = VanillaFactory.createItem("datadiskumvproc");
datadiskumvproc.register();

var samaricrareearthconcentrate = VanillaFactory.createItem("samaricrareearthconcentrate");
samaricrareearthconcentrate.register();

var fluorinatedsamariccompound = VanillaFactory.createItem("fluorinatedsamariccompound");
fluorinatedsamariccompound.register();

var calciumfluoride = VanillaFactory.createItem("calciumfluoride");
calciumfluoride.register();

var samariumterbiumconcentrate = VanillaFactory.createItem("samariumterbiumconcentrate");
samariumterbiumconcentrate.register();

var samaricresidues = VanillaFactory.createItem("samaricresidues");
samaricresidues.register();

var bastnasiteoxidecomposite = VanillaFactory.createItem("bastnasiteoxidecomposite");
bastnasiteoxidecomposite.register();

var diethylamine = VanillaFactory.createFluid("diethylamine", Color.fromHex("827717"));
diethylamine.register();

var ferrocenewaste = VanillaFactory.createFluid("ferrocenewaste", Color.fromHex("827717"));
ferrocenewaste.register();

var asphaltblock = VanillaFactory.createBlock("asphaltblock", <blockmaterial:rock>);
asphaltblock.setBlockHardness(12.0);
asphaltblock.setBlockResistance(10.0);
asphaltblock.setToolClass("pickaxe");
asphaltblock.setToolLevel(2);
asphaltblock.setBlockSoundType(<soundtype:metal>);
asphaltblock.register();

var bastnasiteoxidecompositeliquid = VanillaFactory.createFluid("bastnasiteoxidecompositeliquid", Color.fromHex("827717"));
bastnasiteoxidecompositeliquid.register();

var cosmic_circuit_board = VanillaFactory.createItem("cosmic_circuit_board");
cosmic_circuit_board.register();

var waterplasma = VanillaFactory.createFluid("waterplasma", Color.fromHex("827717"));
waterplasma.register();

var geneticmutagen = VanillaFactory.createFluid("geneticmutagen", Color.fromHex("448247"));
geneticmutagen.register();

var xenoxene = VanillaFactory.createFluid("xenoxene", Color.fromHex("4D4C4C"));
xenoxene.register();

var spacetimebendingsmdtransistor = VanillaFactory.createItem("spacetimebendingsmdtransistor");
spacetimebendingsmdtransistor.register();

var spacetimebendingsmddiode = VanillaFactory.createItem("spacetimebendingsmddiode");
spacetimebendingsmddiode.register();

var spacetimebendingsmdresistor = VanillaFactory.createItem("spacetimebendingsmdresistor");
spacetimebendingsmdresistor.register();

var spacetimebendingsmdcapacitor = VanillaFactory.createItem("spacetimebendingsmdcapacitor");
spacetimebendingsmdcapacitor.register();

var rawradox = VanillaFactory.createFluid("rawradox", Color.fromHex("8E24AA"));
rawradox.register();

var lightradox = VanillaFactory.createFluid("lightradox", Color.fromHex("D0AADB"));
lightradox.register();

var heavyradox = VanillaFactory.createFluid("heavyradox", Color.fromHex("633C7A"));
heavyradox.register();

var crackedlightradox = VanillaFactory.createFluid("crackedlightradox", Color.fromHex("B9A1C7"));
crackedlightradox.register();

var purifiedradox = VanillaFactory.createFluid("purifiedradox", Color.fromHex("321245"));
purifiedradox.register();

var crackedheavyradox = VanillaFactory.createFluid("crackedheavyradox", Color.fromHex("6A1B9A"));
crackedheavyradox.register();

var supportstructure = VanillaFactory.createBlock("supportstructure", <blockmaterial:rock>);
supportstructure.setBlockHardness(12.0);
supportstructure.setBlockResistance(10.0);
supportstructure.setToolClass("pickaxe");
supportstructure.setToolLevel(2);
supportstructure.setBlockSoundType(<soundtype:metal>);
supportstructure.register();

var basecasing = VanillaFactory.createBlock("basecasing", <blockmaterial:rock>);
basecasing.setBlockHardness(12.0);
basecasing.setBlockResistance(10.0);
basecasing.setToolClass("pickaxe");
basecasing.setToolLevel(2);
basecasing.setBlockSoundType(<soundtype:metal>);
basecasing.register();

var motorfive = VanillaFactory.createBlock("motorfive", <blockmaterial:rock>);
motorfive.setBlockHardness(12.0);
motorfive.setBlockResistance(10.0);
motorfive.setToolClass("pickaxe");
motorfive.setToolLevel(2);
motorfive.setBlockSoundType(<soundtype:metal>);
motorfive.register();

var motorfour = VanillaFactory.createBlock("motorfour", <blockmaterial:rock>);
motorfour.setBlockHardness(12.0);
motorfour.setBlockResistance(10.0);
motorfour.setToolClass("pickaxe");
motorfour.setToolLevel(2);
motorfour.setBlockSoundType(<soundtype:metal>);
motorfour.register();

var motorthree = VanillaFactory.createBlock("motorthree", <blockmaterial:rock>);
motorthree.setBlockHardness(12.0);
motorthree.setBlockResistance(10.0);
motorthree.setToolClass("pickaxe");
motorthree.setToolLevel(2);
motorthree.setBlockSoundType(<soundtype:metal>);
motorthree.register();

var motortwo = VanillaFactory.createBlock("motortwo", <blockmaterial:rock>);
motortwo.setBlockHardness(12.0);
motortwo.setBlockResistance(10.0);
motortwo.setToolClass("pickaxe");
motortwo.setToolLevel(2);
motortwo.setBlockSoundType(<soundtype:metal>);
motortwo.register();

var motorone = VanillaFactory.createBlock("motorone", <blockmaterial:rock>);
motorone.setBlockHardness(12.0);
motorone.setBlockResistance(10.0);
motorone.setToolClass("pickaxe");
motorone.setToolLevel(2);
motorone.setBlockSoundType(<soundtype:metal>);
motorone.register();

var motorblock = VanillaFactory.createBlock("motorblock", <blockmaterial:rock>);
motorblock.setBlockHardness(12.0);
motorblock.setBlockResistance(10.0);
motorblock.setToolClass("pickaxe");
motorblock.setToolLevel(2);
motorblock.setBlockSoundType(<soundtype:metal>);
motorblock.register();

var internalstructure = VanillaFactory.createBlock("internalstructure", <blockmaterial:rock>);
internalstructure.setBlockHardness(12.0);
internalstructure.setBlockResistance(10.0);
internalstructure.setToolClass("pickaxe");
internalstructure.setToolLevel(2);
internalstructure.setBlockSoundType(<soundtype:metal>);
internalstructure.register();

var startiumdust = VanillaFactory.createItem("startiumdust");
startiumdust.register();

var tungstalloytwoingot = VanillaFactory.createItem("tungstalloytwoingot");
tungstalloytwoingot.register();

var tungstalloytwodust = VanillaFactory.createItem("tungstalloytwodust");
tungstalloytwodust.register();

var tungstalloyonedust = VanillaFactory.createItem("tungstalloyonedust");
tungstalloyonedust.register();

var zircalloydust = VanillaFactory.createItem("zircalloydust");
zircalloydust.register();

var blackpearl = VanillaFactory.createItem("blackpearl");
blackpearl.register();

var platinumpearlcatalyst = VanillaFactory.createItem("platinumpearlcatalyst");
platinumpearlcatalyst.register();

var tungstalloytwohotingot = VanillaFactory.createItem("tungstalloytwohotingot");
tungstalloytwohotingot.register();

var ic2distilled_water = VanillaFactory.createFluid("ic2distilled_water", Color.fromHex("66b8cc"));
ic2distilled_water.register();

var soulariumreinforcedglass = VanillaFactory.createBlock("soulariumreinforcedglass", <blockmaterial:glass>);
soulariumreinforcedglass.setBlockHardness(1.5);
soulariumreinforcedglass.setBlockResistance(3.0);
soulariumreinforcedglass.setBlockLayer("TRANSLUCENT");
soulariumreinforcedglass.setLightOpacity(12);
soulariumreinforcedglass.setTranslucent(true);
soulariumreinforcedglass.setFullBlock(false);
soulariumreinforcedglass.setToolClass("pickaxe");
soulariumreinforcedglass.setToolLevel(2);
soulariumreinforcedglass.setBlockSoundType(<soundtype:stone>);
soulariumreinforcedglass.register();

var containment_plating = VanillaFactory.createItem("containment_plating");
containment_plating.register();

var solidified_uum = VanillaFactory.createItem("solidified_uum");
solidified_uum.register();

var drill_handle = VanillaFactory.createItem("drill_handle");
drill_handle.register();

var containment_box = VanillaFactory.createItem("containment_box");
containment_box.register();

var ic2drill = VanillaFactory.createItem("ic2drill");
ic2drill.register();

var coal_plate = VanillaFactory.createItem("coal_plate");
coal_plate.register();

var coils = VanillaFactory.createItem("coils");
coils.register();

var muddy_monazite_solution = VanillaFactory.createFluid("muddy_monazite_solution", Color.fromHex("353626"));
muddy_monazite_solution.register();

var monazite_solution = VanillaFactory.createFluid("monazite_solution", Color.fromHex("192418"));
monazite_solution.register();

var monazite_sulfate = VanillaFactory.createItem("monazite_sulfate");
monazite_sulfate.register();

var diluted_monazite_sulfate = VanillaFactory.createFluid("diluted_monazite_sulfate", Color.fromHex("374f36"));
diluted_monazite_sulfate.register();

var neutralized_monazite = VanillaFactory.createFluid("neutralized_monazite", Color.fromHex("273b26"));
neutralized_monazite.register();

var thorium_phosphate_cake = VanillaFactory.createItem("thorium_phosphate_cake");
thorium_phosphate_cake.register();

var thorium_phosphate_concentrate = VanillaFactory.createItem("thorium_phosphate_concentrate");
thorium_phosphate_concentrate.register();

var rare_earth_filtrate = VanillaFactory.createItem("rare_earth_filtrate");
rare_earth_filtrate.register();

var neutralized_rare_earth_filtrate = VanillaFactory.createItem("neutralized_rare_earth_filtrate");
neutralized_rare_earth_filtrate.register();

var uranium_filtrate_dust = VanillaFactory.createItem("uranium_filtrate_dust");
uranium_filtrate_dust.register();

var uranium_concentrate_dust = VanillaFactory.createItem("uranium_concentrate_dust");
uranium_concentrate_dust.register();

var zelius_fish = VanillaFactory.createItem("zelius_fish");
zelius_fish.register();

var space_warper_core = VanillaFactory.createItem("space_warper_core");
space_warper_core.register();

var obsidianrod = VanillaFactory.createItem("obsidianrod");
obsidianrod.register();

var astro_miner = VanillaFactory.createItem("astro_miner");
astro_miner.register();

var climateproofcasing = VanillaFactory.createBlock("climateproofcasing", <blockmaterial:rock>);
climateproofcasing.setBlockHardness(12.0);
climateproofcasing.setBlockResistance(10.0);
climateproofcasing.setToolClass("pickaxe");
climateproofcasing.setToolLevel(2);
climateproofcasing.setBlockSoundType(<soundtype:metal>);
climateproofcasing.register();

var impure_ethanol = VanillaFactory.createFluid("impure_ethanol", Color.fromHex("6F6936"));
impure_ethanol.register();

var grain_solution = VanillaFactory.createFluid("grain_solution", Color.fromHex("CDCDC8"));
grain_solution.register();

var ehtanol_water_azeotrope = VanillaFactory.createFluid("ehtanol_water_azeotrope", Color.fromHex("D88267"));
ehtanol_water_azeotrope.register();

var vinegar = VanillaFactory.createFluid("vinegar", Color.fromHex("C5B2AB"));
vinegar.register();

var researchpapermoon = VanillaFactory.createItem("researchpapermoon");
researchpapermoon.register();

var researchpapermars = VanillaFactory.createItem("researchpapermars");
researchpapermars.register();

var researchpapermercury = VanillaFactory.createItem("researchpapermercury");
researchpapermercury.register();

var researchpapervenus = VanillaFactory.createItem("researchpapervenus");
researchpapervenus.register();

var researchpaperceres = VanillaFactory.createItem("researchpaperceres");
researchpaperceres.register();

var researchpaperjupiter = VanillaFactory.createItem("researchpaperjupiter");
researchpaperjupiter.register();

var researchpaperasteroids = VanillaFactory.createItem("researchpaperasteroids");
researchpaperasteroids.register();

var researchpapersaturn = VanillaFactory.createItem("researchpapersaturn");
researchpapersaturn.register();

var researchpaperuranus = VanillaFactory.createItem("researchpaperuranus");
researchpaperuranus.register();

var researchpaperneptune = VanillaFactory.createItem("researchpaperneptune");
researchpaperneptune.register();

var researchpaperpluto = VanillaFactory.createItem("researchpaperpluto");
researchpaperpluto.register();

var researchpaperkuiperbelt = VanillaFactory.createItem("researchpaperkuiperbelt");
researchpaperkuiperbelt.register();

var researchpaperhaumea = VanillaFactory.createItem("researchpaperhaumea");
researchpaperhaumea.register();

var researchpapereris = VanillaFactory.createItem("researchpapereris");
researchpapereris.register();

var researchpapermakemake = VanillaFactory.createItem("researchpapermakemake");
researchpapermakemake.register();

var eris = VanillaFactory.createItem("eris");
eris.register();

var jupiter = VanillaFactory.createItem("jupiter");
jupiter.register();

var alumino_silicate_wool_sheet = VanillaFactory.createItem("alumino_silicate_wool_sheet");
alumino_silicate_wool_sheet.register();

var dense_ice = VanillaFactory.createBlock("dense_ice", <blockmaterial:rock>);
dense_ice.setBlockHardness(12.0);
dense_ice.setBlockResistance(10.0);
dense_ice.setToolClass("pickaxe");
dense_ice.setToolLevel(2);
dense_ice.setBlockSoundType(<soundtype:metal>);
dense_ice.register();

var triethylaluminium = VanillaFactory.createFluid("triethylaluminium", Color.fromHex("4d4de3"));
triethylaluminium.register();

var polybenzimidazoleprepolymerfoam = VanillaFactory.createFluid("polybenzimidazoleprepolymerfoam", Color.fromHex("1b1b1c"));
polybenzimidazoleprepolymerfoam.register();

var polybenzimidazolesolution = VanillaFactory.createFluid("polybenzimidazolesolution", Color.fromHex("1a1a1c"));
polybenzimidazolesolution.register();

var impurepolybenzimidazolesolution = VanillaFactory.createFluid("impurepolybenzimidazolesolution", Color.fromHex("1a1a1c"));
impurepolybenzimidazolesolution.register();

var polybenzimidazolewaste = VanillaFactory.createFluid("polybenzimidazolewaste", Color.fromHex("070708"));
polybenzimidazolewaste.register();

var living_bio_chip = VanillaFactory.createItem("living_bio_chip");
living_bio_chip.register();

var sgm_catalyst = VanillaFactory.createItem("sgm_catalyst");
sgm_catalyst.register();

var living_crystal_chip = VanillaFactory.createItem("living_crystal_chip");
living_crystal_chip.register();

var pgm_catalyst = VanillaFactory.createItem("pgm_catalyst");
pgm_catalyst.register();

var ngm_catalyst = VanillaFactory.createItem("ngm_catalyst");
ngm_catalyst.register();

var ree_catalyst = VanillaFactory.createItem("ree_catalyst");
ree_catalyst.register();

var radox_catalyst = VanillaFactory.createItem("radox_catalyst");
radox_catalyst.register();

var plastic_catalyst = VanillaFactory.createItem("plastic_catalyst");
plastic_catalyst.register();

var kevlar_catalyst = VanillaFactory.createItem("kevlar_catalyst");
kevlar_catalyst.register();

var metal_catalyst = VanillaFactory.createItem("metal_catalyst");
metal_catalyst.register();

var soldering_catalyst = VanillaFactory.createItem("soldering_catalyst");
soldering_catalyst.register();

var machine_casing_firebox_steel = VanillaFactory.createBlock("machine_casing_firebox_steel", <blockmaterial:rock>);
machine_casing_firebox_steel.setBlockHardness(12.0);
machine_casing_firebox_steel.setBlockResistance(10.0);
machine_casing_firebox_steel.setToolClass("pickaxe");
machine_casing_firebox_steel.setToolLevel(2);
machine_casing_firebox_steel.setBlockSoundType(<soundtype:metal>);
machine_casing_firebox_steel.register();

var steel_item_casing = VanillaFactory.createItem("steel_item_casing");
steel_item_casing.register();

var machine_casing_clean_stainless_steel = VanillaFactory.createBlock("machine_casing_clean_stainless_steel", <blockmaterial:rock>);
machine_casing_clean_stainless_steel.setBlockHardness(12.0);
machine_casing_clean_stainless_steel.setBlockResistance(10.0);
machine_casing_clean_stainless_steel.setToolClass("pickaxe");
machine_casing_clean_stainless_steel.setToolLevel(2);
machine_casing_clean_stainless_steel.setBlockSoundType(<soundtype:metal>);
machine_casing_clean_stainless_steel.register();

var basic_structural_casing = VanillaFactory.createBlock("basic_structural_casing", <blockmaterial:rock>);
basic_structural_casing.setBlockHardness(12.0);
basic_structural_casing.setBlockResistance(10.0);
basic_structural_casing.setToolClass("pickaxe");
basic_structural_casing.setToolLevel(2);
basic_structural_casing.setBlockSoundType(<soundtype:metal>);
basic_structural_casing.register();

var machine_casing_solid_steel = VanillaFactory.createBlock("machine_casing_solid_steel", <blockmaterial:rock>);
machine_casing_solid_steel.setBlockHardness(12.0);
machine_casing_solid_steel.setBlockResistance(10.0);
machine_casing_solid_steel.setToolClass("pickaxe");
machine_casing_solid_steel.setToolLevel(2);
machine_casing_solid_steel.setBlockSoundType(<soundtype:metal>);
machine_casing_solid_steel.register();

var machine_casing_stable_titanium = VanillaFactory.createBlock("machine_casing_stable_titanium", <blockmaterial:rock>);
machine_casing_stable_titanium.setBlockHardness(12.0);
machine_casing_stable_titanium.setBlockResistance(10.0);
machine_casing_stable_titanium.setToolClass("pickaxe");
machine_casing_stable_titanium.setToolLevel(2);
machine_casing_stable_titanium.setBlockSoundType(<soundtype:metal>);
machine_casing_stable_titanium.register();

var bismuth_bronze = VanillaFactory.createBlock("bismuth_bronze", <blockmaterial:rock>);
bismuth_bronze.setBlockHardness(12.0);
bismuth_bronze.setBlockResistance(10.0);
bismuth_bronze.setToolClass("pickaxe");
bismuth_bronze.setToolLevel(2);
bismuth_bronze.setBlockSoundType(<soundtype:metal>);
bismuth_bronze.register();

var lubricating_oil = VanillaFactory.createFluid("lubricating_oil", Color.fromHex("070708"));
lubricating_oil.register();

var fusel_oil = VanillaFactory.createFluid("fusel_oil", Color.fromHex("070708"));
fusel_oil.register();

var npropanol = VanillaFactory.createFluid("npropanol", Color.fromHex("070708"));
npropanol.register();

var isoamyl_alcohol = VanillaFactory.createFluid("isoamyl_alcohol", Color.fromHex("070708"));
isoamyl_alcohol.register();

var nbutanol = VanillaFactory.createFluid("nbutanol", Color.fromHex("070708"));
nbutanol.register();

var isobutyl_alcohol = VanillaFactory.createFluid("isobutyl_alcohol", Color.fromHex("070708"));
isobutyl_alcohol.register();
