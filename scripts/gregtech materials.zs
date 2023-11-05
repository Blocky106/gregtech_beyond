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

var materialList = MaterialRegistry.getAllMaterials();

val desh = MaterialRegistry.createIngotMaterial(788, "desh", 0x333333, "SHINY", 2);
desh.addFlags(["GENERATE_BOLT_SCREW","GENERATE_PLATE","GENERATE_DENSE","GENERATE_ROD","GENERATE_GEAR", "GENERATE_ORE"]);

val energeticalloy = MaterialRegistry.createIngotMaterial(515, "energeticalloy", 0xDB9D0D, "SHINY", 2);
energeticalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_ROTOR"]);

val draconium = MaterialRegistry.createIngotMaterial(517, "draconium", 0x8F07AD, "SHINY", 2);
draconium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val ardite = MaterialRegistry.createIngotMaterial(518, "ardite", 0xab661b, "SHINY", 2);
ardite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val nobelium = MaterialRegistry.createIngotMaterial(519, "nobelium", 0x7022BA, "SHINY", 2);
nobelium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val lawrencium = MaterialRegistry.createIngotMaterial(520, "lawrencium", 0x78516C, "SHINY", 2);
lawrencium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val einsteinium2 = MaterialRegistry.createIngotMaterial(516, "einsteinium2", 0xC2B71D, "SHINY", 2);
einsteinium2.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);
einsteinium2.setCableProperties(8192, 4, 0);

val titaniumplatinum = MaterialRegistry.createIngotMaterial(521, "titaniumplatinum", 0xBC5EF2, "SHINY", 2);
titaniumplatinum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);
titaniumplatinum.setCableProperties(32768, 4, 1);

val soularium = MaterialRegistry.createIngotMaterial(522, "soularium", 0x302003, "SHINY", 2);
soularium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK"]);

val ultimate = MaterialRegistry.createIngotMaterial(523, "ultimate", 0xE01040, "SHINY", 2);
ultimate.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK","GENERATE_FRAME"]);

val alumina = MaterialRegistry.createIngotMaterial(524, "alumina", 0xB3B3B3, "DULL", 2);
alumina.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val aluminiumsalt = MaterialRegistry.createDustMaterial(525, "aluminiumsalt", 0xB3B3C7, "DULL", 2);
aluminiumsalt.addFlags(["GENERATE_ORE"]);
 
val zyptorium = MaterialRegistry.createIngotMaterial(526, "zyptorium", 0x0048FF, "SHINY", 2);
zyptorium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val manyullyn = MaterialRegistry.createIngotMaterial(527, "manyullyn", 0x590580, "SHINY", 2);
manyullyn.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE"]);

val atomicseperationcatalyst = MaterialRegistry.createIngotMaterial(528, "atomicseperationcatalyst", 0xD4720B, "SHINY", 2);
atomicseperationcatalyst.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val adamantiumalloy = MaterialRegistry.createIngotMaterial(529, "adamantiumalloy", 0x595959, "SHINY", 2);
adamantiumalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val marcem200steel = MaterialRegistry.createIngotMaterial(530, "marcem200steel", 0x292929, "DULL", 2);
marcem200steel.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_LONG_ROD"]);

val hikarium = MaterialRegistry.createIngotMaterial(531, "hikarium", 0xFA8EEC, "SHINY", 2);
hikarium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val lumium = MaterialRegistry.createIngotMaterial(532, "lumium", 0xD3F20A, "SHINY", 2);
lumium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_BOLT_SCREW"]);
lumium.setCableProperties(32768, 4, 1);

val fluxedelectrum = MaterialRegistry.createIngotMaterial(533, "fluxedelectrum", 0xE8D635, "SHINY", 2);
fluxedelectrum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val naquadriatictritanium = MaterialRegistry.createIngotMaterial(534, "naquadriatictritanium", 0x666666, "SHINY", 2);
naquadriatictritanium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val sunnarium = MaterialRegistry.createIngotMaterial(535, "sunnarium", 0xFFEA00, "SHINY", 2);
sunnarium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

val diamandine = MaterialRegistry.createIngotMaterial(536, "diamandine", 0xBAD453, "SHINY", 2);
diamandine.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val platinumsalt = MaterialRegistry.createIngotMaterial(537, "platinumsalt", 0xBFBE91, "SHINY", 2);
platinumsalt.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

val tellurite = MaterialRegistry.createIngotMaterial(538, "tellurite", 0x919FBF, "DULL", 2);
tellurite.addFlags(["GENERATE_PLATE","GENERATE_ORE","GENERATE_FLUID_BLOCK"]);

var signalum = MaterialRegistry.createIngotMaterial(539, "signalum", 0xb86a0b, "DULL", 2);
signalum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var artheriumsn = MaterialRegistry.createIngotMaterial(540, "artheriumsn", 0x153094, "SHINY", 2);
artheriumsn.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var dalisenite = MaterialRegistry.createIngotMaterial(541, "dalisenite", 0x8f8d17, "SHINY", 2);
dalisenite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var tanmolyiumbetac = MaterialRegistry.createIngotMaterial(542, "tanmolyiumbetac", 0xa10bb8, "SHINY", 2);
tanmolyiumbetac.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var quantium = MaterialRegistry.createIngotMaterial(543, "quantium", 0x2FAB1F, "SHINY", 2);
quantium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var blackplutonium = MaterialRegistry.createIngotMaterial(544, "blackplutonium", 0x242424, "SHINY", 2);
blackplutonium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_FOIL"]);

var astralsilver = MaterialRegistry.createIngotMaterial(545, "astralsilver", 0x959695, "SHINY", 2);
astralsilver.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var infusedgold = MaterialRegistry.createIngotMaterial(546, "infusedgold", 0x9C9227, "SHINY", 2);
infusedgold.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var indalloy140 = MaterialRegistry.createIngotMaterial(547, "indalloy140", 0x5A405E, "SHINY", 2);
indalloy140.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var mythril = MaterialRegistry.createIngotMaterial(548, "mythril", 0x2E87C7, "SHINY", 2);
mythril.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK","GENERATE_ORE"]);

var orundum = MaterialRegistry.createIngotMaterial(549, "orundum", 0xF600FA, "SHINY", 2);
orundum.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var vibrantalloy = MaterialRegistry.createIngotMaterial(550, "vibrantalloy", 0x10C236, "SHINY", 2);
vibrantalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var extrmelyunstablenaquadah = MaterialRegistry.createIngotMaterial(551, "extrmelyunstablenaquadah", 0x4C594D, "SHINY", 2);
extrmelyunstablenaquadah.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var tiberium = MaterialRegistry.createIngotMaterial(552, "tiberium", 0x16B526, "SHINY", 2);
tiberium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FLUID_BLOCK"]);

var rutheniumtritaniumcarbite = MaterialRegistry.createIngotMaterial(554, "rutheniumtritaniumcarbite", 0x5E5E5E, "SHINY", 2);
rutheniumtritaniumcarbite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FRAME"]);

var runtherfordium = MaterialRegistry.createIngotMaterial(555, "runtherfordium", 0x827d39, "SHINY", 2);
runtherfordium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE"]);

var yellorium = MaterialRegistry.createIngotMaterial(556, "yellorium", 0xfff200, "SHINY", 2);
yellorium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE","GENERATE_FRAME"]);

var energeticsilver = MaterialRegistry.createIngotMaterial(557, "energeticsilver", 0x51B2DB, "SHINY", 2);
energeticsilver.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_DENSE"]);
energeticsilver.setCableProperties(10240, 4, 1);

var infinitycatalyst = MaterialRegistry.createIngotMaterial(558, "infinitycatalyst", 0xB5B5B5, "SHINY", 2);
infinitycatalyst.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_FRAME","GENERATE_DENSE","GENERATE_ROUND","GENERATE_GEAR","GENERATE_FOIL","GENERATE_BOLT_SCREW","GENERATE_ROTOR"]);
infinitycatalyst.setCableProperties(2147483647, 4, 4);

var maxsuperconductor = MaterialRegistry.createIngotMaterial(559, "maxsuperconductor", 0xB5B5B5, "SHINY", 2);
maxsuperconductor.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);
maxsuperconductor.setCableProperties(2147483647, 4, 0);

var maxsuperconductorbase = MaterialRegistry.createIngotMaterial(560, "maxsuperconductorbase", 0xB5B5B5, "SHINY", 2);
maxsuperconductorbase.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);
maxsuperconductorbase.setCableProperties(2147483647, 4, 4);

var infinity = MaterialRegistry.createIngotMaterial(561, "infinity", 0xC47DDB, "SHINY", 2);
infinity.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_DENSE"]);
infinity.setCableProperties(2147483647, 4, 0);

var blackopal = MaterialRegistry.createGemMaterial(562, "blackopal", 0x141212, "OPAL", 2, [<material:opal>*1]);
blackopal.addFlags(["GENERATE_LENSE","GENERATE_PLATE","GENERATE_ORE"]);

var activatednaquadah = MaterialRegistry.createIngotMaterial(563, "activatednaquadah", 0x141212, "SHINY", 2);
activatednaquadah.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var unknowncrystal = MaterialRegistry.createIngotMaterial(564, "unknowncrystal", 0x0F754B, "SHINY", 2);
unknowncrystal.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var anto = MaterialRegistry.createIngotMaterial(565, "anto", 0x1e2e2c, "SHINY", 2, [<material:osmiridium>*3,<material:americium>*2,<material:tungsten>*2,<material:naquadah>*1]);
anto.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

var incoloy945x = MaterialRegistry.createIngotMaterial(567, "incoloy945x", 0x7CABAD, "SHINY", 2);
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

val fullerenepolymertetrix = MaterialRegistry.createIngotMaterial(575,"fullerenepolymertetrix",0x171616,"DULL",2,[<material:carbon>*60,<material:rhodium>*2,<material:hydrogen>*33,<material:sulfur>*12,<material:oxygen>*40]);
fullerenepolymertetrix.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FRAME"]);

val endiron = MaterialRegistry.createIngotMaterial(576,"endiron",0x1a4d2c,"SHINY",2);
endiron.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

val copperalloy = MaterialRegistry.createIngotMaterial(577,"copperalloy",0xcf7947,"SHINY",2);
copperalloy.setCableProperties(512, 4, 4);
copperalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE","GENERATE_FINE_WIRE"]);

val radium202 = MaterialRegistry.createIngotMaterial(578,"radium202",0xFFCA28,"SHINY",2);
radium202.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_DENSE"]);

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

val teflon = MaterialRegistry.createFluidMaterial(586,"teflon",0xa1a1a1,"FLUID", null);

val brightsteel = MaterialRegistry.createIngotMaterial(587, "brightsteel", 0xd3d3d3, "shiny",2);
brightsteel.setCableProperties(32768, 2, 4);
brightsteel.addFlags(["GENERATE_PLATE"]);

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

val philipscatalyst = MaterialRegistry.createDustMaterial(596,"philipscatalyst",0xB45D83,"DULL",2);
philipscatalyst.addFlags(["GENERATE_PLATE"]);

val zieglernattacatalyst = MaterialRegistry.createDustMaterial(597,"zieglernattacatalyst",0x8BC34A,"DULL",2);
zieglernattacatalyst.addFlags(["GENERATE_PLATE"]);

val kaminskycatalyst = MaterialRegistry.createDustMaterial(598,"kaminskycatalyst",0x372927,"DULL",2);
kaminskycatalyst.addFlags(["GENERATE_PLATE"]);

#val kaptonk = MaterialRegistry.createDustMaterial(32000,"kaptonk",0x372927,"DULL",2);
#kaptonk.addFlags(["GENERATE_PLATE"]);


util.registerFluid("npropanol",0xad9113);
util.registerFluid("isobutyl_alcohol",0xa0ad13);
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
util.registerFluid("waterplasma",0x827717);
util.registerFluid("geneticmutagen",0x448247);
util.registerFluid("xenoxene",0x4D4C4C);
util.registerFluid("bastnasiteoxidecompositeliquid",0x827717);
util.registerFluid("diethylamine",0x827717);
util.registerFluid("bastnasiterarerearthconcentrate",0x2E4D7F);
util.registerFluid("nitrogenatedbastnasiterarerearthoxides",0x2E4D7F);
util.registerFluid("ceriumcontainingbastnasiteconcentrate",0xBF5D40);
util.registerFluid("bastnasiterarerearthoxidemixture",0xD28770);
util.registerFluid("acidicbastnasiteconcentrate",0xBF360C);
util.registerFluid("bastnasiterarerearthoxidesemulsion",0x2E4D7F);
util.registerFluid("bastnasiterarerearthoxidessolution",0x2E4D7F);
util.registerFluid("ethanolgasoline",0x2E4D7F);
util.registerFluid("impureferrocenemixture",0x8E24AA);
util.registerFluid("ether",0xE65100);
util.registerFluid("ferrocenesolution",0xB0BEC5);
util.registerFluid("roastedbastnasiteconcentrate",0x2E4D7F);
util.registerFluid("jetfuel",0x429D46);
util.registerFluid("combustionpromoter",0x2E4D7F);
util.registerFluid("muddybastnasitesolution",0x842508);
util.registerFluid("conditionedbastnasitemud",0x544340);
util.registerFluid("dilutedbastnasitemud",0x2E4D7F);
util.registerFluid("filteredbsatnasitemud",0x2E4D7F);
util.registerFluid("wetbastnasiterareearthconcentrate",0x2E4D7F);
util.registerFluid("bastnasiteconcentrate",0x2E4D7F);
util.registerFluid("wastewater",0x2E4D7F);
util.registerFluid("treatedsulfuricfractions",0x121010);
util.registerFluid("richamine",0x121010);
util.registerFluid("sourgas",0x121010);
util.registerFluid("oilfractions",0x121010);
util.registerFluid("fractionatedoil",0x181816);
util.registerFluid("tar",0x222121);
util.registerFluid("oilgas",0x121010);
util.registerFluid("vacuumflashedtar",0x121010);
util.registerFluid("heavyoilresidues",0x181816);
util.registerFluid("sulfuricbyproducts",0x2C2C2C);
util.registerFluid("sulfuricoilresidues",0xFFEE58);
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
util.registerFluid("draconiumenrichedamonia", 0xEA00FF);
util.registerFluid("steamcrackeddraconiumenrichedamonia", 0xEA00FF);
util.registerFluid("draconiumcontainingmixture", 0xEA00FF);
util.registerFluid("enhanceddraconiummixture", 0xEA00FF);
util.registerFluid("draconiumsaltmixture", 0xEA00FF);
util.registerFluid("aircompresseddsm", 0xEA00FF);
util.registerFluid("draconiumdioxide", 0xEA00FF);
util.registerFluid("draconiumhexachloride", 0xEA00FF);
util.registerFluid("draconiumhexafluoride", 0xEA00FF);
util.registerFluid("draconiumnitradesolution", 0xEA00FF);
util.registerFluid("depleteddraconiumnitradesolution", 0xEA00FF);
util.registerFluid("draconiumrichsolution", 0xEA00FF);
util.registerFluid("highlycomplicatedcosmicrubber", 0x6C706E);
util.registerFluid("primalquarkdegeneratematterplasma", 0xA39090);
util.registerFluid("moltencompressediron", 0x363636);
util.registerFluid("moltenmodularium", 0xFFFFFF);
util.registerFluid("moltenresonantseaborgium", 0x54D66B);
util.registerFluid("cryogeniccoolant", 0xBDECFC);
util.registerFluid("obisdianinfuseddraconiummixture", 0xEA00FF);
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
util.registerFluid("monazitecakesolution", 0x2A751B);
util.registerFluid("monazitefilteredcakesolution", 0x1B5710);
util.registerFluid("monazitefilteredsolution", 0x294207);
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
util.registerFluid("hydrogentetrafluoride", 0x90CAF9);
util.registerFluid("pcbb", 0x9C27B0);
util.registerFluid("fluorohydrideammoniumcarbamat", 0x2E7D32);
util.registerFluid("hydrogentetrafluorocarbidedioxide", 0xF8BBD0);
util.registerFluid("hydrogentetrafluoromehtane", 0x8D6E63);
util.registerFluid("lanthanumyttriumsolution", 0x615263);
util.registerFluid("lanthanumceriumacidicsolution", 0xA1887F);
util.registerFluid("ceriumlanthanumsaturatedcompoundsolution", 0xFFE0B2);
util.registerFluid("moltenceriumdopedlanthanum", 0xF3EDBF);
util.registerFluid("unprocessedcelasolution", 0xD9DF95);
util.registerFluid("moltencelananoparticles", 0xD9DF95);
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


































<material:emerald>.addFlags(["GENERATE_FLUID_BLOCK"]);
<material:americium>.addFlags(["GENERATE_FINE_WIRE"]);
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
