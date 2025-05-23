#loader gregtech


import mods.gtadditions.recipe.Utils as util;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.Material;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.SolidMaterial;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.GemMaterial;
import mods.gregtech.material.RoughSolidMaterial;
import mods.gregtech.material.MaterialIconSet;



val energeticalloy = MaterialRegistry.createIngotMaterial(515, "energeticalloy", 0xDB9D0D, "SHINY",  10, null, 30.0f, 2, 1280, 3000);
energeticalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_ROTOR"]);

val draconium = MaterialRegistry.createIngotMaterial(517, "draconium", 0x8F07AD, "SHINY",  10, null, 30.0f, 2, 1280,8000);
draconium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val ardite = MaterialRegistry.createIngotMaterial(518, "ardite", 0xab661b, "SHINY",  10, null, 30.0f, 2, 1280,2700);
ardite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val nobelium = MaterialRegistry.createIngotMaterial(519, "nobelium", 0x7022BA, "SHINY",  10, null, 30.0f, 2, 1280,4300);
nobelium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val lawrencium = MaterialRegistry.createIngotMaterial(520, "lawrencium", 0x78516C, "SHINY",  10, null, 30.0f, 2, 1280,1200);
lawrencium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val einsteinium2 = MaterialRegistry.createIngotMaterial(512, "einsteinium2", 0xC2B71D, "SHINY",  10, null, 30.0f, 2, 1280,800);
einsteinium2.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);
einsteinium2.setCableProperties(8192, 4, 0);

val titaniumplatinum = MaterialRegistry.createIngotMaterial(521, "titaniumplatinum", 0xBC5EF2, "SHINY",  10, null, 30.0f, 2, 1280,3400);
titaniumplatinum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);
titaniumplatinum.setCableProperties(32768, 4, 1);

val soularium = MaterialRegistry.createIngotMaterial(522, "soularium", 0x302003, "SHINY",  10, null, 30.0f, 2, 1280,1965);
soularium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val ultimate = MaterialRegistry.createIngotMaterial(523, "ultimate", 0xE01040, "SHINY",  10, null, 30.0f, 2, 1280,9999);
ultimate.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK","GENERATE_FRAME"]);

val alumina = MaterialRegistry.createIngotMaterial(524, "alumina", 0xB3B3B3, "DULL",  2, null, 30.0f, 2, 1280, 120);
alumina.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val aluminiumsalt = MaterialRegistry.createDustMaterial(525, "aluminiumsalt", 0xB3B3C7, "DULL", 2);
aluminiumsalt.addFlags(["GENERATE_ORE"]);

val manyullyn = MaterialRegistry.createIngotMaterial(527, "manyullyn", 0x590580, "SHINY",  10, null, 30.0f, 2, 1280, 1900);
manyullyn.addFlags(["GENERATE_PLATE","GENERATE_ROD","SMELT_INTO_FLUID","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE"]);

val atomicseperationcatalyst = MaterialRegistry.createIngotMaterial(528, "atomicseperationcatalyst", 0xD4720B, "SHINY",  10, null, 30.0f, 2, 1280, 4560);
atomicseperationcatalyst.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val adamantiumalloy = MaterialRegistry.createIngotMaterial(529, "adamantiumalloy", 0x595959, "SHINY",  10, null, 30.0f, 2, 1280, 5400);
adamantiumalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val marcem200steel = MaterialRegistry.createIngotMaterial(530, "marcem200steel", 0x292929, "DULL",  2, null, 30.0f, 2, 1280, 2400);
marcem200steel.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_LONG_ROD"]);

val hikarium = MaterialRegistry.createIngotMaterial(531, "hikarium", 0xFA8EEC, "SHINY",  10, null, 30.0f, 2, 1280,1900);
hikarium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val lumium = MaterialRegistry.createIngotMaterial(532, "lumium", 0xD3F20A, "SHINY",  10, null, 30.0f, 2, 1280,1220);
lumium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_BOLT_SCREW"]);
lumium.setCableProperties(32768, 4, 1);

val fluxedelectrum = MaterialRegistry.createIngotMaterial(533, "fluxedelectrum", 0xE8D635, "SHINY",  10, null, 30.0f, 2, 1280,7000);
fluxedelectrum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val naquadriatictritanium = MaterialRegistry.createIngotMaterial(534, "naquadriatictritanium", 0x666662, "SHINY",  10, null, 30.0f, 2, 1280,6000);
naquadriatictritanium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val sunnarium = MaterialRegistry.createIngotMaterial(535, "sunnarium", 0xFFEA00, "SHINY",  10, null, 30.0f, 2, 1280,3700);
sunnarium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val diamandine = MaterialRegistry.createIngotMaterial(566, "diamandine", 0xBAD453, "SHINY",  10, null, 30.0f, 2, 1280,3300);
diamandine.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val platinumsalt = MaterialRegistry.createIngotMaterial(537, "platinumsalt", 0xBFBE91, "SHINY",  10, null, 30.0f, 2, 1280,1200);
platinumsalt.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val tellurite = MaterialRegistry.createIngotMaterial(538, "tellurite", 0x919FBF, "DULL",  2, null, 30.0f, 2, 1280,2000);
tellurite.addFlags(["GENERATE_PLATE","GENERATE_ORE","GENERATE_FLUID_BLOCK"]);

var signalum = MaterialRegistry.createIngotMaterial(539, "signalum", 0xb86a0b, "DULL",  2, null, 30.0f, 2, 1280,3900);
signalum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var artheriumsn = MaterialRegistry.createIngotMaterial(540, "artheriumsn", 0x153094, "SHINY",  10, null, 30.0f, 2, 1280,3100);
artheriumsn.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var dalisenite = MaterialRegistry.createIngotMaterial(541, "dalisenite", 0x8f8d17, "SHINY",  10, null, 30.0f, 2, 1280,4200);
dalisenite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var tanmolyiumbetac = MaterialRegistry.createIngotMaterial(542, "tanmolyiumbetac", 0xa10bb8, "SHINY",  10, null, 30.0f, 2, 4180,3200);
tanmolyiumbetac.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var quantium = MaterialRegistry.createIngotMaterial(543, "quantium", 0x2FAB1F, "SHINY",  10, null, 30.0f, 2, 1280,2200);
quantium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var blackplutonium = MaterialRegistry.createIngotMaterial(544, "blackplutonium", 0x242424, "SHINY",  10, null, 30.0f, 2, 1280,7200);
blackplutonium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_FOIL"]);

var astralsilver = MaterialRegistry.createIngotMaterial(545, "astralsilver", 0x959695, "SHINY",  10, null, 30.0f, 2, 1280,1200);
astralsilver.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var infusedgold = MaterialRegistry.createIngotMaterial(578, "infusedgold", 0x9C9227, "SHINY",  10, null, 30.0f, 2, 1280,2200);
infusedgold.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var indalloy140 = MaterialRegistry.createIngotMaterial(547, "indalloy140", 0x5A405E, "SHINY",  10, null, 30.0f, 2, 1280,1900);
indalloy140.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var mythril = MaterialRegistry.createIngotMaterial(548, "mythril", 0x2E87C7, "SHINY",  10, null, 30.0f, 2, 1280,3400);
mythril.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var orundum = MaterialRegistry.createIngotMaterial(549, "orundum", 0xF600FA, "SHINY",  10, null, 30.0f, 2, 1280,3600);
orundum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var vibrantalloy = MaterialRegistry.createIngotMaterial(550, "vibrantalloy", 0x10C232, "SHINY",  10, null, 30.0f, 2, 1280,1800);
vibrantalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var extrmelyunstablenaquadah = MaterialRegistry.createIngotMaterial(551, "extrmelyunstablenaquadah", 0x4C594D, "SHINY",  10, null, 30.0f, 2, 1280, 5200);
extrmelyunstablenaquadah.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var tiberium = MaterialRegistry.createIngotMaterial(552, "tiberium", 0x16B522, "SHINY",  10, null, 30.0f, 2, 1280,1200);
tiberium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var rutheniumtritaniumcarbite = MaterialRegistry.createIngotMaterial(554, "rutheniumtritaniumcarbite", 0x5E5E5E, "SHINY",  10, null, 30.0f, 2, 1280,2200);
rutheniumtritaniumcarbite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FRAME"]);

var runtherfordium = MaterialRegistry.createIngotMaterial(555, "runtherfordium", 0x827d39, "SHINY",  10, null, 30.0f, 2, 1280,1200);
runtherfordium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE"]);

var yellorium = MaterialRegistry.createIngotMaterial(556, "yellorium", 0xfff200, "SHINY",  10, null, 30.0f, 2, 1280,6190);
yellorium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FRAME"]);

var energeticsilver = MaterialRegistry.createIngotMaterial(557, "energeticsilver", 0x51B2DB, "SHINY",  10, null, 30.0f, 2, 1280,2800);
energeticsilver.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE"]);
energeticsilver.setCableProperties(10240, 4, 1);

var infinitycatalyst = MaterialRegistry.createIngotMaterial(558, "infinitycatalyst", 0xB5B5B5, "SHINY",  10, null, 30.0f, 2, 1280,7000);
infinitycatalyst.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_FRAME","GENERATE_DENSE","GENERATE_ROUND","GENERATE_GEAR","GENERATE_FOIL","GENERATE_BOLT_SCREW","GENERATE_ROTOR"]);
infinitycatalyst.setCableProperties(2147483647, 4, 4);

var maxsuperconductor = MaterialRegistry.createIngotMaterial(559, "maxsuperconductor", 0xB5B5B5, "SHINY",  10, null, 30.0f, 2, 1280,5200);
maxsuperconductor.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);
maxsuperconductor.setCableProperties(2147483647, 4, 0);

var maxsuperconductorbase = MaterialRegistry.createIngotMaterial(560, "maxsuperconductorbase", 0xB5B5B5, "SHINY",  10, null, 30.0f, 2, 1280,5200);
maxsuperconductorbase.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);
maxsuperconductorbase.setCableProperties(2147483647, 4, 4);

var infinity = MaterialRegistry.createIngotMaterial(561, "infinity", 0xC47DDB, "SHINY",  10, null, 30.0f, 2, 1280,9900);
infinity.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_DENSE"]);
infinity.setCableProperties(2147483647, 4, 0);

var blackopal = MaterialRegistry.createGemMaterial(562, "blackopal", 0x141212, "OPAL", 2, [<material:opal>*1]);
blackopal.addFlags(["GENERATE_LENSE","GENERATE_PLATE","GENERATE_ORE"]);

var activatednaquadah = MaterialRegistry.createIngotMaterial(563, "activatednaquadah", 0x141212, "SHINY",  10, null, 30.0f, 2, 1280,1900);
activatednaquadah.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var unknowncrystal = MaterialRegistry.createIngotMaterial(564, "unknowncrystal", 0x0F754B, "SHINY",  10, null, 30.0f, 2, 1280,3600);
unknowncrystal.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var anto = MaterialRegistry.createIngotMaterial(565, "anto", 0x1e2e2c, "SHINY", 2, [<material:osmiridium>*3,<material:americium>*2,<material:tungsten>*2,<material:naquadah>*1]);
anto.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var incoloy945x = MaterialRegistry.createIngotMaterial(567, "incoloy945x", 0x7CABAD, "SHINY",  10, null, 30.0f, 2, 1280,2690);
incoloy945x.addFlags(["GENERATE_PLATE","GENERATE_GEAR","GENERATE_DENSE"]);

val magneticsamarium = MaterialRegistry.createIngotMaterial(568,"magneticsamarium",0xFDD835,"MAGNETIC",0, [<material:samarium>*1]);
magneticsamarium.addFlags(["GENERATE_ROD"]);

val stellaralloy = MaterialRegistry.createIngotMaterial(569,"stellaralloy",0xFDFBE9,"SHINY",2, [<material:stellite>*3,<material:nether_star>*2]);
stellaralloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val hikarium78 = MaterialRegistry.createIngotMaterial(570,"hikarium78",0xC48ECE,"SHINY",2);
hikarium78.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val thorium234 = MaterialRegistry.createIngotMaterial(571,"thorium234",0x0f2404,"SHINY",2, [<material:thorium>*1]);
thorium234.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val pikyonium99ab = MaterialRegistry.createIngotMaterial(572,"pikyonium99ab",0x064569,"SHINY",2);
pikyonium99ab.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FRAME"]);

val tgtalloy = MaterialRegistry.createIngotMaterial(573,"tgtalloy",0x171f59,"SHINY",2,[<material:tungsten>*3,<material:titanium>*2,<material:carbon>*2]);
tgtalloy.setCableProperties(8192, 4, 0);
tgtalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val plutonium247 = MaterialRegistry.createIngotMaterial(574,"plutonium247",0xC62828,"SHINY",2,[<material:plutonium>*1]);
plutonium247.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val fullerenepolymertetrix = MaterialRegistry.createIngotMaterial(575,"fullerenepolymertetrix",0x171612,"DULL",2,[<material:carbon>*60,<material:rhodium>*2,<material:hydrogen>*33,<material:sulfur>*12,<material:oxygen>*40]);
fullerenepolymertetrix.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FRAME"]);

val endiron = MaterialRegistry.createIngotMaterial(576,"endiron",0x1a4d2c,"SHINY",2);
endiron.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val copperalloy = MaterialRegistry.createIngotMaterial(577,"copperalloy",0xcf7947,"SHINY",2);
copperalloy.setCableProperties(512, 4, 4);
copperalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE"]);

val fontium = MaterialRegistry.createIngotMaterial(579,"fontium",0x0a802b,"SHINY",2);
fontium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FRAME","GENERATE_FINE_WIRE"]);
fontium.setCableProperties(524288, 4, 2);

val kevlar = MaterialRegistry.createIngotMaterial(580,"kevlar",0xFFEE58,"DULL",2);
kevlar.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE","GENERATE_FOIL"]);

val reinforcedkevlar = MaterialRegistry.createIngotMaterial(581,"reinforcedkevlar",0x948c23,"DULL",2);
reinforcedkevlar.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE","GENERATE_FOIL"]);

val polypropelene = MaterialRegistry.createIngotMaterial(582,"polypropelene",0xa1a1a1,"DULL",2);
polypropelene.addFlags(["GENERATE_PLATE"]);

val radoxpolymer = MaterialRegistry.createIngotMaterial(583,"radoxpolymer",0x6A1B9A,"DULL",2);
radoxpolymer.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE","GENERATE_FOIL"]);

val chromaticglass = MaterialRegistry.createGemMaterial(584,"chromaticglass",0xBEA0D0,"RUBY",2);
chromaticglass.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_LENSE"]);

val enrichedholmium = MaterialRegistry.createIngotMaterial(585,"enrichedholmium",0x330D4A,"SHINY",2);
enrichedholmium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val exoticmatter = MaterialRegistry.createIngotMaterial(588,"exoticmatter",0xB71C1C,"SHINY",2);
exoticmatter.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val darkmatter = MaterialRegistry.createIngotMaterial(589,"darkmatter",0x000001,"SHINY",2);
darkmatter.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val redmatter = MaterialRegistry.createIngotMaterial(590,"redmatter",0xB41C1C,"SHINY",2);
redmatter.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val whitematter = MaterialRegistry.createIngotMaterial(591,"whitematter",0xFEFDFD,"SHINY",2);
whitematter.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val transcendantmatter = MaterialRegistry.createIngotMaterial(592,"transcendantmatter",0x757575,"SHINY",2);
transcendantmatter.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val titaniumiridium = MaterialRegistry.createIngotMaterial(593,"titaniumiridium",0xD4DBE0,"DULL",2);
titaniumiridium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val titaniumaluminide = MaterialRegistry.createIngotMaterial(594,"titaniumaluminide",0xABBFDA,"DULL",2);
titaniumaluminide.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val sodiumethylxantate = MaterialRegistry.createDustMaterial(595,"sodiumethylxantate",0xB7AA33,"DULL",2);
sodiumethylxantate.addFlags(["GENERATE_PLATE"]);

val potassiumethylxantate = MaterialRegistry.createDustMaterial(624,"potassiumethylxantate",0xB7AA33,"DULL",2);
potassiumethylxantate.addFlags(["GENERATE_PLATE"]);

val kaptonk = MaterialRegistry.createIngotMaterial(625,"kaptonk",0x372927, "SHINY", 3, null, 30.0f, 2, 1280,1200);
kaptonk.addFlags(["GENERATE_PLATE","GENERATE_FLUID_BLOCK"]);

val modularium = MaterialRegistry.createIngotMaterial(626,"modularium",0xFFFFFF, "SHINY", 3, null, 30.0f, 2, 1280,5200);
modularium.addFlags(["GENERATE_PLATE"]);

val awakened_draconium = MaterialRegistry.createIngotMaterial(598,"awakened_draconium",0xFF6F00, "SHINY", 3, null, 30.0f, 2, 1280,7200);
awakened_draconium.addFlags(["GENERATE_PLATE"]);

val chaos = MaterialRegistry.createIngotMaterial(599,"chaos",0x000000, "SHINY", 3, null, 30.0f, 2, 1280,3200);
chaos.addFlags(["GENERATE_PLATE"]);

val highly_strained_polyethylene = MaterialRegistry.createIngotMaterial(627,"highly_strained_polyethylene",0xC3C0C1, "SHINY", 3, null, 30.0f, 2, 1280 , 800);
highly_strained_polyethylene.addFlags(["GENERATE_PLATE"]);

val high_density_polyethylene = MaterialRegistry.createIngotMaterial(617,"high_density_polyethylene",0xe0e0e0, "SHINY", 3, null, 30.0f, 2, 1280,500);
high_density_polyethylene.addFlags(["GENERATE_PLATE"]);

val cross_linked_polyethylene = MaterialRegistry.createIngotMaterial(618,"cross_linked_polyethylene",0xf5dff5, "SHINY", 3, null, 30.0f, 2, 1280,600);
cross_linked_polyethylene.addFlags(["GENERATE_PLATE"]);

val low_quality_steel = MaterialRegistry.createIngotMaterial(619,"low_quality_steel",0x575757, "SHINY", 3, null, 30.0f, 2, 1280,200);
low_quality_steel.addFlags(["GENERATE_PLATE","GENERATE_FRAME"]);

val bscco = MaterialRegistry.createIngotMaterial(620,"bscco",0x575757, "SHINY", 3);
bscco.addFlags(["GENERATE_PLATE"]);

val gadolinite = MaterialRegistry.createDustMaterial(621,"gadolinite",0x4C4848, "SHINY", 3);
gadolinite.addFlags(["GENERATE_ORE"]);

val xenotime = MaterialRegistry.createDustMaterial(622,"xenotime",0xF9A825, "SHINY",  2);
xenotime.addFlags(["GENERATE_ORE"]);

val deshite = MaterialRegistry.createDustMaterial(788,"deshite", 0x333333, "SHINY",  1);
deshite.addFlags(["GENERATE_PLATE","GENERATE_ORE"]);

val desh = MaterialRegistry.createIngotMaterial(623,"desh",0x333333,"SHINY",3);
desh.addFlags(["GENERATE_PLATE"]);

val naquadah_dioxide = MaterialRegistry.createIngotMaterial(628,"naquadah_dioxide",0x7308a1,"SHINY",3);
naquadah_dioxide.addFlags(["GENERATE_PLATE"]);

val electron_degenerate_rhenium = MaterialRegistry.createIngotMaterial(629,"electron_degenerate_rhenium",0x3746A4,"SHINY",3);
electron_degenerate_rhenium.addFlags(["GENERATE_PLATE"]);

val nylon = MaterialRegistry.createIngotMaterial(630,"nylon",0xE5AF58,"DULL",3);
nylon.addFlags(["GENERATE_PLATE"]);

val dark_naquatic_abyssal_alloy = MaterialRegistry.createIngotMaterial(631,"dark_naquatic_abyssal_alloy",0x301b1b,"SHINY",3);
dark_naquatic_abyssal_alloy.addFlags(["GENERATE_PLATE", "GENERATE_FRAME", "GENERATE_ROD", "GENERATE_GEAR", "GENERATE_DENSE"]);

val polycyclopentene = MaterialRegistry.createIngotMaterial(632,"polycyclopentene",0x257F88,"SHINY",3);
polycyclopentene.addFlags(["GENERATE_PLATE"]);

val metallic_hydrogen = MaterialRegistry.createIngotMaterial(633,"metallic_hydrogen",0x325677,"SHINY",3);
metallic_hydrogen.addFlags(["GENERATE_PLATE","GENERATE_FRAME","GENERATE_ROD"]);

val tara_c_o_alloy = MaterialRegistry.createIngotMaterial(634,"tara_c_o_alloy",0x9F8FA3,"SHINY",3);
tara_c_o_alloy.addFlags(["GENERATE_PLATE","GENERATE_FRAME","GENERATE_ROD"]);

val trinaquadalloy = MaterialRegistry.createIngotMaterial(635,"trinaquadalloy",0x331757,"SHINY",3);
trinaquadalloy.addFlags(["GENERATE_PLATE","GENERATE_FRAME","GENERATE_ROD"]);

val nylon610 = MaterialRegistry.createIngotMaterial(636, "nylon610", 0xF3A33D, "DULL", 1);
nylon610.addFlags(["GENERATE_PLATE","GENERATE_FRAME","GENERATE_ROD","GENERATE_FOIL"]);

val di_n_propyl_ether  = MaterialRegistry.createIngotMaterial(637, "di_n_propyl_ether", 0xBDA873, "DULL", 1);
di_n_propyl_ether.addFlags(["GENERATE_PLATE","GENERATE_FLUID_BLOCK","GENERATE_FRAME","GENERATE_ROTOR","GENERATE_FOIL","GENERATE_ROD"]);

val skutterudite = MaterialRegistry.createDustMaterial(638,"skutterudite",0xD0D0D0, "DULL",  2);
skutterudite.addFlags(["GENERATE_ORE"]);

val serpentine = MaterialRegistry.createDustMaterial(639,"serpentine",0xBBD3BD, "DULL",  2);
serpentine.addFlags(["GENERATE_ORE"]);

val nickeliferous_limonite = MaterialRegistry.createDustMaterial(640,"nickeliferous_limonite",0xA29880, "DULL",  2);
nickeliferous_limonite.addFlags(["GENERATE_ORE"]);

val hematite = MaterialRegistry.createDustMaterial(641,"hematite",0xACB2A4, "DULL",  2);
hematite.addFlags(["GENERATE_ORE"]);


util.registerDust("kaminskycatalyst", 32000, 0x372927, "DULL");
util.registerDust("philipscatalyst", 32001, 0xB45D83, "DULL");
util.registerDust("zieglernattacatalyst", 32002, 0x8BC34A, "DULL");
util.registerDust("blackirondust", 32003, 0x1c1b1c, "DULL");
util.registerDust("darksteeldust", 32004, 0x2b2b2b, "DULL");
util.registerDust("nichromerichblend", 32005, 0xb7b0d1, "DULL");
util.registerDust("greensteeldust", 32006, 0x379953, "SHINY");
util.registerDust("cryolitedust", 32007, 0x658af0, "DULL");
util.registerDust("energeticblend", 32008, 0xbd642a, "DULL");
util.registerDust("resonantseaborgiumdust", 32009, 0x1f6612, "DULL");
util.registerDust("uraniumconcentrate", 32010, 0x299912, "DULL");
util.registerDust("uraniumfiltrate", 32011, 0x3d9e29, "DULL");
util.registerDust("bulatsteeldust", 32013, 0x736D62, "SHINY");
util.registerDust("silversteeldust", 32014, 0x828180, "SHINY");
util.registerDust("silveralloydust", 32015, 0xD6D3D2, "SHINY");
util.registerDust("electricalsteeldust", 32012, 0x757473, "DULL");
util.registerDust("supercooleddust", 32017, 0x0F5C6E, "DULL");
util.registerDust("bisphenolbdust", 32018, 0x59330D, "DULL");
util.registerDust("titaniumtetrachloridedust", 32019, 0x701a31, "SHINY");
util.registerDust("graphiteuraniummixturedust", 32020, 0x2F5407, "DULL");
util.registerDust("unprocessedborondust", 32021, 0x5487FF, "DULL");
util.registerDust("radioactivesludge", 32023, 0x704c0a, "SHINY");
util.registerDust("thoriadust", 32030, 0x004B1A, "DULL");
util.registerDust("sunnariumoxide", 32035, 0xB4AD6A, "DULL");
util.registerDust("sunnariumdioxide", 32034, 0xB4AD6A, "DULL");
util.registerDust("vanadiumtitaniumconentratedust", 32037, 0x3C3C3C, "DULL");
util.registerDust("sunaricoreresiduedust", 32038, 0xB9B272, "DULL");
util.registerDust("samaricinfusedresiduedust", 32039, 0xE5E5E4, "DULL");
util.registerDust("infusedgoldtrioxide", 32040, 0xA8801B, "SHINY");
util.registerDust("plutoniumoxideuraniummixturedust", 32041, 0xC40424, "SHINY");
util.registerDust("boronnanoparticles", 32042, 0x6593FF, "SHINY");
util.registerDust("tungsticnaquadah", 32043, 0x1F1F1F, "DULL");
util.registerDust("endsteelconcentrate", 32044, 0xC9C172, "DULL");
util.registerDust("protoadamantiumalloycatalystdust", 32045, 0x333AA4, "DULL");
util.registerDust("circuitcompundmk1", 32046, 0x0E000B, "DULL");
util.registerDust("circuitcompundmk2", 32047, 0x0E000B, "DULL");
util.registerDust("circuitcompundmk3", 32048, 0x0E000B, "DULL");
util.registerDust("silicongradedust", 32049, 0x585858, "SHINY");
util.registerDust("rawneutroniumdust", 32050, 0xE9F5F5, "SHINY");
util.registerDust("plutoniumuraniumferitemixturedust", 32051, 0x8F041C, "SHINY");
util.registerDust("dehydratedaluminiumcatalyst", 32052, 0x5D87E8, "DULL");
util.registerDust("aluminiumcatalyst", 32053, 0x5487FF, "DULL");
util.registerDust("rdxdust", 32054, 0xEEE559, "SHINY");
util.registerDust("hdxdust", 32055, 0xE0D9B8, "SHINY");
util.registerDust("formaldehydedust", 32056, 0x88BD3D, "SHINY");
util.registerDust("hexaminedust", 32057, 0xA1A1A1, "SHINY");
util.registerDust("dialuminiumtrioxide", 32058, 0x0a7080, "SHINY");
util.registerDust("dialuminiumcobalttetroxidedust", 32059, 0x0c616e, "SHINY");
util.registerDust("thoriumleachdust", 32060, 0x374a27, "SHINY");
util.registerDust("enhancedenderiumdust", 32063, 0x184229, "DULL");
util.registerDust("compressedmetaldust", 32064, 0x1A1A1A, "DULL");
util.registerDust("bastnasiterarerearthoxidemixturedust", 32061, 0xB97A57, "DULL");
util.registerDust("fourdiphenylmethanediiscocyanatedust", 32062, 0xB576B8, "DULL");
util.registerDust("monazite_sulfate", 32065, 0x145922, "DULL");
util.registerDust("thorium_phosphate_cake", 32066, 0x20452a, "DULL");
util.registerDust("thorium_phosphate_concentrate", 32067, 0x223b29, "DULL");
util.registerDust("rare_earth_filtrate", 32068, 0x3b2d22, "DULL");
util.registerDust("neutralized_rare_earth_filtrate", 32069, 0x3b2d22, "DULL");
util.registerDust("uranium_filtrate_dust", 32070, 0x274d0a, "DULL");
util.registerDust("uranium_concentrate_dust", 32071, 0x214703, "DULL");
util.registerDust("zircalloydust", 32072, 0xB5B5B5, "SHINY");
util.registerDust("neodymiumrareearthconcentrate", 32073, 0x3C3C3C, "DULL");
util.registerDust("samaricrareearthconcentrate", 32074, 0xB9B272, "DULL");
util.registerDust("fluorinatedsamariccompound", 32075, 0xB5B5B5, "SHINY");
util.registerDust("calciumfluoride", 32076, 0x5f7f87, "DULL");
util.registerDust("samariumterbiumconcentrate", 32077, 0x82875f, "DULL");
util.registerDust("samaricresidues", 32078, 0x82875f, "SHINY");
util.registerDust("bastnasiteoxidecomposite", 32079, 0x8a643a, "SHINY");
util.registerDust("ferrocene", 32080, 0xa6a39f, "SHINY");
util.registerDust("dirtdust", 32081, 0x79553A, "DULL");
util.registerDust("hydrogeniodide", 32086, 0x3e2f47, "DULL");
util.registerDust("calcinatedbastnasite", 32083, 0x473c2f, "DULL");
util.registerDust("roastedbastnasite", 32084, 0x3d2a14, "SHINY");
util.registerDust("crackingcatalystpreparation", 32085, 0x7d7d3c, "DULL");
util.registerDust("pentaerythritoldust", 32082, 0xd61542, "DULL");
util.registerDust("oranorhodiumcatalystdust", 32087, 0x942942, "SHINY");
util.registerDust("polyurethanecatalystbdust", 32088, 0x946f29, "DULL");
util.registerDust("polyurethanecatalystadust", 32089, 0x946f29, "SHINY");
util.registerDust("leadmetallicpowder", 32090, 0x75516e, "DULL");
util.registerDust("binap", 32096, 0x8b8c87, "DULL");
util.registerDust("paraphenylenediamine", 32093, 0x317c87, "SHINY");
util.registerDust("muddustresidues", 32095, 0x8c878b, "DULL");
util.registerDust("terephthaloylchloride", 32094, 0x5e240c, "DULL");
util.registerDust("lapotrondust", 32126, 0x392d75, "DULL");
util.registerDust("radium_202_dust", 32092, 0x75412d, "DULL");
util.registerDust("radium_cake_dust", 32097, 0x94914a, "SHINY");
util.registerDust("radium_metallic_powder", 32127, 0xab7141, "DULL");
util.registerDust("thorium_233_dust", 32098, 0x7a4920, "SHINY");
util.registerDust("thorium_radioactive_dust", 32099, 0x6e3d15, "DULL");
util.registerDust("thorium_radioactive_powder", 32100, 0x436e15, "DULL");
util.registerDust("thorium_salt", 32101, 0x756e09, "SHINY");
util.registerDust("thorium_metallic_powder", 32102, 0x3e7009, "DULL");
util.registerDust("refined_thorium_salts", 32103, 0x385717, "SHINY");
util.registerDust("thorium_residues", 32105, 0x425e23, "DULL");
util.registerDust("thorium_crude_metal", 32104, 0x3e4d2f, "DULL");
util.registerDust("lanthanumyttriumdust", 32106, 0x2D2D2D, "DULL");
util.registerDust("lanthanumyttriumcuprite", 32107, 0x74744A, "DULL");
util.registerDust("lanthanumdopedyttrium", 32108, 0x9E9D24, "DULL");
util.registerDust("lanthanum2dopedyttriumbarium", 32109, 0x092A21, "DULL");
util.registerDust("enrichedgraphitedust", 32110, 0xB3B385, "SHINY");
util.registerDust("irradiated_borax", 32111, 0xCCCCCC, "SHINY");
util.registerDust("rhodium3", 32113, 0x6E2A2B, "DULL");
util.registerDust("rhodium2a", 32112, 0x949335, "DULL");
util.registerDust("bariumsludgedustresidue", 32114, 0x7E5D4B, "SHINY");
util.registerDust("yttriumlanthanumceriummixturedust", 32115, 0x888675, "SHINY");
util.registerDust("ceriumlanthanumcompound", 32116, 0x514F3F, "DULL");
util.registerDust("ceriumlanthanumsaturatedcompound", 32117, 0xD81B60, "DULL");
util.registerDust("ceriumlanthanumsaturatedsamaritecompound", 32118, 0x7B1FA2, "SHINY");
util.registerDust("ceriumlanthanumsaturatedcompounddust", 32119, 0x7F5D8D, "SHINY");
util.registerDust("ceriumdopedlanthanumdust", 32120, 0x6A1B9A, "DULL");
util.registerDust("celananoparticle", 32121, 0x290E3A, "DULL");
util.registerDust("celananocarbides", 32122, 0x261133, "SHINY");
util.registerDust("yttriumsludgedustresidue", 32123, 0x905529, "SHINY");
util.registerDust("unprocessedceladust", 32124, 0x4A148C, "DULL");
util.registerDust("ceriumlanthanumdust", 32125, 0xFDD835, "DULL");
util.registerDust("radium202", 32128, 0xFFCA28, "SHINY");
util.registerDust("titaniumiodine", 32129, 0xC4A5D1, "SHINY");
util.registerDust("reprep_radium_202", 32130, 0xD4AF7F, "SHINY");
util.registerDust("terephtaladehyde", 32131, 0xFBC02D, "DULL");
util.registerDust("sunnariumxenontrioxidedust", 32132, 0x977C39, "DULL");
util.registerDust("liquid_wet_tailing", 32133, 0x5D5A5A, "DULL");
util.registerDust("solid_wet_tailing", 32134, 0x5D5A5A, "DULL");
util.registerDust("solid_dry_tailing", 32135, 0x5D5A5A, "DULL");
util.registerDust("limestone", 32136, 0xBBB79C, "DULL");
util.registerDust("sodiumsilicate", 32137, 0x8B8D8B, "SHINY");
util.registerDust("wet_bedrock", 32138, 0x121212, "SHINY");
util.registerDust("oily_bedrock", 32139, 0x1E1C1C, "SHINY");
util.registerDust("fine_bedrock_dust", 32140, 0x151515, "DULL");
util.registerDust("adamantite", 32141, 0x243D63, "DULL");
util.registerDust("darmstadtium_catalyst", 32142, 0x202122, "SHINY");
util.registerDust("adamantium_pentoxide", 32143, 0x323F52, "SHINY");
util.registerDust("enriched_naquadah_nitrate", 32144, 0x1F2021, "SHINY");
util.registerDust("naquadria_nitrate", 32145, 0x181818, "SHINY");
util.registerDust("trinium_sulfide", 32146, 0x7A807A, "SHINY");
util.registerDust("pxylene", 32147, 0x252525, "DULL");
util.registerDust("amococatalyst", 32148, 0xB0583E, "SHINY");
util.registerDust("isophthalic_acid", 32149, 0xB0583E, "DULL");
util.registerDust("terephthalic_acid", 32150, 0xB0583E, "DULL");
util.registerDust("raw_atomic_seperation_catalyst", 32151, 0xBF360C, "DULL");
util.registerDust("soularium_metallic_powder", 32152, 0x665653, "DULL");
util.registerDust("refined_soularium_powder", 32153, 0x665653, "SHINY");
util.registerDust("bronze_blend", 32154, 0xD56C12, "DULL");
util.registerDust("enhancedenderiumrefinedmetalresidues", 32155, 0x004D40, "SHINY");
util.registerDust("hmx", 32156, 0xB3B5B5, "SHINY");
util.registerDust("sodium_isobutyl_xanthate", 32157, 0x86987A, "DULL");
util.registerDust("zsmfive", 32158, 0x9EAE90, "DULL");
util.registerDust("cuproquin", 32159, 0x667267, "SHINY");
util.registerDust("quinoline", 32160, 0x986E4C, "SHINY");
util.registerDust("bc_ecoli", 32161, 0x153462, "SHINY");
util.registerDust("bc_rhizobium", 32162, 0x82CD47, "SHINY");
util.registerDust("bc_nitrosomanos", 32163, 0x4FA095, "SHINY");
util.registerDust("vr_retrovirus", 32164, 0x964B00, "SHINY");
util.registerDust("pr_diatom", 32165, 0x82CD47, "SHINY");
util.registerDust("pr_chlorophyte", 32166, 0x82CD47, "SHINY");
util.registerDust("pr_euglena", 32167, 0x82CD47, "SHINY");
util.registerDust("biphenyltetracarboxylicaciddianhydride", 32168, 0x1520b3, "SHINY");
util.registerDust("pyromelliticdianhydride", 32169, 0x4d6964, "DULL");
util.registerDust("cupriavidusnecator", 32170, 0xa69e30, "SHINY");
util.registerDust("cucrmgba_catalyst", 32171, 0x512DA8, "SHINY");
util.registerDust("defatted_soybean_flour", 32172, 0xB2B395, "DULL");
util.registerDust("crushed_soybean", 32173, 0xB2B395, "DULL");
util.registerDust("ceramics", 32174, 0x3E2D2A, "DULL");
util.registerDust("papic_digest_of_soybean_meal", 32175, 0xFDD835, "DULL");
util.registerDust("pancreatic_digest_of_casein", 32176, 0xBFBCAF, "DULL");
util.registerDust("caesin", 32177, 0xCDDC39, "DULL");
util.registerDust("solidified_sterile_defibrinated_sheep_blood", 32178, 0x572828, "DULL");
util.registerDust("phenylethyl_alcohol_agar", 32179, 0xA37672, "SHINY");
util.registerDust("neodymium_alloy", 32180, 0x605F5F, "SHINY");
util.registerDust("supra_fertilizer", 32181, 0xB3929E, "SHINY");
util.registerDust("grist_powder", 32182, 0x886054, "DULL");
util.registerDust("solid_grain", 32183, 0xE6D5AF, "DULL");
util.registerDust("activated_carbon", 32184, 0x272727, "SHINY");
util.registerDust("yeast_extract_mannitol_medium", 32185, 0x66468C, "SHINY");
util.registerDust("titanium_sludge", 32186, 0xC08C9D, "SHINY");
util.registerDust("refabricated_draconium_dust", 32187, 0x311B92, "SHINY");
util.registerDust("leached_refabricated_draconium_dust", 32188, 0x8E24AA, "DULL");
util.registerDust("mana_dust", 32189, 0x8C24A7, "SHINY");
util.registerDust("aerotheum_dust", 32190, 0xFFEB3B, "SHINY");
util.registerDust("petrotheum_dust", 32191, 0x383838, "SHINY");
util.registerDust("resonant_clathrate", 32192, 0x1B5E20, "SHINY");
util.registerDust("destabilized_clathrate", 32193, 0xB71C1C, "SHINY");
util.registerDust("energized_clathrate", 32194, 0xFFEB3B, "SHINY");
util.registerDust("solid_milk_residues", 32195, 0xFFEBEE, "SHINY");
util.registerDust("precipitate_mithril_dust", 32196, 0xAED2F2, "DULL");
util.registerDust("roughen_mithril_dust", 32197, 0xAED2F2, "DULL");
util.registerDust("excited_roughen_mithril_dust", 32199, 0xAED2F2, "SHINY");
util.registerDust("excited_mithril_dust", 32200, 0xAED2F2, "SHINY");
util.registerDust("cobalt_60_dust", 32201, 0x091175, "DULL");
util.registerDust("magnesiumtetrachloride", 32202, 0xBA68C8, "DULL");
util.registerDust("white_phosporus", 32203, 0xfffbc7, "SHINY");
util.registerDust("phosphorus_pentoxide", 32204, 0xBA68C8, "SHINY");
util.registerDust("floated_andesite", 32205, 0x787575, "SHINY");
util.registerDust("digested_andesite", 32206, 0x787575, "DULL");
util.registerDust("iriditus", 32207, 0x00BCD4, "SHINY");
util.registerDust("roasted_deshite", 32208, 0x6D6662, "SHINY");
util.registerDust("evaporated_deshite_compound", 32209, 0x4B4A4A, "DULL");
util.registerDust("silver_bromide", 32210, 0x4B4A4A, "DULL");
util.registerDust("hafnium_platinum_titanium_composite", 32211, 0x4B4A4A, "DULL");
util.registerDust("muddy_monazite_ore_byproducts", 32212, 0x514442, "SHINY");
util.registerDust("high_purity_arsenic", 32213, 0xB0B0B1, "SHINY");
util.registerDust("indium_chloride", 32214, 0x311B92, "SHINY");
util.registerDust("nickel_nitride", 32215, 0x2F4F4F, "DULL");
util.registerDust("ruby_leach", 32216, 0xF5C9C8, "SHINY");
util.registerDust("vanadium_trichloride", 32217, 0xFB8C00, "SHINY");
util.registerDust("nanotube_deposition_mix", 32218, 0x2F4F4F, "SHINY");
util.registerDust("doped_nanotube_deposition_mix", 32219, 0xF5C9C8, "SHINY");
util.registerDust("nanotube_insulation_deposition_mix", 32220, 0xFB8C00, "SHINY");
util.registerDust("dielectric_mirror_formation_mix", 32221, 0xFB8C00, "SHINY");
util.registerDust("doped_carbon_nanotubes", 32222, 0x2F4F4F, "SHINY");
util.registerDust("hsla_steel", 32223, 0xD5D8E8, "DULL");
util.registerDust("heated_hsla_steel", 32224, 0xECE7BF, "SHINY");
util.registerDust("quenched_hsla_steel", 32225, 0xE9E3B7, "SHINY");
util.registerDust("naquadah_waste", 32226, 0x301b1b, "DULL");
util.registerDust("concentrated_naquatitanium_hydroxide", 32227, 0x503a3a, "SHINY");
util.registerDust("impure_naquahamericium_hydroxide", 32228, 0x684b4b, "SHINY");
util.registerDust("naquahamericium_hydroxide", 32229, 0x8f6161, "SHINY");
util.registerDust("chromium_slag_mud", 32230, 0x874141, "DULL");
util.registerDust("impure_naquadah_waste", 32231, 0x281414, "DULL");
util.registerDust("platinum_nanopowder", 32232, 0xE0DAC0, "SHINY");
util.registerDust("ruthenium_chloride", 32233, 0x71736E, "SHINY");
util.registerDust("platinum_ruthenium_powder", 32234, 0x616CA5, "SHINY");
util.registerDust("dense_matter", 32235, 0xD9B4E0, "SHINY");
util.registerDust("pure_dense_matter", 32236, 0x9DC8E9, "SHINY");
util.registerDust("dense_carbon_oxygen_matter", 32237, 0x559ED8, "SHINY");
util.registerDust("dense_exotic_matter", 32238, 0x66BB6A, "SHINY");
util.registerDust("lafeaso1_catalyst_preparation", 32239, 0x987064, "SHINY");
util.registerDust("raney_nickel", 32240, 0xC7E4F0, "SHINY");
util.registerDust("carbon_disulfide", 32241, 0xC2BE9D, "DULL");
util.registerDust("enriched_naquadah_chloride", 32242, 0x4C5554, "DULL");
util.registerDust("enriched_naquadah_oxide", 32243, 0x434847, "DULL");
util.registerDust("manganese_diacetate", 32244, 0xF8CBDA, "SHINY");
util.registerDust("compressed_diamond_dust", 32246, 0x72A8D4, "DULL");
util.registerDust("cobalt_nitrate", 32253, 0x6d392e, "DULL");
util.registerDust("sodium_cyandiamide", 32254, 0xfffba6, "DULL");
util.registerDust("indium_gallium_arsenide", 32256, 0x928894, "DULL");
util.registerDust("silicon_nitride", 32257, 0xE7C8BE, "DULL");
util.registerDust("amberlyst_15", 32258, 0x744EA1 , "SHINY");
util.registerDust("trimethylammonium_salts", 32259, 0xE0A542, "SHINY");
util.registerDust("cadmium_oxide", 32260, 0xff6630, "DULL");
util.registerDust("borane", 32261, 0x78A9A5, "DULL");
util.registerDust("high_purity_aluminium", 32262, 0x7EBFDC, "SHINY");
util.registerDust("high_purity_gallium", 32263, 0x6B6B6B, "SHINY");
util.registerDust("high_purity_cadmium", 32264, 0x3D3D3D, "SHINY");
util.registerDust("potassium_persulfate", 32265, 0x3D3D39, "DULL");
util.registerDust("potassium_hydrofluoride", 32266, 0xcdcdcd, "DULL");
util.registerDust("manganese_nitride", 32267, 0xAAB7C4, "DULL");
util.registerDust("antimony_pentafluoride", 32268, 0xbfd1c6, "DULL");
util.registerDust("silver_fluoride", 32269, 0xfac8c8, "SHINY");
util.registerDust("nickel_boride", 32270, 0xff9b00, "DULL");
util.registerDust("magnesium_silicate", 32271, 0xa46681, "DULL");
util.registerDust("cobalt_manganese_oxide", 32272, 0x64a47a, "SHINY");
util.registerDust("niobium_oxide", 32273, 0xA483AA, "SHINY");
util.registerDust("cadmium_magnesium_tellurium", 32274, 0x529CC3, "SHINY");
util.registerDust("alkali_cellulose", 32275, 0x594846, "DULL");
util.registerDust("sodium_cellulose_xanthate", 32276, 0x6D4C41, "DULL");
util.registerDust("dense_perovskite_clusters", 32277, 0x5f6a6a, "SHINY");
util.registerDust("regolith_martian", 32278, 0x8b4513, "DULL");
util.registerDust("sulfuric_mineral", 32279, 0xa4a417, "DULL");
util.registerDust("catherdral_pyrite", 32280, 0xffd700, "SHINY");
util.registerDust("amorphous_ice_powder", 32281, 0xd3d3d3, "SHINY");
util.registerDust("saturn_ring_fragment", 32282, 0xd2b48c, "SHINY");
util.registerDust("carbon_rich_clay_powder", 32283, 0x333333, "DULL");
util.registerDust("raw_buckfullerene_dust", 32284, 0x000000, "SHINY");
util.registerDust("amorphous_graphite", 32285, 0x2f4f4f, "DULL");
util.registerDust("uranus_nitriles", 32286, 0x4682b4, "SHINY");
util.registerDust("uranus_hydrocarbon_dust", 32287, 0x5dadec, "DULL");
util.registerDust("superionic_ice_crystal", 32288, 0xaddbe6, "SHINY");
util.registerDust("sasteroid_enstatite_diamond_dust", 32289, 0x8a9a5b, "SHINY");
util.registerDust("pluto_tholin_dust", 32290, 0x804000, "DULL");
util.registerDust("cryotholin_crystal_dust_pluto", 32291, 0xffa500, "DULL");
util.registerDust("impure_subsurface_clathrate", 32292, 0xffd700, "DULL");
util.registerDust("tholin_ice_eris", 32293, 0xa0522d, "DULL");
util.registerDust("deep_carbon_silicate", 32294, 0x704214, "SHINY");
util.registerDust("haumean_quartz_ice", 32295, 0xf5f5f5, "SHINY");
util.registerDust("haumean_silicate_icecrystal_dust", 32296, 0xb0c4de, "SHINY");
util.registerDust("hydrocarbon_complex_mm", 32297, 0xe0ffff, "DULL");
util.registerDust("volatile_ice_crystal_dust", 32298, 0xb0e0e6, "SHINY");
util.registerDust("scattered_kbo_dust", 32299, 0x8a3324, "DULL");
util.registerDust("ptn_dust", 32300, 0x7b3f00, "DULL");
util.registerDust("ceresian_subsurface_ammonia_dust", 32301, 0xa1a8b6, "SHINY");
util.registerDust("ancient_interstellar_core_dust", 32302, 0x2f4f4f, "SHINY");
util.registerDust("sulfide_nodes_oc", 32303, 0x9c7c5d, "SHINY");
util.registerDust("regolith_lunar", 32304, 0xddd4af, "DULL");
util.registerDust("impure_he3", 32305, 0xa9a9a9, "SHINY");
util.registerDust("molecular_sieve", 32306, 0x666666, "SHINY");
util.registerDust("oleic_acid", 32307, 0x9fcc9d, "DULL");
util.registerDust("calcinated_zircon", 32308, 0xdb7332, "SHINY");
util.registerDust("zirconium_sulfate", 32309, 0xF9C085, "DULL");





util.registerFluid("tridecylphosphine_oxide", 0x4BA1E6);
util.registerFluid("tridecylphosphine_solution", 0x5A98CA);
util.registerFluid("tridecanoic_acid", 0x749FC1);
util.registerFluid("tridecylphosphine", 0x85A1B8);
util.registerFluid("tridecanol", 0x505DAB);
util.registerFluid("bromotridecane", 0x838BBE);
util.registerFluid("tridecane", 0x9FA5CA);
util.registerFluid("trioctylphosphine_oxide", 0xB0CBE3);
util.registerFluid("trioctylphosphine_solution", 0x60A0D3);
util.registerFluid("bromooctane", 0xD27979);
util.registerFluid("zirkelite_slurry", 0x918593);
util.registerFluid("zirconium_hafnium_fluoride_solution", 0xB8B8B8);
util.registerFluid("oleum", 0x7CB342);
util.registerFluid("dried_dowex_50_suspension", 0x8263A8);
util.registerFluid("zirconium_hafnium_fluoride_extract", 0x616C6A);
util.registerFluid("hafnium_fluoride_solution", 0x6F8C88);
util.registerFluid("zirconium_fluoride_solution", 0xA6C6C3);
util.registerFluid("zirconium_fluoride_extract", 0xA5B9B7);
util.registerFluid("hafnium_fluoride_extract", 0x546A68);
util.registerFluid("dowex_50_suspension", 0x9C88C4);
util.registerFluid("dowex_50_solution", 0x836CB2);
util.registerFluid("dowex_50", 0x5D4097);
util.registerFluid("hafnium_fluoride", 0x5D6F6D);
util.registerFluid("zirconium_fluoride", 0x829795);
util.registerFluid("zirconium_hafnium_extraction_mixture", 0xFCEA4E);
util.registerFluid("alamine_336", 0x907EB5);
util.registerFluid("cyanex_923", 0x90CBE8);
util.registerFluid("purified_zircon_slurry", 0xD66F1A);
util.registerFluid("purified_zr_chloride", 0xD98C4C);
util.registerFluid("zircon_slurry", 0xE99239);
util.registerFluid("soda_ash_solution", 0x7A8693);
util.registerFluid("aklaline_sodium_oleate_solution", 0x9DC370);
util.registerFluid("hafnium_sulfate_solution", 0x5e5e5e);
util.registerFluid("hafnium_extract", 0x292929);
util.registerFluid("light_water", 0x5084B8);
util.registerFluid("tritiated_water", 0xDE9897);
util.registerFluid("supercritical_ultrapure_water_grade_1", 0x98BDE4);
util.registerFluid("high_pressure_ultrapure_water_grade_1", 0x73A6D8);
util.registerFluid("ultrapure_water_grade_8", 0xE5EDF3);
util.registerFluid("ultrapure_water_grade_7", 0xD9E7F5);
util.registerFluid("ultrapure_water_grade_6", 0xD2E2F3);
util.registerFluid("ultrapure_water_grade_5", 0xCEE1F4);
util.registerFluid("ultrapure_water_grade_4", 0xC7DCF0);
util.registerFluid("ultrapure_water_grade_3", 0xC3DAF1);
util.registerFluid("ultrapure_water_grade_2", 0xBBD4EE);
util.registerFluid("ultrapure_water_grade_1", 0xB6D1ED);
util.registerFluid("demineralized_water", 0x7AA1C0);
util.registerFluid("deaerated_water", 0x7FABCE);
util.registerFluid("sterilized_water", 0x81B5DC);
util.registerFluid("ultrapure_water", 0xC3DFF5);
util.registerFluid("manganese_sulfate_solution", 0xF5CCDA);
util.registerFluid("sodium_cellulose_xanthate_solution", 0x79B27C);
util.registerFluid("carbon_disulfide_solution", 0xBBB692);
util.registerFluid("rayon", 0x9BBFBB);
util.registerFluid("pentene", 0xF1B29F);
util.registerFluid("wet_pmma_emulsion", 0x0ee3d5);
util.registerFluid("dried_pmma_emulsion", 0x86BFC7);
util.registerFluid("acetone_cyanohydrin", 0x73A5D6);
util.registerFluid("methacrylamide_sulfate", 0x374494);
util.registerFluid("methyl_methacrylate", 0x5AB1BB);
util.registerFluid("methyl_methacrylate_emulsion", 0x2496A5);
util.registerFluid("potassium_amyl_xanthate", 0xE8D743);
util.registerFluid("naquadah_concentrate_slurry", 0x454444);
util.registerFluid("naquadah_oxide_solution", 0x5A5B5B);
util.registerFluid("acidic_naquadah_concentrate", 0x474F4F);
util.registerFluid("naquadah_extraction_mixture", 0xAE6EBF);
util.registerFluid("naquadah_extract", 0x3F3E3E);
util.registerFluid("naquadah_mother_liqour", 0x504E4E);
util.registerFluid("arsenic_solution", 0xD5D0D0);
util.registerFluid("pmma", 0xA9C9E4);
util.registerFluid("diluted_hydrofluoric_acid", 0x638CAD);
util.registerFluid("deionized_water", 0x1C5480);
util.registerFluid("high_pressure_water", 0x5F87AE);
util.registerFluid("niobium_oxide_solution", 0x95729C);
util.registerFluid("tantalum_oxide_solution", 0x6C8AA7);
util.registerFluid("arsenic_vapor", 0xDDD9D9);
util.registerFluid("chromic_acid", 0xE7C8C8);
util.registerFluid("4-nitrophenol", 0xC69E9E);
util.registerFluid("pbi_preparation_mixture", 0x141515);
util.registerFluid("pbi_preparation_mixture_precurser", 0x242525);
util.registerFluid("n-methylpyrrolidone", 0x535242);
util.registerFluid("2-pyrrolidone", 0x509993);
util.registerFluid("benzimidazole", 0x2C2F30);
util.registerFluid("fluorinated_isophthalic_acid", 0x77A67A);
util.registerFluid("fluorinated_benzimidazole_mixture", 0x3E3F40);
util.registerFluid("trifluorotoluene", 0x56B05A);
util.registerFluid("fluorinated_diaminodiphenyl_ether", 0x9BBBCC);
util.registerFluid("4-4_dinitrofluorodiphenyl_ether", 0x80C3E4);
util.registerFluid("tetranitrofluorophenol", 0xAD5D1C);
util.registerFluid("trinitrofluorophenol", 0xDC8945);
util.registerFluid("4-nitrofluorophenol", 0xEFC098);
util.registerFluid("fluorinated_nitrophenol_residue", 0xB7B287);
util.registerFluid("dinitrofluorophenol", 0x92B094);
util.registerFluid("fluorinated_benzimidazole", 0xBB7292);
util.registerFluid("tantalite_slurry", 0x965E4D);
util.registerFluid("radon_rich_air", 0xB17BBA);
util.registerFluid("chilled_radon_rich_air", 0x9863A2);
util.registerFluid("radon_containing_noble_gasses", 0x86618C);
util.registerFluid("diluted_iron_concentrate", 0x5A5857);
util.registerFluid("diluted_leach_residue", 0x5B463F);
util.registerFluid("platinum_residue_solution", 0x706F61);
util.registerFluid("purified_olefin", 0xCCABD5);
util.registerFluid("1_hexene", 0xCCABD5);
util.registerFluid("tetradecanol", 0xCCABD5);
util.registerFluid("hydrogenated_olefin", 0xCCABD5);
util.registerFluid("succinimidyl_acetate_solution", 0xCCABD5);
util.registerFluid("olefin_drilling_mud", 0xAA4020);
util.registerFluid("used_olefin_drilling_mud", 0x8E361B);
util.registerFluid("purified_1_decene", 0x9D3331);
util.registerFluid("purified_1_dodecene", 0x832422);
util.registerFluid("1_decene", 0xAC2D2A);
util.registerFluid("1_dodecene", 0x962826);
util.registerFluid("olefin_mixture", 0xCE6867);
util.registerFluid("boron_trichloride", 0x88C7C1);
util.registerFluid("dichloroethane", 0xA9BBCA);
util.registerFluid("copper_leach", 0xDF7E34);
util.registerFluid("dissolved_chalcocite_solution", 0x171312);
util.registerFluid("n_propyl_chloride", 0xE7C87A);
util.registerFluid("propene_emulsion", 0x6D551A);
util.registerFluid("propyl_base_liqour", 0xE0C584);
util.registerFluid("npropanol_base", 0xFAC33C);
util.registerFluid("dimethylacetamide", 0x64AC68);
util.registerFluid("pbi_polymerization_mix", 0x588C35);
util.registerFluid("polycyclopentene_solution", 0x5B7C43);
util.registerFluid("polystyrene_suspension", 0x98978D);
util.registerFluid("polyethylene_naphthalate_solution", 0xE3DFBE);
util.registerFluid("chromium_trioxide_solution", 0xDBC6CD);
util.registerFluid("polypropelene_suspension", 0xCCA362);
util.registerFluid("potassium_persulfate_solution", 0x97BCCD);
util.registerFluid("rock_salt_solution", 0xDBC0C0);
util.registerFluid("styrene_suspension", 0x558DC0);
util.registerFluid("polyvinyl_chloride_solution", 0xCDDBE7);
util.registerFluid("high_purity_cadmium_solution", 0x505458);
util.registerFluid("cadmium_rich_solution", 0x323232);
util.registerFluid("polyvinyl_acetate_solution", 0xEB9D72);
util.registerFluid("trifluoroethylene_mixture", 0x979EA5);
util.registerFluid("graphitic_anode_mixture", 0x666565);
util.registerFluid("cryolite_solution", 0x6B91B8);
util.registerFluid("sublimed_gallium_vapour", 0xD9DADB);
util.registerFluid("aluminium_gallium_arsenide", 0x87A9B9);
util.registerFluid("bis_trimethylammonium_ethane", 0x687E8A);
util.registerFluid("chloromethyl_methyl_ether", 0xA2BBA3);
util.registerFluid("trimethylgallium_mixture", 0xCCC8C8);
util.registerFluid("triborane", 0x7BB2AD);
util.registerFluid("heptaborane", 0x6DA9A3);
util.registerFluid("borane_mixture", 0xC4E6E2);
util.registerFluid("hydrogen_fluoride", 0xABDAD6);
util.registerFluid("formyl_fluoride", 0xECB1B0);
util.registerFluid("aluminium_salt_solution", 0x9BB4D1);
util.registerFluid("vinyltoluene", 0xDFA5BA);
util.registerFluid("p_methylstyrene", 0xE1DBE3);
util.registerFluid("ammonia_solution", 0x6F879D);
util.registerFluid("chloromethylstyrene_mixture", 0x636E70);
util.registerFluid("isp_bromobenzylbromide", 0x95859C);
util.registerFluid("divinylbenzenemixture", 0x9FC0DD);
util.registerFluid("1_3_divinylbenzene", 0x9DB3C7);
util.registerFluid("n_butyl_bromide", 0xB05E5E);
util.registerFluid("potassium_hydrogen_carbonate", 0x7A868F);
util.registerFluid("dimethylamine_solution", 0xD78989);
util.registerFluid("chlorodifluoromethane", 0x74597b);
util.registerFluid("trifluoroethylene", 0xbac8c8);
util.registerFluid("tetrafluoroethylene_mixture", 0x8e9696);
util.registerFluid("nonanol", 0xdbc782);
util.registerFluid("peg_alkylphenol", 0xb6af94);
util.registerFluid("triton_x100", 0xe4dfcd);
util.registerFluid("ptfe_preparation_mixture", 0x88df97);
util.registerFluid("poly_styrene_co_chloromethylstyrene_copolymeris", 0x5AB0A8);
util.registerFluid("chloromethylstyrene", 0xC9A6D8);
util.registerFluid("divinylbenzene", 0x88A9BD);
util.registerFluid("pyromellitic_dianhydride_oxydianilin", 0x7E887F);
util.registerFluid("indium_gallium_arsenide_substrate", 0xAC96B1);
util.registerFluid("bcl3_cl2_ar_etchant", 0x464646);
util.registerFluid("trimethylgallium",0x464646);
util.registerFluid("diethylzinc",0xFF6600);
util.registerFluid("glycidol",0xfeffa8);
util.registerFluid("glycidol_ether", 0xd0d15b);
util.registerFluid("hexafluoroacetone",0xe8e8e8);
util.registerFluid("toluene", 0x9b9b9b);
util.registerFluid("glycidol_preparation_mixture", 0xb6b69c);
util.registerFluid("unrefined_epoxy_resin", 0xb47ac4);
util.registerFluid("resin_enhancer", 0x965959);
util.registerFluid("cyandiamide", 0xdbdbdb);
util.registerFluid("sulfur_hexafluoride", 0xc4b763);
util.registerFluid("dicyandiamide", 0xdbdbdb);
util.registerFluid("sulfur_dichloride", 0x813232);
util.registerFluid("gallium_vapor", 0xEFEBEB);
util.registerFluid("arsine_vapor", 0xB0B0B0);
util.registerFluid("arsine", 0xA3A2A2);
util.registerFluid("6040_tin_lead_solution", 0xAA9BAD);
util.registerFluid("copper_sulfate_solution", 0xE08E3C);
util.registerFluid("polyethylene_naphthalate", 0xFCF7E1);
util.registerFluid("naphthalene_dicarboxaldehyde", 0xF6E493);
util.registerFluid("dielectric_paste", 0xBAA650);
util.registerFluid("propanal", 0xDAC25C);
util.registerFluid("propanal_mixture", 0xF0DCA9);
util.registerFluid("carboxylic_acid_mixture", 0x71B1AA);
util.registerFluid("n_propyl_alcohol", 0xD7B258);
util.registerFluid("propylamine", 0xFAE7CF);
util.registerFluid("n-6-aminohexylsebacamide", 0xD2D2B2);
util.registerFluid("heated_decanedioic_acid", 0xD34E4E);
util.registerFluid("dihydroxystearic_acid", 0xD7EBFC);
util.registerFluid("decanedioic_acid", 0xC44E4E);
util.registerFluid("oleic_acid_mixture", 0xE8B846);
util.registerFluid("glacial_acetic_acid", 0xCECCBA);
util.registerFluid("purified_oleic_acid", 0xD0DFBF);
util.registerFluid("peracetic_acid_mixture", 0xBBA6C9);
util.registerFluid("diethylketone", 0x80BDDB);
util.registerFluid("2-hydroxypropionimidamide", 0x87ACA9);
util.registerFluid("oxygen_reduced_osmium_solution", 0x3948A6);
util.registerFluid("potassium_ethyl_xanthate_solution", 0xF5D750);
util.registerFluid("potassium_carbonate_mixture", 0xD3C867);
util.registerFluid("decene", 0x9B9983);
util.registerFluid("fuming_hydrogen", 0xC59773);
util.registerFluid("lafeaso1_mixture", 0x987064);
util.registerFluid("neodymium_solution", 0x454545);
util.registerFluid("cyclopentene", 0x38777D);
util.registerFluid("pmda_solution", 0x637867);
util.registerFluid("ruthenium_platinum_colloid", 0x616CA5);
util.registerFluid("decrepitated_neodymium", 0x767676);
util.registerFluid("hsla_steel",0xD5D8E8);
util.registerFluid("electron_degenerate_rhenium_plasma",0x4A148C);
util.registerFluid("naquadah_rich_sterile_growth_medium",0x7D7878);
util.registerFluid("liquid_helium_4",0xFBC02D);
util.registerFluid("hotic2coolant",0xF0CFCF);
util.registerFluid("ruby_solution",0xEF5350);
util.registerFluid("helium_4",0xEBB630);
util.registerFluid("superfluid_helium_4",0xFBC02D);
util.registerFluid("liquid_enriched_helium_4",0xADFF2F);
util.registerFluid("very_hot_xenon",0x00008B);
util.registerFluid("monazite_ore_byproduct_slurry", 0x67824C);
util.registerFluid("impure_monazite_ore_byproduct_slurry", 0x7F936B);
util.registerFluid("neodymium_pre_extract_emulsion", 0x474746);
util.registerFluid("palmatic_acid", 0xB6D2D5);
util.registerFluid("caprylic_acid", 0xFEF9CC);
util.registerFluid("ziegler_alfol_mixture", 0xC07259);
util.registerFluid("neodymium_rich_monazite_solution", 0x388E3C);
util.registerFluid("diluted_neodymium_rich_monazite_solution", 0x59605A);
util.registerFluid("n-decanol", 0x987F77);
util.registerFluid("n-tetradecanol", 0x866E66);
util.registerFluid("n-dodecanol", 0x7E6D68);
util.registerFluid("n-hexadecanol", 0x735E57);
util.registerFluid("methyl_isobutyl_carbonyl", 0x7C9AB2);
util.registerFluid("1_amidol_ethyl_2_alkyl_2_imidazoline", 0x705195);
util.registerFluid("arsenic_trichloride", 0x631531);
util.registerFluid("vanadium_tetrochloride", 0x6E5DA1);
util.registerFluid("trichloroflerane", 0x6E5DA1);
util.registerFluid("chloronaquadic_acid", 0x32302D);
util.registerFluid("very_hot_aqua_regia", 0xFFA000);
util.registerFluid("very_hot_krypton", 0x9FAD90);
util.registerFluid("platinum_solution", 0xC7C18E);
util.registerFluid("palladium_extract", 0x3A3B3B);
util.registerFluid("platinum_extraction_mixture", 0x009688);
util.registerFluid("platinum_extract", 0xDEC587);
util.registerFluid("palladium_mother_liqour", 0x6B7271);
util.registerFluid("draconium_mother_liqour", 0x6A1B9A);
util.registerFluid("draconium_extract", 0x6A1B9A);
util.registerFluid("draconium_extraction_mixture", 0x4527A0);
util.registerFluid("very_hot_argon", 0x746D4C);
util.registerFluid("desulfurized_deshite_compound", 0x746D4C);
util.registerFluid("ethoxylated_nonylphenol", 0x42322E);
util.registerFluid("nonoxynol-9_solution", 0x43A047);
util.registerFluid("nonoxynol-9", 0x43A047);
util.registerFluid("xerizin", 0x43A047);
util.registerFluid("fermented_superlubricenttincture_solution", 0xEF6C00);
util.registerFluid("fermented_superlubricenttincture", 0x864109);
util.registerFluid("steam_cracked_kerosene", 0xB89E61);
util.registerFluid("hydro_cracked_kerosene", 0xB89E61);
util.registerFluid("hexane", 0xEDE7F6);
util.registerFluid("pentane", 0xEDE7F6);
util.registerFluid("propylene", 0xC6B58E);
util.registerFluid("trypsin", 0xEDCC3C);
util.registerFluid("alkylated_nonylphenol_mixture", 0xA87C6E);
util.registerFluid("nonylphenol", 0x796E69);
util.registerFluid("nonene", 0x634F4B);
util.registerFluid("yeem_solution", 0x6A1B9A);
util.registerFluid("homogenized_pancreas_mixture", 0x004D40);
util.registerFluid("fuel_oil", 0x827717);
util.registerFluid("sulfuric_oil_residues", 0x827717);
util.registerFluid("sulfuric_fuel_oil", 0xB89E61);
util.registerFluid("sulfuric_kerosene", 0xB89E61);
util.registerFluid("sulfuric_gasoline", 0xA8A374);
util.registerFluid("sulfuric_diesel", 0xA19355);
util.registerFluid("alkylated_natural_gas", 0xE6BFBD);
util.registerFluid("syngas", 0xAFA6C2);
util.registerFluid("trichlorosilane", 0x646464);
util.registerFluid("hydrogen_chloride", 0x43A047);
util.registerFluid("iron_chloride_solution", 0x848484);
util.registerFluid("andesite_leach_slurry", 0x4F4F4F);
util.registerFluid("andesite_slurry", 0x646464);
util.registerFluid("muddy_andesite_slurry", 0x5D5D5D);
util.registerFluid("purified_andesite_slurry", 0x2F2F2F);
util.registerFluid("very_hot_nitrogen", 0xE6BECC);
util.registerFluid("silicon_carbide_vapor", 0x706866);
util.registerFluid("sulfuric_acid_solution", 0xE64A19);
util.registerFluid("butanone", 0x806A62);
util.registerFluid("two_butanol", 0x6A544C);
util.registerFluid("two_butanol_solution", 0x6D4C41);
util.registerFluid("two_butene", 0x873F3F);
util.registerFluid("silicontetrachloride", 0x4A4544);
util.registerFluid("gluey_residues", 0xF9A825);
util.registerFluid("refined_glue_mixture", 0xFBC02D);
util.registerFluid("treated_waste_water", 0x9499e0);
util.registerFluid("rarest_earth_mixture", 0x9C3D1F);
util.registerFluid("ree_group_mud", 0x603D32);
util.registerFluid("lanthanum_leach_solution", 0x9F8E89);
util.registerFluid("rarer_earth_concentrate", 0x5A4A4A);
util.registerFluid("aqua_regia_solution", 0xC4602A);
util.registerFluid("gadolinium_leach", 0xD3C7C1);
util.registerFluid("neodymium_oxide_solution", 0x586168);
util.registerFluid("gadolinite_leach_solution", 0xA4A0A0);
util.registerFluid("mithril_fluoride", 0x3f48cc);
util.registerFluid("sulfur_carbon_mixture", 0x686853);
util.registerFluid("paraffin_wax", 0x805e4e);
util.registerFluid("silane", 0x574f57);
util.registerFluid("heatedmilkslurry", 0xC3C0C1);
util.registerFluid("milk_oil", 0xC3C0C1);
util.registerFluid("highly_strained_ethylene_prepolymer_foam", 0xC7C1C2);
util.registerFluid("alpha_linolenic_acid", 0xFDD835);
util.registerFluid("dilutedmilkslurry", 0xFFEBEE);
util.registerFluid("draconiumsolution", 0xAB47BC);
util.registerFluid("mana", 0x01579B);
util.registerFluid("purified_draconium_slurry", 0x8E24AA);
util.registerFluid("draconiumimpureslurry", 0x8E24AA);
util.registerFluid("draconiumslurry", 0x311B92);
util.registerFluid("living_mutation_medium", 0xBBDEFB);
util.registerFluid("cold_air", 0xBBDEFB);
util.registerFluid("supercooled_liquid_nitrogen", 0x4FC3F7);
util.registerFluid("untreated_liquid_oxygen", 0x6CA4BE);
util.registerFluid("cold_waste_gaseous_nitrogen", 0x5C7884);
util.registerFluid("cold_gaseous_nitrogen", 0x5C7884);
util.registerFluid("argon_rich_gas", 0x6B976D);
util.registerFluid("crude_argon_vapor", 0x388E3C);
util.registerFluid("supercooled_oxygen", 0xE0F7FA);
util.registerFluid("liquid_waste_nitrogen", 0x29B6F6);
util.registerFluid("rare_gas_rich_gaseous_nitrogen", 0x7E57C2);
util.registerFluid("rare_gas_mixture", 0x8F78B6);
util.registerFluid("nitrogen_stripped_rare_gas_mixture", 0x7B1FA2);
util.registerFluid("crude_krypton", 0x81C784);
util.registerFluid("crude_neon", 0xF9A825);
util.registerFluid("crude_helium", 0xDCE775);
util.registerFluid("crude_xenon", 0xD32F2F);
util.registerFluid("crude_argon", 0xD32F2F);
util.registerFluid("partially_liquid_krypton", 0xAED5B0);
util.registerFluid("partially_liquid_neon", 0xFBC02D);
util.registerFluid("partially_liquid_helium", 0xFFEE58);
util.registerFluid("partially_liquid_xenon", 0x03A9F4);
util.registerFluid("partially_liquid_argon", 0x66BB6A);
util.registerFluid("cold_gaseous_oxygen", 0xAED2F2);
util.registerFluid("liquid_krypton", 0x0277BD);
util.registerFluid("liquid_neon", 0xFF8F00);
util.registerFluid("liquid_argon", 0x689F38);
util.registerFluid("red_vitriol", 0xD32F2F);
util.registerFluid("cyan_vitriol", 0x578AB4);
util.registerFluid("clay_vitriol", 0x6D8191);
util.registerFluid("white_vitriol", 0xFFFFFF);
util.registerFluid("green_vitriol", 0x66BB6A);
util.registerFluid("pink_vitriol", 0xF48FB1);
util.registerFluid("gray_vitriol", 0x616161);
util.registerFluid("pumpkin_oil", 0xAFB42B);
util.registerFluid("melon_oil", 0xDDB8C4);
util.registerFluid("moderately_steam_cracked_methane", 0xCC4A75);
util.registerFluid("severely_steam_cracked_methane", 0xDF7197);
util.registerFluid("lightly_steam_cracked_methane", 0xD4517D);
util.registerFluid("bean_slurry", 0xD6C7A3);
util.registerFluid("yeast_extract_mannitol_agar_solution", 0x381D59);
util.registerFluid("dissolved_yeast_extract_mannitol_mixture", 0x0288D1);
util.registerFluid("mannitol", 0x4A148C);
util.registerFluid("yeast_extract", 0x9D9A7D);
util.registerFluid("yeast_mixture", 0xB7B5A8);
util.registerFluid("nutrient_rich_solution", 0x43A047);
util.registerFluid("peptone", 0xAFABA3);
util.registerFluid("malt_extract", 0x796841);
util.registerFluid("wort", 0x3E2723);
util.registerFluid("hot_grist_solution", 0x8D6A5F);
util.registerFluid("hot_water", 0x6988AA);
util.registerFluid("orthophosphoric_acid_solution", 0x4a0715);
util.registerFluid("defibrinated_sheep_blood", 0x154cb3);
util.registerFluid("phosphoric_anyhidride", 0x4ecfa2);
util.registerFluid("methylene_diphosphonic_acid", 0x146348);
util.registerFluid("orthophosphoric_acid", 0xcfc04e);
util.registerFluid("edetic_acid", 0xd9d9d9);
util.registerFluid("sheep_blood", 0x880015);
util.registerFluid("sheep_blood_plasma", 0xbf1733);
util.registerFluid("sheep_blood_cells", 0xa3142c);
util.registerFluid("phenylethyl_alcohol_agar_solution", 0x5D3131);
util.registerFluid("dissolved_phenylethyl_alcohol_agar", 0xA65353);
util.registerFluid("casein_enzymic_hydrolysate", 0xD7D3D3);
util.registerFluid("unpreperated_light_naquadah_fuel", 0x1D1C1A);
util.registerFluid("unpreperated_medium_naquadah_fuel", 0x1F1E1E);
util.registerFluid("unpreperated_light_enriched_naquadah_fuel", 0x201F1C);
util.registerFluid("unpreperated_heavy_naquadah_fuel", 0x131210);
util.registerFluid("unpreperated_medium_enriched_naquadah_fuel", 0x212120);
util.registerFluid("unpreperated_heavy_enriched_naquadah_fuel", 0x333333);
util.registerFluid("novolacs_photoresist", 0x997E3D);
util.registerFluid("neutralized_matter_plasma", 0x0277BD);
util.registerFluid("soy_bean_oil", 0xB6B18A);
util.registerFluid("sterile_defibrinated_sheep_blood", 0x622424);
util.registerFluid("b_phenylethyl_alcohol", 0x00695C);
util.registerFluid("nhexadecane", 0x3F3F1D);
util.registerFluid("nheptane", 0x383725);
util.registerFluid("noctane", 0x6F6E56);
util.registerFluid("phenylethyl_alcohol_blood_agar", 0x9E4545);
util.registerFluid("palm_oil", 0xCEC787);
util.registerFluid("y-butyrolactone", 0xAFA6C2);
util.registerFluid("nitroaniline", 0x9B4D35);
util.registerFluid("impure_kapton_k_solution", 0x5D5B49);
util.registerFluid("cuproquin", 0x667267);
util.registerFluid("quinoline", 0x986E4C);
util.registerFluid("polyhydroxyalkanoate", 0xA55A5A);
util.registerFluid("tripropylamine", 0xA55A5A);
util.registerFluid("tetra_propyl_ammonium_bromide", 0x788B68);
util.registerFluid("isobutyl_alcohol", 0xB4BEAC);
util.registerFluid("pxylene", 0x252525);
util.registerFluid("diluted_acetic_acid", 0x7A6D69);
util.registerFluid("tetrabromethane", 0x381F18);
util.registerFluid("mxylene", 0x313130);
util.registerFluid("mpxylene", 0x191818);
util.registerFluid("adamantium_pentoxide", 0x323F52);
util.registerFluid("purified_bedrock_slurry", 0x171716);
util.registerFluid("phosphorus_pentoxide", 0x857F47);
util.registerFluid("soldering_adamantane", 0x26464A);
util.registerFluid("adamantane_lubricant", 0xA7A27C);
util.registerFluid("perfluorotributylamine", 0x880E4F);
util.registerFluid("iodized_oil", 0x3E3C2C);
util.registerFluid("adamantane_rich_oil_solution", 0x092D41);
util.registerFluid("tetra_hydro_dicyclopentadiene", 0x515557);
util.registerFluid("alkylated_adamantanes", 0x114A6A);
util.registerFluid("isooctane", 0x33691E);
util.registerFluid("darmstadtium_hexafluoride", 0x2D2F31);
util.registerFluid("fluorodarmstadtic_acid", 0x2D2E2F);
util.registerFluid("molten_adamantium_dioxide", 0x132E58);
util.registerFluid("gaseous_adamantium", 0x4A6083);
util.registerFluid("adamantium_phosphorus_hydrogen.plasma", 0x0D47A1);
util.registerFluid("enriched_naquadah_nitrate", 0x191A19);
util.registerFluid("naquadria_nitrate", 0x131313);
util.registerFluid("trinium_solution", 0xAEAFB1);
util.registerFluid("bedrock_slurry", 0x212321);
util.registerFluid("bedrock_contaminated_oil", 0x6B956E);
util.registerFluid("liquid_ozone", 0x2196F3);
util.registerFluid("adamantane", 0x1565C0);
util.registerFluid("furfural", 0x3949AB);
util.registerFluid("btex", 0x605C35);
util.registerFluid("moltennichromerichblend", 0xCECDCD);
util.registerFluid("eternity", 0x46008b);
util.registerFluid("used_froth_flotation_fluid",0x281D1D);
util.registerFluid("galliteslurry",0x525066);
util.registerFluid("stibniteslurry",0x282828);
util.registerFluid("sheldoniteslurry",0xB8B890);
util.registerFluid("pyriteslurry",0x745D1F);
util.registerFluid("cobaltiteslurry",0x3A3AB4);
util.registerFluid("enargiteslurry",0x919191);
util.registerFluid("bowieiteslurry",0x5A5960);
util.registerFluid("tennaniteslurry",0x5D5D5D);
util.registerFluid("chalcopyriteslurry",0x73571D);
util.registerFluid("sylvaniteslurry",0xB2AD9D);
util.registerFluid("stanniteslurry",0xC0BAA8);
util.registerFluid("arsenopyriteslurry",0x7B6C47);
util.registerFluid("borniteslurry",0x7D1000);
util.registerFluid("carroliteslurry",0x807404);
util.registerFluid("aikiniteslurry",0xA58442);
util.registerFluid("cinnabarslurry",0x740000);
util.registerFluid("molybdeniteslurry",0x0E0E0E);
util.registerFluid("rheniiteslurry",0x534536);
util.registerFluid("sphaleriteslurry",0xC6C6C6);
util.registerFluid("solardistilledwater",0x0277BD);
util.registerFluid("npropanol",0xad9113);
util.registerFluid("nbutanol",0x8ac294);
util.registerFluid("fusel_oil",0xa62403);
util.registerFluid("lubricating_oil",0x858146);
util.registerFluid("polybenzimidazoleprepolymerfoam",0x1b1b1c);
util.registerFluid("triethylaluminium",0x4d4de3);
util.registerFluid("polybenzimidazolesolution",0x1a1a1c);
util.registerFluid("impurepolybenzimidazolesolution",0x1a1a1c);
util.registerFluid("polybenzimidazolewaste",0x070708);
util.registerFluid("ehtanol_water_azeotrope",0xD88267);
util.registerFluid("grain_solution",0xCDCDC8);
util.registerFluid("impure_ethanol",0x6F6936);
util.registerFluid("diluted_monazite_sulfate",0x374f36);
util.registerFluid("neutralized_monazite",0x273b26);
util.registerFluid("muddy_monazite_solution",0x353626);
util.registerFluid("monazite_solution",0x192418);
util.registerFluid("ic2distilled_water",0x66b8cc);
util.registerFluid("rawradox",0x8E24AA);
util.registerFluid("lightradox",0xD0AADB);
util.registerFluid("heavyradox",0x633C7A);
util.registerFluid("crackedlightradox",0xB9A1C7);
util.registerFluid("purifiedradox",0x8E24AA);
util.registerFluid("crackedheavyradox",0x6A1B9A);
util.registerFluid("waterplasma",0xB3D1EC);
util.registerFluid("geneticmutagen",0x448247);
util.registerFluid("xenoxene",0x4D4C4C);
util.registerFluid("bastnasiteoxidecompositeliquid",0x827717);
util.registerFluid("diethylamine",0x827717);
util.registerFluid("bastnasiterarerearthconcentrate",0x5A3125);
util.registerFluid("nitrogenatedbastnasiterarerearthoxides",0x471E11);
util.registerFluid("ceriumcontainingbastnasiteconcentrate",0x3C1F17);
util.registerFluid("bastnasiterarerearthoxidemixture",0x4C190A);
util.registerFluid("acidicbastnasiteconcentrate",0x7B280D);
util.registerFluid("bastnasiterarerearthoxidesemulsion",0x302624);
util.registerFluid("bastnasiterarerearthoxidessolution",0x1E1817);
util.registerFluid("ethanolgasoline",0xE65100);
util.registerFluid("impureferrocenemixture",0x8E24AA);
util.registerFluid("ether",0xE65100);
util.registerFluid("ferrocenesolution",0xB0BEC5);
util.registerFluid("roastedbastnasiteconcentrate",0x652F1E);
util.registerFluid("jetfuel",0x429D46);
util.registerFluid("combustionpromoter",0x4CAF50);
util.registerFluid("muddybastnasitesolution",0x842508);
util.registerFluid("conditionedbastnasitemud",0x544340);
util.registerFluid("dilutedbastnasitemud",0x708692);
util.registerFluid("filteredbsatnasitemud",0xBFA782);
util.registerFluid("wetbastnasiterareearthconcentrate",0x6F6B4E);
util.registerFluid("bastnasiteconcentrate",0x76624F);
util.registerFluid("wastewater",0x004D40);
util.registerFluid("treatedsulfuricfractions",0x121010);
util.registerFluid("richamine",0x121010);
util.registerFluid("fractionatedoil",0x181816);
util.registerFluid("tar",0x222121);
util.registerFluid("oilgas",0x121010);
util.registerFluid("vacuumflashedtar",0x121010);
util.registerFluid("heavyoilresidues",0x181816);
util.registerFluid("desaltedoil",0x2C2C2C);
util.registerFluid("dilutedoil",0x141414);
util.registerFluid("hexanoldehyde",0xB71C1C);
util.registerFluid("isohexanoldehyde",0xB71C1C);
util.registerFluid("sterilebiomedium",0x1B5E20);
util.registerFluid("siliconoil",0xD4D4D4);
util.registerFluid("pentanol",0xEF9A9A);
util.registerFluid("pentoldehyde",0xEF9A9A);
util.registerFluid("isopentoldehyde",0xEF9A9A);
util.registerFluid("diphenylmethanediiscocyanatemixture",0xDFC9E2);
util.registerFluid("diaminodiphenylmethanemixture",0xE1BEE7);
util.registerFluid("polyurethaneresin",0xC3B640);
util.registerFluid("propionicacid",0xE0E0E0);
util.registerFluid("nickeltetracarbonyl", 0xB7D7F0);
util.registerFluid("vinegar", 0xc3c4b3);
util.registerFluid("hexanol", 0xc3c4b3);
util.registerFluid("pvtchs", 0xC1D111);
util.registerFluid("highlycomplicatedcosmicrubber", 0x6C706E);
util.registerFluid("primalquarkdegeneratematterplasma", 0xA39090);
util.registerFluid("moltencompressediron", 0x363636);
util.registerFluid("moltenmodularium", 0xFFFFFF);
util.registerFluid("moltenresonantseaborgium", 0x54D66B);
util.registerFluid("cryogeniccoolant", 0xBDECFC);
util.registerFluid("plutoniumbasedliquidfuel", 0xEB1010);
util.registerFluid("plutoniumbasedliquidfuele", 0xC41010);
util.registerFluid("unprocessedboronsolution", 0x739993);
util.registerFluid("borontrioxide", 0x64695D);
util.registerFluid("liquidboronnanoparticles", 0x739993);
util.registerFluid("uraniumbasedliquidfuel", 0x034314);
util.registerFluid("uraniumbasedliquidfuele", 0x034b16);
util.registerFluid("rawsterilizedbiocatalystmedium", 0x2E871A);
util.registerFluid("sterilizedbiocatalystmedium", 0x237A10);
util.registerFluid("moltentungsticnaquadah", 0x1F1F1F);
util.registerFluid("naqudahasphalt", 0x137009);
util.registerFluid("moderatelycrackednaquadahasphalt", 0x227033);
util.registerFluid("acidnaquadahemulsion", 0x444A45);
util.registerFluid("naquadahemulsion", 0x2C2E2C);
util.registerFluid("moltenprotoadamantiumplatedalloy", 0x252b7a);
util.registerFluid("protoadamantiumalloycatalyst", 0x2c3393);
util.registerFluid("refinedglue", 0xA9AD21);
util.registerFluid("naquadahactivationliquid", 0x2b1303);
util.registerFluid("molteninfnite", 0x6099C4);
util.registerFluid("zeliusactivationfluid", 0xF5F2D6);
util.registerFluid("moltenrawneutronium", 0x734ca4);
util.registerFluid("hyperreactiveliquid", 0x773693);
util.registerFluid("moltenlegendarium", 0xc3c3c3);
util.registerFluid("moltenlanthanumfullerenenanotubes", 0x6099C4);
util.registerFluid("moltenactiniumsuperhydride", 0x8c273f);
util.registerFluid("moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea", 0x85428a);
util.registerFluid("moltenchargedcesiumceriumcobaltindium", 0x296b0a);
util.registerFluid("moltenfullerenesuperconductor", 0x74eb1a);
util.registerFluid("moltenborocarbide", 0x679112);
util.registerFluid("creatium", 0x7B1FA2);
util.registerFluid("thoriumleach", 0xB1CADD);
util.registerFluid("activatedthoriumsolution", 0x004D40);
util.registerFluid("tetraethylene", 0x4a4a4a);
util.registerFluid("lumin", 0xbab709);
util.registerFluid("bisphenolb", 0x6B5802);
util.registerFluid("blackfluid", 0x090909);
util.registerFluid("ferrocenewaste", 0x827717);
util.registerFluid("hundretbutanol", 0x827722);
util.registerFluid("hundretmethanol", 0x827722);
util.registerFluid("moltenenhancedenderium", 0x113817);
util.registerFluid("moltenawakenedcompressedmetal", 0xab4b1b);
util.registerFluid("explosivehydrazine", 0x827722);
util.registerFluid("livingsolder", 0x886C62);
util.registerFluid("mutatedlivingsolder", 0x694653);
util.registerFluid("liquidrawneutronium", 0xF5F2D6);
util.registerFluid("photopolymer", 0x4CAF50);
util.registerFluid("explosivehydrazine", 0x827722);
util.registerFluid("livingsolder", 0x886C62);
util.registerFluid("mutatedlivingsolder", 0x694653);
util.registerFluid("liquidrawneutronium", 0xF5F2D6);
util.registerFluid("pcbb", 0x9C27B0);
util.registerFluid("fluorohydrideammoniumcarbamat", 0x2E7D32);
util.registerFluid("lanthanumyttriumsolution", 0x615263);
util.registerFluid("lanthanumceriumacidicsolution", 0xA1887F);
util.registerFluid("ceriumlanthanumsaturatedcompoundsolution", 0xFFE0B2);
util.registerFluid("moltenceriumdopedlanthanum", 0xF3EDBF);
util.registerFluid("unprocessedcelasolution", 0xD9DF95);
util.registerFluid("moltencelananoparticles", 0x9C27B0);
util.registerFluid("moltencelananocarbides", 0xAB47BC);
util.registerFluid("moltenceriumlanthanum", 0xD9DF95);
util.registerFluid("lanthanumceriumsolution", 0xE2E7B3);
util.registerFluid("usedphotopolymersolution", 0xCE93D8);
util.registerFluid("extradistilledwater", 0xBBDEFB);
util.registerFluid("quaternaryammonium", 0xCFD8DC);
util.registerFluid("dissolvingfluid", 0xCFD8DC);
util.registerFluid("aluminosilicatewoolsolution", 0x8A8A8A);
util.registerFluid("radioactive_sludge", 0x495B49);
util.registerFluid("low_thorium_solution", 0x0C220C);
util.registerFluid("thorium_emulsion", 0x885B49);
util.registerFluid("radium_emulsion", 0x7E7E85);
util.registerFluid("radium_cake_solution", 0x666B66);
util.registerFluid("radium_sodium_solution", 0x7E7E97);
util.registerFluid("radium_cake_solution", 0x666B66);
util.registerFluid("solardistilledwater", 0x40b0ed);
util.registerFluid("dirtywater",0x6e3415);
util.registerFluid("superlubricenttincture",0x5a5c00);
util.registerFluid("nmethyl2pyrrolidone", 0x81D4FA);
util.registerFluid("bbutyrolactone", 0xC8E6C9);
util.registerFluid("twonaphthol", 0xFFAB91);
util.registerFluid("binol", 0x37474F);
util.registerFluid("diketene", 0xB0BEC5);
util.registerFluid("chlorodiphenylphosphine", 0x666B66);
util.registerFluid("terephtaladehyde", 0xCFD8DC);
util.registerFluid("naphtalene",0xFF8F00);
util.registerFluid("butylithium",0xC2185B);
util.registerFluid("liquidbinap", 0x263238);
util.registerFluid("crystalkevlar", 0xcba3cc);
util.registerFluid("supraplasma",0xcba3cc);
util.registerFluid("metastableenergeticalalloy",0xdb4234);
util.registerFluid("supercooledthoriumsolution", 0xB3E5FC);
util.registerFluid("heatedthoriumsolution",0xDCE775);
util.registerFluid("thoriumsolution",0x2E7D32);
util.registerFluid("hydrocrackedthoriumsolution", 0xA5D6A7);
util.registerFluid("sulfuricthoriumsolution", 0xFF7043);
util.registerFluid("driedthoriumemulsion",0x305731);
util.registerFluid("purifiedthoriumemulsion",0x388E3C);
util.registerFluid("paraphenylenediaminesolution", 0xBA68C8);
util.registerFluid("unrefinedkevlar",0xFFEB3B);
util.registerFluid("thoriumleachsolution",0x06521c);
util.registerFluid("ic2coolant",0x2f6bb5);
util.registerFluid("teflon",0xa1a1a1);
util.registerFluid("wolframiteimpureslurry",0x39593C);
util.registerFluid("wolframiteslurry",0x355D38);
util.registerFluid("silicon_carbide",0x515151);
util.registerFluid("hot_treated_wastewater",0x515151);
util.registerFluid("liquid_salt",0xD3D4D5);
util.registerFluid("liquid_cryolite",0x42A5F5);
util.registerFluid("pre_nylon_mix",0xE5AF58);
util.registerFluid("naquatitanium_trioxide", 0x301b1b);
util.registerFluid("titanium_tetrachloride", 0x701a31);
util.registerFluid("naquatitanium_hydroxide", 0x382121);
util.registerFluid("diluted_impure_naquahamericium_hydroxide", 0x684b4b);
util.registerFluid("naquahamericium_hydroxide", 0x8f6161);
util.registerFluid("superfluid_carbon_oxygen_mixture_plasma", 0xBDC0DB);
util.registerFluid("1_butene", 0xB75B5B);




























<material:graphene>.addFlags(["GENERATE_ROD"]);
<material:cupronickel>.addFlags(["GENERATE_FRAME"]);
<material:glass>.addFlags(["GENERATE_ROD"]);
<material:emerald>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:americium>.addFlags(["GENERATE_FINE_WIRE","GENERATE_BOLT_SCREW"]);
<material:cosmic_neutronium>.addFlags(["GENERATE_PLASMA"]);
<material:neutronium>.addFlags(["GENERATE_PLASMA"]);
<material:periodicium>.addFlags(["GENERATE_PLASMA"]);
<material:qcd_confined_matter>.addFlags(["GENERATE_GEAR"]);
<material:polybenzimidazole>.addFlags(["GENERATE_ROTOR"]);
<material:hsss>.addFlags(["GENERATE_ROUND","GENERATE_SPRING","GENERATE_ROTOR"]);
<material:technetium>.addFlags(["GENERATE_PLATE"]);
<material:periodicium>.addFlags(["GENERATE_PLATE","GENERATE_FINE_WIRE"]);
<material:americium245>.addFlags(["GENERATE_PLATE"]);
<material:chrome>.addFlags(["GENERATE_ORE"]);
<material:polonium>.addFlags(["GENERATE_PLATE"]);
<material:adamantium>.addFlags(["DISABLE_REPLICATION"]);
<material:vibranium>.addFlags(["DISABLE_REPLICATION"]);
<material:taranium>.addFlags(["DISABLE_REPLICATION"]);
<material:bohrium>.addFlags(["DISABLE_REPLICATION"]);
<material:metastable_oganesson>.addFlags(["DISABLE_REPLICATION"]);
<material:metastable_flerovium>.addFlags(["DISABLE_REPLICATION"]); 
<material:metastable_hassium>.addFlags(["DISABLE_REPLICATION"]);
<material:trinium>.addFlags(["DISABLE_REPLICATION"]);
<material:tin>.addFlags(["GENERATE_DENSE","GENERATE_SPRING"]);
<material:nickel>.addFlags(["GENERATE_DENSE","GENERATE_GEAR"]);
<material:magnesium>.addFlags(["GENERATE_DENSE"]);
<material:lanthanum>.addFlags(["GENERATE_PLATE","GENERATE_DENSE"]);
<material:cosmic_neutronium>.addFlags(["GENERATE_ROUND"]);
<material:americium>.addFlags(["GENERATE_DENSE"]);
<material:thulium>.addFlags(["GENERATE_FRAME","GENERATE_ROD","GENERATE_PLASMA","GENERATE_BOLT_SCREW"]);
<material:naquadah>.addFlags(["GENERATE_FINE_WIRE"]);
<material:indium>.addFlags(["GENERATE_PLATE"]);
<material:titanium>.addFlags(["GENERATE_ORE"]);
<material:gold>.addFlags(["GENERATE_SPRING","GENERATE_DENSE"]);
<material:aluminium>.addFlags(["GENERATE_SPRING"]);
<material:tungsten>.addFlags(["GENERATE_SPRING"]);
<material:yttrium_barium_cuprate>.addFlags(["GENERATE_SPRING"]);
<material:vanadium_gallium>.addFlags(["GENERATE_SPRING"]);
<material:niobium_titanium>.addFlags(["GENERATE_SPRING"]);
<material:copper>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:bronze>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:brass>.addFlags(["GENERATE_LONG_ROD","GENERATE_SPRING"]);
<material:silver>.addFlags(["GENERATE_DENSE"]);
<material:cupronickel>.addFlags(["GENERATE_DENSE"]);
<material:platinum>.addFlags(["GENERATE_DENSE"]);
<material:ender_eye>.addFlags(["GENERATE_ROD"]);
<material:apatite>.addFlags(["GENERATE_ROD"]);
<material:plastic>.addFlags(["GENERATE_ROD"]);
<material:tantalum>.addFlags(["GENERATE_DENSE"]);
<material:nether_star>.addFlags(["GENERATE_ORE"]);
<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);
<material:uranium_radioactive>.addFlags(["GENERATE_ORE"]);
<material:rhodium_plated_palladium>.addFlags(["GENERATE_FRAME"]);
<material:osmiridium>.addFlags(["GENERATE_METAL_CASING", "GENERATE_FRAME","GENERATE_FRAME"]);
<material:black_steel>.addFlags(["GENERATE_FINE_WIRE"]);
<material:perlite>.addFlags(["GENERATE_ORE"]);
<material:uvarovite>.addFlags(["GENERATE_ORE"]);
<material:realgar>.addFlags(["GENERATE_ORE"]);
<material:kanthal>.addFlags(["GENERATE_ROTOR"]);
<material:tumbaga>.addFlags(["GENERATE_ROTOR"]);
<material:tungsten_carbide>.addFlags(["GENERATE_ROTOR"]);
<material:tourmaline>.addFlags(["GENERATE_ORE"]);
<material:naquadah_alloy>.addFlags(["GENERATE_FRAME"]);