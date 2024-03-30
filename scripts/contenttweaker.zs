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

var woodgear = VanillaFactory.createItem("woodgear");
woodgear.register();

var hammer = VanillaFactory.createItem("hammer");
hammer.maxStackSize = 1;
hammer.maxDamage = 20;
hammer.register();

var bulatsteelingot = VanillaFactory.createItem("bulatsteelingot");
bulatsteelingot.register();

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

var catalyst = VanillaFactory.createItem("catalyst");
catalyst.register();

var silveralloyplate = VanillaFactory.createItem("silveralloyplate");
silveralloyplate.register();

var silveralloyingot = VanillaFactory.createItem("silveralloyingot");
silveralloyingot.register();

var blazingrod = VanillaFactory.createItem("blazingrod");
blazingrod.register();

var bronzeelectrontube = VanillaFactory.createItem("bronzeelectrontube");
bronzeelectrontube.register();

var supercooledingot = VanillaFactory.createItem("supercooledingot");
supercooledingot.register();

var rubyingot = VanillaFactory.createItem("rubyingot");
rubyingot.register();

var supercooledplate = VanillaFactory.createItem("supercooledplate");
supercooledplate.register();

var bulatfiberreinforcedcircuitboard = VanillaFactory.createItem("bulatfiberreinforcedcircuitboard");
bulatfiberreinforcedcircuitboard.register();

var bisphenolbsheet = VanillaFactory.createItem("bisphenolbsheet");
bisphenolbsheet.register();

var bisphenolbingot = VanillaFactory.createItem("bisphenolbingot");
bisphenolbingot.register();

var hotvibrantalloyingot = VanillaFactory.createItem("hotvibrantalloyingot");
hotvibrantalloyingot.register();

var heavydutyalloyt1 = VanillaFactory.createItem("heavydutyalloyt1");
heavydutyalloyt1.register();

var heavydutyalloyt2 = VanillaFactory.createItem("heavydutyalloyt2");
heavydutyalloyt2.register();

var hotplatinumingot = VanillaFactory.createItem("hotplatinumingot");
hotplatinumingot.register();

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

var cotton = VanillaFactory.createItem("cotton");
cotton.register();

var cotton_sheet = VanillaFactory.createItem("cotton_sheet");
cotton_sheet.register();

var cheese_cloth = VanillaFactory.createItem("cheese_cloth");
cheese_cloth.register();

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

var crystaltinebaseingot = VanillaFactory.createItem("crystaltinebaseingot");
crystaltinebaseingot.register();

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

var draconiumfragment = VanillaFactory.createItem("draconiumfragment");
draconiumfragment.register();

var engine = VanillaFactory.createItem("engine");
engine.register();

var diamondaluminiumcasing = VanillaFactory.createItem("diamondaluminiumcasing");
diamondaluminiumcasing.register();

var compressedironnugget = VanillaFactory.createItem("compressedironnugget");
compressedironnugget.register();

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

var hotmarcem200steelingot = VanillaFactory.createItem("hotmarcem200steelingot");
hotmarcem200steelingot.register();

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

var hotadamantiumalloyingot = VanillaFactory.createItem("hotadamantiumalloyingot");
hotadamantiumalloyingot.register();

var hotblackplutoniumingot = VanillaFactory.createItem("hotblackplutoniumingot");
hotblackplutoniumingot.register();

var hotfluxedelectrumingot = VanillaFactory.createItem("hotfluxedelectrumingot");
hotfluxedelectrumingot.register();

var monazitecluster = VanillaFactory.createItem("monazitecluster");
monazitecluster.register();

var osmiumsieve = VanillaFactory.createItem("osmiumsieve");
osmiumsieve.register();

var electrocitinerawalloyingot = VanillaFactory.createItem("electrocitinerawalloyingot");
electrocitinerawalloyingot.register();

var highdensitythoria = VanillaFactory.createItem("highdensitythoria");
highdensitythoria.register();

var hyperchargedleptontrapcrystal = VanillaFactory.createItem("hyperchargedleptontrapcrystal");
hyperchargedleptontrapcrystal.register();

var protoadamantiumplatedalloyplate = VanillaFactory.createItem("protoadamantiumplatedalloyplate");
protoadamantiumplatedalloyplate.register();

var protoadamantiumplatedalloyingot = VanillaFactory.createItem("protoadamantiumplatedalloyingot");
protoadamantiumplatedalloyingot.register();

var infinityplatedplate = VanillaFactory.createItem("infinityplatedplate");
infinityplatedplate.register();

var infinityplatedingot = VanillaFactory.createItem("infinityplatedingot");
infinityplatedingot.register();

var assemblingcomponent = VanillaFactory.createItem("assemblingcomponent");
assemblingcomponent.register();

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

var advancedcircuitmold = VanillaFactory.createItem("advancedcircuitmold");
advancedcircuitmold.register();

var hotactivatednaquadahingot = VanillaFactory.createItem("hotactivatednaquadahingot");
hotactivatednaquadahingot.register();

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

var rawneutroniumingot = VanillaFactory.createItem("rawneutroniumingot");
rawneutroniumingot.register();

var hotrawneutroniumingot = VanillaFactory.createItem("hotrawneutroniumingot");
hotrawneutroniumingot.register();

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

var net = VanillaFactory.createItem("net");
net.register();

var flintshard = VanillaFactory.createItem("flintshard");
flintshard.register();

var onecoolant = VanillaFactory.createItem("onecoolant");
onecoolant.register();

var onecryogeniccoolant = VanillaFactory.createItem("onecryogeniccoolant");
onecryogeniccoolant.register();

var twocryogeniccoolant = VanillaFactory.createItem("twocryogeniccoolant");
twocryogeniccoolant.register();

var tricryogeniccoolant = VanillaFactory.createItem("tricryogeniccoolant");
tricryogeniccoolant.register();

var exoticingot = VanillaFactory.createItem("exoticingot");
exoticingot.register();

var extremeradiationproofplating = VanillaFactory.createItem("extremeradiationproofplating");
extremeradiationproofplating.register();

var coolantcontainmentcell = VanillaFactory.createItem("coolantcontainmentcell");
coolantcontainmentcell.register();

var spectrekeyhandle = VanillaFactory.createItem("spectrekeyhandle");
spectrekeyhandle.register();

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

var titansteelcircuit = VanillaFactory.createItem("titansteelcircuit");
titansteelcircuit.register();

var einsteiniumcircuit = VanillaFactory.createItem("einsteiniumcircuit");
einsteiniumcircuit.register();

var degeneraterheniumcircuit = VanillaFactory.createItem("degeneraterheniumcircuit");
degeneraterheniumcircuit.register();

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

var compressedmetalingot = VanillaFactory.createItem("compressedmetalingot");
compressedmetalingot.register();

var enhancedenderiumunrefinedcrystal = VanillaFactory.createItem("enhancedenderiumunrefinedcrystal");
enhancedenderiumunrefinedcrystal.register();

var enhancedenderiumcrystal = VanillaFactory.createItem("enhancedenderiumcrystal");
enhancedenderiumcrystal.register();

var awakenedcompressedmetalingot = VanillaFactory.createItem("awakenedcompressedmetalingot");
awakenedcompressedmetalingot.register();

var awakenedcompressedmetalplate = VanillaFactory.createItem("awakenedcompressedmetalplate");
awakenedcompressedmetalplate.register();

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

var dualitioncore = VanillaFactory.createItem("dualitioncore");
dualitioncore.register();

var unimpuredwafer = VanillaFactory.createItem("unimpuredwafer");
unimpuredwafer.register();

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

var ceriumlanthanumsaturatedcompoundingot = VanillaFactory.createItem("ceriumlanthanumsaturatedcompoundingot");
ceriumlanthanumsaturatedcompoundingot.register();

var lanthanumseedcrystal = VanillaFactory.createItem("lanthanumseedcrystal");
lanthanumseedcrystal.register();

var celasiliconboule = VanillaFactory.createItem("celasiliconboule");
celasiliconboule.register();

var ceriumlanthanumingot = VanillaFactory.createItem("ceriumlanthanumingot");
ceriumlanthanumingot.register();

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

var rawlapotron = VanillaFactory.createItem("rawlapotron");
rawlapotron.register();
 
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

var vacuumfurnacecasing = VanillaFactory.createBlock("vacuumfurnacecasing", <blockmaterial:rock>);
vacuumfurnacecasing.setBlockHardness(8.0);
vacuumfurnacecasing.setBlockResistance(10.0);
vacuumfurnacecasing.setToolClass("pickaxe");
vacuumfurnacecasing.setToolLevel(2);
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

var rotarryspinningwhisker = VanillaFactory.createItem("rotarryspinningwhisker");
rotarryspinningwhisker.register();

var seperationfilter = VanillaFactory.createItem("seperationfilter");
seperationfilter.register();

var seperationcatalyst = VanillaFactory.createItem("seperationcatalyst");
seperationcatalyst.register();

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

var spacetimebendingprocessor = VanillaFactory.createItem("spacetimebendingprocessor");
spacetimebendingprocessor.register();

var spacetimebendingmainframe = VanillaFactory.createItem("spacetimebendingmainframe");
spacetimebendingmainframe.register();

var spacetimebendingcomputer = VanillaFactory.createItem("spacetimebendingcomputer");
spacetimebendingcomputer.register();

var spacetimebendingassembly = VanillaFactory.createItem("spacetimebendingassembly");
spacetimebendingassembly.register();

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

var datadisc = VanillaFactory.createItem("datadisc");
datadisc.register();

var datadiskblackholecompressor = VanillaFactory.createItem("datadiskblackholecompressor");
datadiskblackholecompressor.register();

var wovenkevlar = VanillaFactory.createItem("wovenkevlar");
wovenkevlar.register();

var reinfrocedkevlarcloth = VanillaFactory.createItem("reinfrocedkevlarcloth");
reinfrocedkevlarcloth.register();

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

var scsteamturbinecasing = VanillaFactory.createBlock("scsteamturbinecasing", <blockmaterial:rock>);
scsteamturbinecasing.setBlockHardness(12.0);
scsteamturbinecasing.setBlockResistance(10.0);
scsteamturbinecasing.setToolClass("pickaxe");
scsteamturbinecasing.setToolLevel(2);
scsteamturbinecasing.setBlockSoundType(<soundtype:metal>);
scsteamturbinecasing.register();

var paraffinwax = VanillaFactory.createItem("paraffinwax");
paraffinwax.register();

var stackwax = VanillaFactory.createItem("stackwax");
stackwax.register();

var bitominousresidue = VanillaFactory.createItem("bitominousresidue");
bitominousresidue.register();

var petreulumcoke = VanillaFactory.createItem("petreulumcoke");
petreulumcoke.register();

var asphalt = VanillaFactory.createItem("asphalt");
asphalt.register();

var boiledleather = VanillaFactory.createItem("boiledleather");
boiledleather.register();

var rareearthone = VanillaFactory.createItem("rareearthone");
rareearthone.register();

var rareearthtwo = VanillaFactory.createItem("rareearthtwo");
rareearthtwo.register();

var rareearththree = VanillaFactory.createItem("rareearththree");
rareearththree.register();

var crackingcatalyst = VanillaFactory.createItem("crackingcatalyst");
crackingcatalyst.register();

var usedcrackingcatalyst = VanillaFactory.createItem("usedcrackingcatalyst");
usedcrackingcatalyst.register();

var aluminacatalyst = VanillaFactory.createItem("aluminacatalyst");
aluminacatalyst.register();

var cathode = VanillaFactory.createItem("cathode");
cathode.register();

var anode = VanillaFactory.createItem("anode");
anode.register();

var datadiskassemblyline = VanillaFactory.createItem("datadiskassemblyline");
datadiskassemblyline.register();

var datadiskdigester = VanillaFactory.createItem("datadiskdigester");
datadiskdigester.register();

var datadiskumvproc = VanillaFactory.createItem("datadiskumvproc");
datadiskumvproc.register();

var asphaltblock = VanillaFactory.createBlock("asphaltblock", <blockmaterial:rock>);
asphaltblock.setBlockHardness(12.0);
asphaltblock.setBlockResistance(10.0);
asphaltblock.setToolClass("pickaxe");
asphaltblock.setToolLevel(2);
asphaltblock.setBlockSoundType(<soundtype:metal>);
asphaltblock.register();

var cosmic_circuit_board = VanillaFactory.createItem("cosmic_circuit_board");
cosmic_circuit_board.register();

var spacetimebendingsmdtransistor = VanillaFactory.createItem("spacetimebendingsmdtransistor");
spacetimebendingsmdtransistor.register();

var spacetimebendingsmddiode = VanillaFactory.createItem("spacetimebendingsmddiode");
spacetimebendingsmddiode.register();

var spacetimebendingsmdresistor = VanillaFactory.createItem("spacetimebendingsmdresistor");
spacetimebendingsmdresistor.register();

var spacetimebendingsmdcapacitor = VanillaFactory.createItem("spacetimebendingsmdcapacitor");
spacetimebendingsmdcapacitor.register();

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

var blackpearl = VanillaFactory.createItem("blackpearl");
blackpearl.register();

var platinumpearlcatalyst = VanillaFactory.createItem("platinumpearlcatalyst");
platinumpearlcatalyst.register();

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

var pneumatic = VanillaFactory.createBlock("pneumatic", <blockmaterial:rock>);
pneumatic.setBlockHardness(12.0);
pneumatic.setBlockResistance(10.0);
pneumatic.setToolClass("pickaxe");
pneumatic.setToolLevel(2);
pneumatic.setBlockSoundType(<soundtype:metal>);
pneumatic.register();

var machine_casing_robust_tungstensteel = VanillaFactory.createBlock("machine_casing_robust_tungstensteel", <blockmaterial:rock>);
machine_casing_robust_tungstensteel.setBlockHardness(12.0);
machine_casing_robust_tungstensteel.setBlockResistance(10.0);
machine_casing_robust_tungstensteel.setToolClass("pickaxe");
machine_casing_robust_tungstensteel.setToolLevel(2);
machine_casing_robust_tungstensteel.setBlockSoundType(<soundtype:metal>);
machine_casing_robust_tungstensteel.register();

var monocrystalline_seed_crystal = VanillaFactory.createItem("monocrystalline_seed_crystal");
monocrystalline_seed_crystal.register();

var zirconium_carbide = VanillaFactory.createBlock("zirconium_carbide", <blockmaterial:rock>);
zirconium_carbide.setBlockHardness(12.0);
zirconium_carbide.setBlockResistance(10.0);
zirconium_carbide.setToolClass("pickaxe");
zirconium_carbide.setToolLevel(2);
zirconium_carbide.setBlockSoundType(<soundtype:metal>);
zirconium_carbide.register();

var hss_s = VanillaFactory.createBlock("hss_s", <blockmaterial:rock>);
hss_s.setBlockHardness(12.0);
hss_s.setBlockResistance(10.0);
hss_s.setToolClass("pickaxe");
hss_s.setToolLevel(2);
hss_s.setBlockSoundType(<soundtype:metal>);
hss_s.register();

var nickel_breeding_bed = VanillaFactory.createItem("nickel_breeding_bed");
nickel_breeding_bed.register();

var annealed_nickel_plate = VanillaFactory.createItem("annealed_nickel_plate");
annealed_nickel_plate.register();

var cupriavidusnecator = VanillaFactory.createItem("cupriavidusnecator");
cupriavidusnecator.register();

var graphite_cruicible = VanillaFactory.createItem("graphite_cruicible");
graphite_cruicible.register();

var unpreperated_cela_boule = VanillaFactory.createItem("unpreperated_cela_boule");
unpreperated_cela_boule.register();

var cruicible_mold = VanillaFactory.createItem("cruicible_mold");
cruicible_mold.register();

var pad_petri = VanillaFactory.createItem("pad_petri");
pad_petri.register();

var soy_bean = VanillaFactory.createItem("soy_bean");
soy_bean.register();

var treated_photocoated_hassium_wafer = VanillaFactory.createItem("treated_photocoated_hassium_wafer");
treated_photocoated_hassium_wafer.register();

var gravity_separator_rotor_block = VanillaFactory.createBlock("gravity_separator_rotor_block", <blockmaterial:rock>);
gravity_separator_rotor_block.setBlockHardness(12.0);
gravity_separator_rotor_block.setBlockResistance(10.0);
gravity_separator_rotor_block.setToolClass("pickaxe");
gravity_separator_rotor_block.setToolLevel(1);
gravity_separator_rotor_block.setBlockSoundType(<soundtype:metal>);
gravity_separator_rotor_block.register();

var syringe = VanillaFactory.createItem("syringe");
syringe.register();

var sheep_blood_syringe = VanillaFactory.createItem("sheep_blood_syringe");
sheep_blood_syringe.register();

var sterilized_syringe = VanillaFactory.createItem("sterilized_syringe");
sterilized_syringe.register();

var barley = VanillaFactory.createItem("barley");
barley.register();

var grown_yeast_culture = VanillaFactory.createItem("grown_yeast_culture");
grown_yeast_culture.register();

var yeast_cells = VanillaFactory.createItem("yeast_cells");
yeast_cells.register();

var silver_electrode = VanillaFactory.createItem("silver_electrode");
silver_electrode.register();

var spacetime_bending_processing_core = VanillaFactory.createItem("spacetime_bending_processing_core");
spacetime_bending_processing_core.register();

var thaumic_casing = VanillaFactory.createBlock("thaumic_casing", <blockmaterial:rock>);
thaumic_casing.setBlockHardness(12.0);
thaumic_casing.setBlockResistance(10.0);
thaumic_casing.setToolClass("pickaxe");
thaumic_casing.setToolLevel(1);
thaumic_casing.setBlockSoundType(<soundtype:metal>);
thaumic_casing.register();

var steel_plated_workbench = VanillaFactory.createBlock("steel_plated_workbench", <blockmaterial:rock>);
steel_plated_workbench.setBlockHardness(12.0);
steel_plated_workbench.setBlockResistance(10.0);
steel_plated_workbench.setToolClass("pickaxe");
steel_plated_workbench.setToolLevel(1);
steel_plated_workbench.setBlockSoundType(<soundtype:metal>);
steel_plated_workbench.register();

var aluminium_item_casing = VanillaFactory.createItem("aluminium_item_casing");
aluminium_item_casing.register();

var superconducting_wire_insulation_base = VanillaFactory.createItem("superconducting_wire_insulation_base");
superconducting_wire_insulation_base.register();

var lq_steel_casing = VanillaFactory.createBlock("lq_steel_casing", <blockmaterial:rock>);
lq_steel_casing.setBlockHardness(12.0);
lq_steel_casing.setBlockResistance(10.0);
lq_steel_casing.setToolClass("pickaxe");
lq_steel_casing.setToolLevel(1);
lq_steel_casing.setBlockSoundType(<soundtype:metal>);
lq_steel_casing.register();

var machine_bronze_plated_bricks = VanillaFactory.createBlock("machine_bronze_plated_bricks", <blockmaterial:rock>);
machine_bronze_plated_bricks.setBlockHardness(12.0);
machine_bronze_plated_bricks.setBlockResistance(10.0);
machine_bronze_plated_bricks.setToolClass("pickaxe");
machine_bronze_plated_bricks.setToolLevel(1);
machine_bronze_plated_bricks.setBlockSoundType(<soundtype:metal>);
machine_bronze_plated_bricks.register();

var propellant_tank = VanillaFactory.createItem("propellant_tank");
propellant_tank.register();

var fuel_tank = VanillaFactory.createItem("fuel_tank");
fuel_tank.register();

var oxidizer_tank = VanillaFactory.createItem("oxidizer_tank");
oxidizer_tank.register();

var air_handling_unit = VanillaFactory.createItem("air_handling_unit");
air_handling_unit.register();

var rocket_combustion_chamber = VanillaFactory.createItem("rocket_combustion_chamber");
rocket_combustion_chamber.register();

var injector = VanillaFactory.createItem("injector");
injector.register();

var nozzle = VanillaFactory.createItem("nozzle");
nozzle.register();

var t1_rocket_engine = VanillaFactory.createBlock("t1_rocket_engine", <blockmaterial:rock>);
t1_rocket_engine.setBlockHardness(12.0);
t1_rocket_engine.setBlockResistance(10.0);
t1_rocket_engine.setToolClass("pickaxe");
t1_rocket_engine.setToolLevel(1);
t1_rocket_engine.setBlockSoundType(<soundtype:metal>);
t1_rocket_engine.register();

var rocket_thruster = VanillaFactory.createBlock("rocket_thruster", <blockmaterial:rock>);
rocket_thruster.setBlockHardness(12.0);
rocket_thruster.setBlockResistance(10.0);
rocket_thruster.setToolClass("pickaxe");
rocket_thruster.setToolLevel(1);
rocket_thruster.setBlockSoundType(<soundtype:metal>);
rocket_thruster.register();

var guidance_system = VanillaFactory.createBlock("guidance_system", <blockmaterial:rock>);
guidance_system.setBlockHardness(12.0);
guidance_system.setBlockResistance(10.0);
guidance_system.setToolClass("pickaxe");
guidance_system.setToolLevel(1);
guidance_system.setBlockSoundType(<soundtype:metal>);
guidance_system.register();

var stabilization_fin = VanillaFactory.createBlock("stabilization_fin", <blockmaterial:rock>);
stabilization_fin.setBlockHardness(12.0);
stabilization_fin.setBlockResistance(10.0);
stabilization_fin.setToolClass("pickaxe");
stabilization_fin.setToolLevel(1);
stabilization_fin.setBlockSoundType(<soundtype:metal>);
stabilization_fin.register();

var protective_outer_wall = VanillaFactory.createBlock("protective_outer_wall", <blockmaterial:rock>);
protective_outer_wall.setBlockHardness(12.0);
protective_outer_wall.setBlockResistance(10.0);
protective_outer_wall.setToolClass("pickaxe");
protective_outer_wall.setToolLevel(1);
protective_outer_wall.setBlockSoundType(<soundtype:metal>);
protective_outer_wall.register();

var rocket_equipment = VanillaFactory.createBlock("rocket_equipment", <blockmaterial:rock>);
rocket_equipment.setBlockHardness(12.0);
rocket_equipment.setBlockResistance(10.0);
rocket_equipment.setToolClass("pickaxe");
rocket_equipment.setToolLevel(1);
rocket_equipment.setBlockSoundType(<soundtype:metal>);
rocket_equipment.register();

var vacuum_chamber = VanillaFactory.createItem("vacuum_chamber");
vacuum_chamber.register();

var sputtered_sapphire_substrate = VanillaFactory.createItem("sputtered_sapphire_substrate");
sputtered_sapphire_substrate.register();

var uhpic_base = VanillaFactory.createItem("uhpic_base");
uhpic_base.register();

var uhpic_base_wafer = VanillaFactory.createItem("uhpic_base_wafer");
uhpic_base_wafer.register();

var wired_substrate_wafer = VanillaFactory.createItem("wired_substrate_wafer");
wired_substrate_wafer.register();

var superconductor_coated_substrate_wafer = VanillaFactory.createItem("superconductor_coated_substrate_wafer");
superconductor_coated_substrate_wafer.register();

var engraved_barium_titanate_substrate_wafer = VanillaFactory.createItem("engraved_barium_titanate_substrate_wafer");
engraved_barium_titanate_substrate_wafer.register();

var barium_titanate_substrate_wafer = VanillaFactory.createItem("barium_titanate_substrate_wafer");
barium_titanate_substrate_wafer.register();

var uhpic_lithography_mask = VanillaFactory.createItem("uhpic_lithography_mask");
uhpic_lithography_mask.register();

var lithography_base_mask = VanillaFactory.createItem("lithography_base_mask");
lithography_base_mask.register();

var barium_titanate_boule = VanillaFactory.createItem("barium_titanate_boule");
barium_titanate_boule.register();

var barium_titanate_seed_crystal = VanillaFactory.createItem("barium_titanate_seed_crystal");
barium_titanate_seed_crystal.register();

var pic_lithography_mask = VanillaFactory.createItem("pic_lithography_mask");
pic_lithography_mask.register();

var single_josephson_junction = VanillaFactory.createItem("single_josephson_junction");
single_josephson_junction.register();

var manufactured_superconductor_circuit = VanillaFactory.createItem("manufactured_superconductor_circuit");
manufactured_superconductor_circuit.register();

var raw_power_ic_wafer = VanillaFactory.createItem("raw_power_ic_wafer");
raw_power_ic_wafer.register();

var engraved_power_ic_wafer = VanillaFactory.createItem("engraved_power_ic_wafer");
engraved_power_ic_wafer.register();

var ram_lithography_mask = VanillaFactory.createItem("ram_lithography_mask");
ram_lithography_mask.register();

var engraved_ram_wafer = VanillaFactory.createItem("engraved_ram_wafer");
engraved_ram_wafer.register();

var raw_ram_wafer = VanillaFactory.createItem("raw_ram_wafer");
raw_ram_wafer.register();

var engraved_cpu_wafer = VanillaFactory.createItem("engraved_cpu_wafer");
engraved_cpu_wafer.register();

var raw_cpu_wafer = VanillaFactory.createItem("raw_cpu_wafer");
raw_cpu_wafer.register();

var cpu_lithography_mask = VanillaFactory.createItem("cpu_lithography_mask");
cpu_lithography_mask.register();

var lpic_lithography_mask = VanillaFactory.createItem("lpic_lithography_mask");
lpic_lithography_mask.register();

var naquadah_deposit_block = VanillaFactory.createBlock("naquadah_deposit_block", <blockmaterial:rock>);
naquadah_deposit_block.setBlockHardness(12.0);
naquadah_deposit_block.setBlockResistance(10.0);
naquadah_deposit_block.setToolClass("pickaxe");
naquadah_deposit_block.setToolLevel(1);
naquadah_deposit_block.setBlockSoundType(<soundtype:metal>);
naquadah_deposit_block.register();

var parachute = VanillaFactory.createItem("parachute");
parachute.register();

var oxygen_mask = VanillaFactory.createItem("oxygen_mask");
oxygen_mask.register();

var rebreather = VanillaFactory.createItem("rebreather");
rebreather.register();

var heavydutyplatet1 = VanillaFactory.createItem("heavydutyplatet1");
heavydutyplatet1.register();

var heavydutyplatet2 = VanillaFactory.createItem("heavydutyplatet2");
heavydutyplatet2.register();

var heavydutyplatet3 = VanillaFactory.createItem("heavydutyplatet3");
heavydutyplatet3.register();

var heavydutyplatet4 = VanillaFactory.createItem("heavydutyplatet4");
heavydutyplatet4.register();

var heavydutyplatet5 = VanillaFactory.createItem("heavydutyplatet5");
heavydutyplatet5.register();

var heavydutyplatet6 = VanillaFactory.createItem("heavydutyplatet6");
heavydutyplatet6.register();

var nozzle_t2 = VanillaFactory.createItem("nozzle_t2");
nozzle_t2.register();

var t2_rocket_engine = VanillaFactory.createBlock("t2_rocket_engine", <blockmaterial:rock>);
t2_rocket_engine.setBlockHardness(12.0);
t2_rocket_engine.setBlockResistance(10.0);
t2_rocket_engine.setToolClass("pickaxe");
t2_rocket_engine.setToolLevel(1);
t2_rocket_engine.setBlockSoundType(<soundtype:metal>);
t2_rocket_engine.register();

var intermediate_protective_outer_wall = VanillaFactory.createBlock("intermediate_protective_outer_wall", <blockmaterial:rock>);
intermediate_protective_outer_wall.setBlockHardness(12.0);
intermediate_protective_outer_wall.setBlockResistance(10.0);
intermediate_protective_outer_wall.setToolClass("pickaxe");
intermediate_protective_outer_wall.setToolLevel(1);
intermediate_protective_outer_wall.setBlockSoundType(<soundtype:metal>);
intermediate_protective_outer_wall.register();

var twilight_forest = VanillaFactory.createItem("twilight_forest");
twilight_forest.register();

var aether = VanillaFactory.createItem("aether");
aether.register();

var beneath = VanillaFactory.createItem("beneath");
beneath.register();

var end = VanillaFactory.createItem("end");
end.register();

var nether = VanillaFactory.createItem("nether");
nether.register();

var pancreas = VanillaFactory.createItem("pancreas");
pancreas.register();

var biologically_approved_lense = VanillaFactory.createItem("biologically_approved_lense");
biologically_approved_lense.register();