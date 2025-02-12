import crafttweaker.item.IItemDefinition;
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
import mods.nuclearcraft.IngotFormer;









#------------------------ luminous blocks start ------------------------
<ore:luminousblock>.add(<randomthings:luminousblock>);
<ore:luminousblock>.add(<randomthings:luminousblock:1>);
<ore:luminousblock>.add(<randomthings:luminousblock:2>);
<ore:luminousblock>.add(<randomthings:luminousblock:3>);
<ore:luminousblock>.add(<randomthings:luminousblock:4>);
<ore:luminousblock>.add(<randomthings:luminousblock:5>);
<ore:luminousblock>.add(<randomthings:luminousblock:6>);
<ore:luminousblock>.add(<randomthings:luminousblock:7>);
<ore:luminousblock>.add(<randomthings:luminousblock:8>);
<ore:luminousblock>.add(<randomthings:luminousblock:9>);
<ore:luminousblock>.add(<randomthings:luminousblock:10>);
<ore:luminousblock>.add(<randomthings:luminousblock:11>);
<ore:luminousblock>.add(<randomthings:luminousblock:12>);
<ore:luminousblock>.add(<randomthings:luminousblock:13>);
<ore:luminousblock>.add(<randomthings:luminousblock:14>);
<ore:luminousblock>.add(<randomthings:luminousblock:15>);

<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:1>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:2>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:3>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:4>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:5>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:6>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:7>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:8>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:9>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:10>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:11>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:12>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:13>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:14>);
<ore:translucentluminousblock>.add(<randomthings:translucentluminousblock:15>);
#------------------------ luminous blocks end ------------------------

<ore:gemBiotite:>.add(<quark:biotite>);
#------------------------ goofy ahh ingots start----------------------



#iridium
<ore:dustIridium>.remove(<qmd:dust:9>);


<ore:gemAmber>.add(<wildnature:amber>);
<ore:ingotAmber>.add(<thaumcraft:amber>);







#copper

<ore:nuggetCopper>.remove(<thaumcraft:nugget:1>);



recipes.remove(<thaumcraft:nugget:1>);
recipes.remove(<nuclearcraft:ingot_block>);

unpacker.findRecipe(8,[<nuclearcraft:ingot_block>,<gtadditions:ga_meta_item:32133>],null).remove();




furnace.addRecipe(<gregtech:meta_item_1:10018>*2,<thaumcraft:cluster:2>);


compressor.findRecipe(2,[<thaumcraft:nugget:1>*9],null).remove();
packer.findRecipe(4,[<thaumcraft:nugget:1>*9,<gtadditions:ga_meta_item:32133>],null).remove();



#lead


unpacker.findRecipe(8,[<nuclearcraft:ingot_block:2>,<gtadditions:ga_meta_item:32133>],null).remove();










#magnesium


recipes.remove(<nuclearcraft:ingot:7>);
compressor.findRecipe(2,[<nuclearcraft:ingot:7>*9],null).remove();
packer.findRecipe(4,[<gtadditions:ga_meta_item:32133>,<nuclearcraft:ingot:7>*9],null).remove();
packer.findRecipe(8,[<gregtech:meta_item_1:9038>*9,<gtadditions:ga_meta_item:32133>],null).remove();

unpacker.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10038>)
    .outputs(<gregtech:meta_item_1:9038>*9)
    .notConsumable(<gtadditions:ga_meta_item:32133>)
    .EUt(8)
    .duration(100)
    .buildAndRegister();







#nickel

extruder.recipeBuilder()
    .EUt(64)
    .inputs(<gregtech:meta_item_1:10044>*4)
    .notConsumable(<gregtech:meta_item_1:32372>)
    .outputs(<gregtech:meta_item_2:26044>)
    .duration(250)
    .buildAndRegister();

#platinum

#tin

<ore:nuggetTin>.remove(<thaumcraft:nugget:2>);

furnace.addRecipe(<gregtech:meta_item_1:10071>*2,<thaumcraft:cluster:3>);




#uranium

#silver
<ore:nuggetSilver>.remove(<thaumcraft:nugget:3>);

furnace.addRecipe(<gregtech:meta_item_1:10062>*2,<thaumcraft:cluster:4>);




#bronze












#zinc


#steel



#electrum






#invar














#enderium





#AR
<ore:circuitAdvanced>.remove(<energycontrol:item_component>);
<ore:blockWarpCoreRim>.add(<gregtech:meta_block_compressed_4:8>);





<ore:IngotSilver>.remove(<wildnature:silver_ingot>);
<ore:dustPotassiumFluoride>.remove(<nuclearcraft:compound:4>);
<ore:dustHafnium>.remove(<qmd:dust:6>);
<ore:nuggetManyullyn>.remove(<gregtech:meta_item_1:9527>);
<ore:ingotManyullyn>.remove(<gregtech:meta_item_1:10527>);
<ore:pulpWood>.remove(<forestry:wood_pulp>);
<ore:dustBarium>.remove(<trinity:barium>);
<ore:circuitElite>.remove(<gregtech:meta_item_2:32495>);
<ore:dustBorax>.remove(<nuclearcraft:compound:7>);
<ore:dustThorium>.remove(<nuclearcraft:dust:3>);
<ore:dustEndstone>.remove(<nuclearcraft:gem_dust:11>);
<ore:dustOsmium>.remove(<qmd:dust:8>);
<ore:dustErbium>.remove(<qmd:dust2:5>);
<ore:dustTerbium>.remove(<qmd:dust2:4>);
<ore:dustStrontium>.remove(<qmd:dust:14>);
<ore:dustSaltpeter>.remove(<qmd:chemical_dust:2>);
<ore:dustSodiumNitrate>.remove(<qmd:chemical_dust:2>);
<ore:dustNiter>.remove(<qmd:chemical_dust:2>);
<ore:blockAmericium243>.remove(<nuclearcraft:fertile_isotope:3>);
<ore:dustObsidian>.remove(<nuclearcraft:gem_dust:3>);
<ore:dustNetherQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:dustQuartz>.remove(<nuclearcraft:gem_dust:2>);
<ore:ingotTin>.remove(<forestry:ingot_tin>);
<ore:dustTitanium>.remove(<qmd:dust:3>);
<ore:dustCoal>.remove(<nuclearcraft:gem_dust:7>);
<ore:dustCoal>.remove(<threng:material:3>);
<ore:preciousEmerald>.add(<randomthings:ingredient:9>);
<ore:dustUranium>.remove(<nuclearcraft:dust:4>);
<ore:dustNiobium>.remove(<qmd:dust:1>);
<ore:dustSodium>.remove(<qmd:dust:11>);
<ore:dustBismuth>.remove(<nuclearcraft:fission_dust>);
<ore:dustZinc>.remove(<qmd:dust:7>);
<ore:dustTin>.remove(<nuclearcraft:dust:1>);
<ore:dustCalcium>.remove(<qmd:dust:13>);
<ore:dustMagnesium>.remove(<nuclearcraft:dust:7>);
<ore:dustManganese>.remove(<nuclearcraft:dust:11>);
<ore:dustAluminium>.remove(<nuclearcraft:dust:12>);
<ore:dustAluminum>.remove(<nuclearcraft:dust:12>);
<ore:dustDiamond>.remove(<nuclearcraft:gem_dust>);
<ore:dustNickel>.remove(<qmd:dust:5>);
<ore:dustMolybdenum>.remove(<nuclearcraft:fission_dust:6>);
<ore:dustCobalt>.remove(<qmd:dust:4>);
<ore:ingotCopper>.remove(<nuclearcraft:ingot>);
<ore:ingotSilver>.remove(<nuclearcraft:ingot:13>);
<ore:ingotAluminium>.remove(<nuclearcraft:ingot:12>);
<ore:ingotAluminum>.remove(<nuclearcraft:ingot:12>);
<ore:ingotManganese>.remove(<nuclearcraft:ingot:11>);
<ore:ingotZirconium>.remove(<nuclearcraft:ingot:10>);
<ore:ingotMagnesium>.remove(<nuclearcraft:ingot:7>);
<ore:ingotLithium>.remove(<nuclearcraft:ingot:6>);
<ore:ingotBoron>.remove(<nuclearcraft:ingot:5>);
<ore:ingotUranium>.remove(<nuclearcraft:ingot:4>);
<ore:ingotThorium>.remove(<nuclearcraft:ingot:3>);
<ore:ingotLead>.remove(<nuclearcraft:ingot:2>);
<ore:ingotTin>.remove(<nuclearcraft:ingot:1>);
<ore:ingotBronze>.remove(<nuclearcraft:alloy>);
<ore:dustSilver>.remove(<nuclearcraft:dust:13>);
<ore:dustCopper>.remove(<nuclearcraft:dust>);
<ore:ingotNichrome>.remove(<qmd:ingot_alloy:5>);
<ore:ingotNiobiumTitanium>.remove(<qmd:ingot_alloy:3>);
<ore:ingotNeodymium>.remove(<qmd:ingot2:1>);
<ore:ingotYttrium>.remove(<qmd:ingot2>);
<ore:ingotStrontium>.remove(<qmd:ingot:14>);
<ore:ingotPotassium>.remove(<qmd:ingot:12>);
<ore:ingotPlatinum>.remove(<qmd:ingot:10>);
<ore:ingotSodium>.remove(<qmd:ingot:11>);
<ore:ingotIridium>.remove(<qmd:ingot:9>);
<ore:ingotOsmium>.remove(<qmd:ingot:8>);
<ore:ingotZinc>.remove(<qmd:ingot:7>);
<ore:ingotHafnium>.remove(<qmd:ingot:6>);
<ore:ingotNickel>.remove(<qmd:ingot:5>);
<ore:ingotCobalt>.remove(<qmd:ingot:4>);
<ore:ingotTitanium>.remove(<qmd:ingot:3>);
<ore:ingotChromium>.remove(<qmd:ingot:2>);
<ore:ingotNiobium>.remove(<qmd:ingot:1>);
<ore:ingotCalcium>.remove(<qmd:ingot:13>);
<ore:ingotTungsten>.remove(<qmd:ingot>);
<ore:dustPlatinum>.remove(<qmd:dust:10>);
<ore:dustYtterbium>.remove(<qmd:dust2:6>);
<ore:dustPolonium>.remove(<nuclearcraft:fission_dust:2>);
<ore:dustRadium>.remove(<nuclearcraft:fission_dust:1>);
<ore:ingotBeryllium>.remove(<nuclearcraft:ingot:9>);
<ore:ingotStainlessSteel>.remove(<qmd:ingot_alloy:2>);
<ore:dustTungsten>.remove(<qmd:dust>);
<ore:dustSodiumFluoride>.remove(<nuclearcraft:compound:3>);
<ore:dustSodiumHydroxide>.remove(<nuclearcraft:compound:5>);
<ore:dustLead>.remove(<nuclearcraft:dust:2>);
<ore:dustSamarium>.remove(<qmd:dust2:3>);
<ore:ingotTungstenCarbide>.remove(<qmd:ingot_alloy>);
<ore:ingotSteel>.remove(<nuclearcraft:alloy:5>);
<ore:ingotOsmiridium>.remove(<qmd:ingot_alloy:4>);
<ore:dustZirconium>.remove(<nuclearcraft:dust:10>);
<ore:dustFluorite>.remove(<nuclearcraft:gem_dust:5>);
<ore:dustIodine>.remove(<qmd:dust2:2>);
<ore:dustSulfur>.remove(<nuclearcraft:gem_dust:6>);
<ore:dustBoron>.remove(<nuclearcraft:dust:5>);
<ore:dustArsenic>.remove(<nuclearcraft:gem_dust:10>);
<ore:dustBeryllium>.remove(<nuclearcraft:dust:9>);
<ore:oreUranium>.remove(<nuclearcraft:ore:4>);
<ore:circuitElite>.remove(<gregtech:meta_item_2:32496>);
<ore:ingotGraphite>.remove(<nuclearcraft:ingot:8>);
<ore:dustGraphite>.remove(<nuclearcraft:dust:8>);
<ore:blockTin>.remove(<nuclearcraft:ingot_block:1>);
<ore:blockLead>.remove(<nuclearcraft:ingot_block:2>);
<ore:blockThorium>.remove(<nuclearcraft:ingot_block:3>);
<ore:blockUranium>.remove(<nuclearcraft:ingot_block:4>);
<ore:blockBeryllium>.remove(<nuclearcraft:ingot_block:9>);
<ore:blockFissionModerator>.remove(<nuclearcraft:ingot_block:9>);
<ore:blockFissionModerator>.remove(<nuclearcraft:ingot_block:8>);
<ore:blockGraphite>.remove(<nuclearcraft:ingot_block:8>);
<ore:blockMagnesium>.remove(<nuclearcraft:ingot_block:7>);
<ore:blockLithium>.remove(<nuclearcraft:ingot_block:6>);
<ore:blockBoron>.remove(<nuclearcraft:ingot_block:5>);
<ore:blockSilver>.remove(<nuclearcraft:ingot_block:13>);
<ore:blockAluminium>.remove(<nuclearcraft:ingot_block:12>);
<ore:blockAluminum>.remove(<nuclearcraft:ingot_block:12>);
<ore:blockZirconium>.remove(<nuclearcraft:ingot_block:10>);
<ore:blockManganese>.remove(<nuclearcraft:ingot_block:11>);
<ore:blockCopper>.remove(<nuclearcraft:ingot_block>);
<ore:oreMagnesium>.remove(<nuclearcraft:ore:7>);
<ore:oreLithium>.remove(<nuclearcraft:ore:6>);
<ore:oreBoron>.remove(<nuclearcraft:ore:5>);
<ore:oreThorium>.remove(<nuclearcraft:ore:3>);
<ore:oreLead>.remove(<nuclearcraft:ore:2>);
<ore:oreTin>.remove(<nuclearcraft:ore:1>);
<ore:oreCopper>.remove(<nuclearcraft:ore>);
<ore:nuggetStellaralloy>.add(<enderio:item_alloy_endergy_nugget:3>);
<ore:nuggetStellaralloy>.remove(<gregtech:meta_item_1:9569>);
<ore:ingotStellaralloy>.add(<enderio:item_alloy_endergy_ingot:3>);
<ore:ingotStellaralloy>.remove(<gregtech:meta_item_1:10569>);
<ore:dustAsh>.remove(<forestry:ash>);
<ore:gemApatite>.remove(<forestry:apatite>);
<ore:gemRuby>.remove(<projectred-core:resource_item:200>);
<ore:gemSapphire>.remove(<projectred-core:resource_item:201>);
<ore:blockNetherStar>.remove(<extendedcrafting:storage:2>);
<ore:blockNetherStar>.remove(<overloaded:nether_star_block>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);
<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
<ore:ingotRedAlloy>.remove(<projectred-core:resource_item:103>);
<ore:nuggetCofpper>.remove(<thaumcraft:nugget:1>);
<ore:dustAlumina>.remove(<gtadditions:ga_dust:44>);
<ore:nuggetUltimate>.remove(<gregtech:meta_item_1:9523>);
<ore:ingotUltimate>.remove(<gregtech:meta_item_1:10523>);
<ore:blockApatite>.remove(<forestry:resource_storage>);
<ore:oreApatite>.remove(<forestry:resources>);
<ore:nuggetIron>.remove(<thaumcraft:nugget>);
<ore:crystaltinebaseingot>.add(<contenttweaker:crystaltinebaseingot>);
<ore:circuitGood>.remove(<gtadditions:ga_meta_item:32222>);
<ore:circuitElite>.remove(<gtadditions:ga_meta_item:32225>);
<ore:circuitUev>.remove(<gtadditions:ga_meta_item:32232>);
<ore:circuitUltimate>.remove(<gtadditions:ga_meta_item:32227>);
<ore:circuitSuperconductor>.remove(<gtadditions:ga_meta_item:32228>);
<ore:circuitInfinite>.remove(<gtadditions:ga_meta_item:32229>);
<ore:circuitBasic>.remove(<gtadditions:ga_meta_item:32221>);
<ore:circuitAdvanced>.remove(<gtadditions:ga_meta_item:32223>);
<ore:circuitExtreme>.remove(<gtadditions:ga_meta_item:32224>);
<ore:circuitMaster>.remove(<gtadditions:ga_meta_item:32226>);
<ore:plateIron>.remove(<thaumcraft:plate:1>);
<ore:plateBrass>.remove(<thaumcraft:plate>);
<ore:titaniumice>.add(<contenttweaker:titaniumcontainingice>);
<ore:nuggetLead>.remove(<thaumcraft:nugget:4>);
<ore:ingotInfinity>.remove(<gregtech:meta_item_1:10561>);
<ore:ingotLumium>.remove(<gregtech:meta_item_1:10532>);
<ore:voodooPoppetProtectionLightning>.remove(<minecraft:stick>);
<ore:dustYttrium>.remove(<qmd:dust2>);
<ore:dustPotassium>.remove(<qmd:dust:12>);
<ore:dustLithium>.remove(<nuclearcraft:dust:6>);
<ore:ingotCobalt>.remove(<tconstruct:ingots>);
<ore:oreMalachite>.add(<wildnature:malachite_ore>);
<ore:IngotSteel>.remove(<wildnature:steel_ingot>);
<ore:BlockRuby>.remove(<wildnature:ruby_block>);
<ore:BlockSilver>.remove(<wildnature:silver_block>);
<ore:BlockMalachite>.remove(<wildnature:malachite_block>);
<ore:oreMalachite>.remove(<wildnature:malachite_ore>);
<ore:BlockSapphire>.remove(<wildnature:sapphire_block>);
<ore:BlockSteel>.remove(<wildnature:steel_block>);
<ore:BlockAmethyst>.remove(<wildnature:amethyst_block>);
<ore:dustSodiumChloride>.remove(<qmd:chemical_dust:3>);
<ore:dustSalt>.remove(<qmd:chemical_dust:3>);
<ore:gemAmber>.add(<wildnature:amber>);
<ore:ingotAmber>.add(<thaumcraft:amber>);
<ore:stoneBasalt>.add(<lavatweaks:basalt>);
