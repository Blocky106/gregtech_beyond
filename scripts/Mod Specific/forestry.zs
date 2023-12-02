import mods.forestry.Carpenter;
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



mods.forestry.Carpenter.removeRecipe(<forestry:impregnated_casing>);
mods.forestry.Carpenter.removeRecipe(<forestry:chipsets>.withTag({T: 0 as short}));
mods.forestry.Carpenter.removeRecipe(<forestry:portable_alyzer>);
mods.forestry.Carpenter.removeRecipe(<minecraft:ender_pearl>);

mods.forestry.Carpenter.addRecipe(<forestry:portable_alyzer>,[[<gregtech:meta_item_1:12189>,<forestry:crafting_material:1>,<gregtech:meta_item_1:12189>],[<gregtech:meta_item_1:12189>,<gtadditions:ga_transparent_casing:2>,<gregtech:meta_item_1:12189>], [<gregtech:meta_item_1:12111>,<forestry:crafting_material:1>,<gregtech:meta_item_1:12111>]], 300, <liquid:steel>* 500);
mods.forestry.Carpenter.addRecipe(<contenttweaker:diamondaluminiumcasing>, [[<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:14111>,<gregtech:meta_item_1:12111>],[<gregtech:meta_item_1:12111>,null,<gregtech:meta_item_1:12111>],[<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:14111>,<gregtech:meta_item_1:12111>]], 260, <liquid:aluminium> * 2000);
mods.forestry.Carpenter.addRecipe(<forestry:impregnated_casing>, [[<gregtech:meta_item_1:2042>,<gregtech:meta_item_1:2042>,<gregtech:meta_item_1:2042>],[<gregtech:meta_item_1:2042>,<forestry:sturdy_machine>,<gregtech:meta_item_1:2042>],[<gtadditions:ga_transparent_casing:2>,<gtadditions:ga_transparent_casing:2>,<gtadditions:ga_transparent_casing:2>]], 260, <liquid:seed_oil> * 600);
recipes.addShaped(<forestry:engine_clockwork>, [	[<ore:screwGold>, <ore:plateAluminium>, <ore:screwGold>], [<ore:plateCurvedBronze>, <contenttweaker:engine>, <ore:plateCurvedBronze>], 	[<ore:craftingPiston>, <ore:plateDoubleBronze>, <ore:craftingPiston>]]);

mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:1>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:2>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:3>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:4>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:5>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:6>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:7>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:8>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:9>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:10>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:11>);
mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:12>);

recipes.addShaped(<forestry:worktable>, [	[<ore:ingotCopper>, <ore:itemSimpleMachineChassi>, <ore:ingotCopper>], 	[<ore:ingotCopper>, <ore:circuitBasic>, <ore:ingotCopper>], 	[<ore:ingotCopper>, <gregtech:machine_casing:10>, <ore:ingotCopper>]]);
recipes.addShaped(<forestry:carpenter>, [	[<ore:compressedBronze>, <gregtech:machine_casing:10>, <ore:compressedBronze>], 	[<ore:plateBronze>, <thermalfoundation:material:512>, <ore:plateBronze>], 	[<forestry:impregnated_casing>, <contenttweaker:engine>, <forestry:impregnated_casing>]]);
recipes.addShaped(<forestry:analyzer>, [	[<ore:plateBlueSteel>, <forestry:portable_alyzer>, <ore:plateBlueSteel>], 	[<ore:plateBlueSteel>, <gregtech:machine:502>, <ore:plateBlueSteel>], 	[<contenttweaker:bisphenolbingot>, <ore:circuitBasic>, <contenttweaker:bisphenolbingot>]]);
recipes.addShaped(<forestry:fabricator>, [[<ore:plateRoseGold>, <ore:itemMachineChassi>, <ore:plateRoseGold>], 	[<ore:plateRoseGold>, <gregtech:machine:502>, <ore:plateRoseGold>], 	[<contenttweaker:electricalsteelplate>, <contenttweaker:engine>, <contenttweaker:electricalsteelplate>]]);
recipes.addShaped(<forestry:wrench>, [	[<ore:screwCopper>, null, <ore:screwCopper>], 	[<ore:plateCopper>, <ore:stickCopper>, <ore:plateCopper>], 	[null, <ore:stickCopper>, null]]);
recipes.addShaped(<forestry:engine_biogas>, [	[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], 	[<ore:gearBronze>, <gregtech:meta_item_1:32762>, <ore:gearBronze>], 	[<gregtech:machine_casing:1>, <ore:craftingPiston>, <gregtech:machine_casing:1>]]);
recipes.addShaped(<forestry:mailbox>, [	[<ore:plateTin>, <ore:plateTin>, <ore:plateTin>], 	[<ore:plateTin>, <forestry:sturdy_machine>, <ore:plateTin>], 	[<gregtech:machine:802>, <gregtech:machine:802>, <gregtech:machine:802>]]);
recipes.addShaped(<forestry:trade_station>, [	[<forestry:thermionic_tubes:2>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:2>], 	[<forestry:thermionic_tubes:2>, <gregtech:machine:802>, <forestry:thermionic_tubes:2>], 	[<ore:plateTin>, <forestry:mailbox>, <ore:plateTin>]]);
recipes.addShaped(<forestry:cart.beehouse:1>, [	[null, null, null], 	[<ore:craftingToolSaw>, <forestry:apiary>, <ore:craftingToolHardHammer>], 	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);
recipes.addShaped(<forestry:cart.beehouse>, [	[null, null, null], 	[<ore:craftingToolSaw>, <forestry:bee_house>, <ore:craftingToolHardHammer>], 	[<ore:screwSteel>, <minecraft:minecart>, <ore:screwSteel>]]);



recipes.remove(<forestry:apatite>);
recipes.remove(<forestry:thermionic_tubes:11>);
recipes.remove(<forestry:thermionic_tubes:7>);
recipes.remove(<forestry:thermionic_tubes:1>);
recipes.remove(<forestry:thermionic_tubes:4>);
recipes.remove(<forestry:trade_station>);
recipes.remove(<forestry:mailbox>);
recipes.remove(<forestry:charcoal>);
recipes.remove(<forestry:engine_biogas>);
recipes.remove(<forestry:engine_peat>);
recipes.remove(<forestry:analyzer>);
recipes.remove(<forestry:carpenter>);
recipes.remove(<forestry:engine_clockwork>);
recipes.remove(<forestry:centrifuge>);
recipes.remove(<forestry:fabricator>);
recipes.remove(<forestry:wrench>);





recipes.remove(<forestry:apiarist_bag>);
recipes.addShaped(<forestry:apiarist_bag>, [	[<ore:string>, <ore:stickWood>, <ore:string>], 	[<contenttweaker:boiledleather>, <forestry:bee_chest>, <contenttweaker:boiledleather>], 	[<ore:string>, <ore:stickWood>, <ore:string>]]);
recipes.remove(<forestry:lepidopterist_bag>);
recipes.addShaped(<forestry:lepidopterist_bag>, [	[<ore:string>, <ore:stickWood>, <ore:string>], 	[<contenttweaker:boiledleather>, <forestry:butterfly_chest>, <contenttweaker:boiledleather>], 	[<ore:string>, <ore:stickWood>, <ore:string>]]);
recipes.remove(<forestry:miner_bag>);
recipes.addShaped(<forestry:miner_bag>, [	[<ore:string>, <gregtech:meta_item_1:12184>, <ore:string>], 	[<contenttweaker:boiledleather>, <minecraft:chest>, <contenttweaker:boiledleather>], 	[<ore:string>, <gregtech:meta_item_1:12184>, <ore:string>]]);


recipes.remove(<forestry:fertilizer_compound>);
recipes.remove(<forestry:honeyed_slice>);



chemReactor.recipeBuilder()
    .inputs(<gregtechfoodoption:gtfo_meta_item:85>,<forestry:honey_drop>)
    .outputs(<forestry:honeyed_slice>)
    .duration(12)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtechfoodoption:gtfo_meta_item:85>,<forestry:honey_drop>)
    .outputs(<forestry:honeyed_slice>)
    .duration(12)
    .EUt(200)
    .buildAndRegister();

chemReactor.recipeBuilder()
    .inputs(<gregtechfoodoption:gtfo_meta_item:85>)
    .fluidInputs(<liquid:honey>*144)
    .outputs(<forestry:honeyed_slice>)
    .duration(12)
    .EUt(200)
    .buildAndRegister();

lcr.recipeBuilder()
    .inputs(<gregtechfoodoption:gtfo_meta_item:85>)
    .fluidInputs(<liquid:honey>*144)
    .outputs(<forestry:honeyed_slice>)
    .duration(12)
    .EUt(200)
    .buildAndRegister();



