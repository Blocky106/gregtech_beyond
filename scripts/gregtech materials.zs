#loader gregtech

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
energeticalloy.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR"]);

val draconium = MaterialRegistry.createIngotMaterial(517, "draconium", 0x8F07AD, "SHINY", 2);
draconium.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_FLUID_BLOCK"]);

val ardite = MaterialRegistry.createIngotMaterial(518, "ardite", 0xab661b, "SHINY", 2);
ardite.addFlags(["GENERATE_PLATE","GENERATE_ROD","GENERATE_GEAR","GENERATE_FRAME","GENERATE_FLUID_BLOCK"]);

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
 