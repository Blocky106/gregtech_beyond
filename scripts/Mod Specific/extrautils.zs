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
val distillation_tower = mods.gregtech.recipe.RecipeMap.getByName("distillery");
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




recipes.remove(<extrautils2:endershard>);
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
recipes.remove(<extrautils2:quarry>);
recipes.remove(<extrautils2:quarryproxy>);
recipes.remove(<extrautils2:decorativesolidwood:1>);
recipes.remove(<extrautils2:largishchest>);
recipes.remove(<extrautils2:rainbowgenerator>);
recipes.remove(<extrautils2:rainbowgenerator:1>);
recipes.remove(<extrautils2:rainbowgenerator:2>);
recipes.remove(<extrautils2:suncrystal:250>);
recipes.remove(<extrautils2:grocket:6>);
recipes.remove(<extrautils2:grocket:5>);
recipes.remove(<extrautils2:grocket:4>);
recipes.remove(<extrautils2:grocket:3>);
recipes.remove(<extrautils2:grocket:2>);
recipes.remove(<extrautils2:grocket:1>);
recipes.remove(<extrautils2:grocket>);
recipes.remove(<extrautils2:filter>);
recipes.remove(<extrautils2:filterfluids>);
recipes.remove(<extrautils2:spike_wood>);
recipes.remove(<extrautils2:spike_stone>);
recipes.remove(<extrautils2:glasscutter>);
recipes.remove(<extrautils2:resonator>);
recipes.remove(<extrautils2:unstableingots>);
recipes.remove(<extrautils2:decorativesolid:4>);
furnace.remove(<extrautils2:decorativeglass>);
recipes.remove(<extrautils2:compressednetherrack>);
recipes.remove(<extrautils2:compressednetherrack:1>);
recipes.remove(<extrautils2:compressednetherrack:2>);
recipes.remove(<extrautils2:compressednetherrack:3>);
recipes.remove(<extrautils2:compressednetherrack:4>);
recipes.remove(<extrautils2:compressednetherrack:5>);
recipes.remove(<extrautils2:compressedsand>);
recipes.remove(<extrautils2:compressedsand:1>);
recipes.remove(<extrautils2:compresseddirt:1>);
recipes.remove(<extrautils2:compresseddirt>);
recipes.remove(<extrautils2:compresseddirt:2>);
recipes.remove(<extrautils2:compresseddirt:3>);
recipes.remove(<extrautils2:compressedcobblestone>);
recipes.remove(<extrautils2:compressedcobblestone:1>);
recipes.remove(<extrautils2:compressedcobblestone:2>);
recipes.remove(<extrautils2:compressedcobblestone:3>);
recipes.remove(<extrautils2:compressedcobblestone:4>);
recipes.remove(<extrautils2:compressedcobblestone:5>);
recipes.remove(<extrautils2:compressedcobblestone:6>);
recipes.remove(<extrautils2:compressedcobblestone:7>);
recipes.remove(<extrautils2:machine>);
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}));
recipes.remove(<extrautils2:opinium>);


recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}), [	[<ore:plateStainlessSteel>, <ore:bookEnchanted>, <ore:plateStainlessSteel>], 	[<gregtech:meta_item_1:32642>, <extrautils2:machine>, <gregtech:meta_item_1:32642>], 	[<ore:wireGtDoubleAluminium>, <ore:circuitAdvanced>, <ore:wireGtDoubleAluminium>]]);



recipes.addShaped(<extrautils2:resonator>, [	[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], 	[<ore:ingotDemonicMetal>, <ore:gemRedstone>, <ore:ingotDemonicMetal>], 	[<ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>]]);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_block_compressed_2>,<extrautils2:ingredients:4>*4)
    .outputs(<extrautils2:opinium>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium>*2,<gregtech:meta_block_compressed_33:7>)
    .outputs(<extrautils2:opinium:1>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:1>*2,<gregtech:meta_block_compressed_46>,<gregtech:meta_block_compressed_33:7>*2)
    .outputs(<extrautils2:opinium:2>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:2>*2,<gregtech:meta_block_compressed_33:15>,<gregtech:meta_block_compressed_46>*2)
    .outputs(<extrautils2:opinium:3>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:3>*2,<gtadditions:ga_reactor_casing>,<gregtech:meta_block_compressed_33:15>*2)
    .outputs(<extrautils2:opinium:4>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:4>*2,<gtadditions:ga_meta_item:32378>,<gtadditions:ga_reactor_casing>*2)
    .outputs(<extrautils2:opinium:5>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:5>*2,<gtadditions:ga_meta_item:32378>*2,<gregtech:ga_cable:4737>)
    .outputs(<extrautils2:opinium:6>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:6>*2,<gregtech:ga_cable:4737>*2,<gtadditions:ga_meta_item:32343>)
    .outputs(<extrautils2:opinium:7>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<extrautils2:opinium:7>*2,<gtadditions:ga_meta_item:32343>*2,<contenttweaker:stablestar>)
    .outputs(<extrautils2:opinium:8>)
    .duration(400)
    .EUt(1200)
    .buildAndRegister();

recipes.remove(<extrautils2:opinium:8>);
recipes.remove(<extrautils2:opinium:7>);
recipes.remove(<extrautils2:opinium:6>);
recipes.remove(<extrautils2:opinium:5>);
recipes.remove(<extrautils2:opinium:4>);
recipes.remove(<extrautils2:opinium:3>);
recipes.remove(<extrautils2:opinium:2>);
recipes.remove(<extrautils2:opinium:1>);
recipes.remove(<extrautils2:opinium>);



assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12133>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<extrautils2:machine>)
    .duration(40)
    .EUt(490)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<enderio:block_holier_fog>*4,<enderio:item_material:16>)
    .outputs(<extrautils2:suncrystal:250>)
    .duration(200)
    .EUt(512)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2218>)
    .outputs(<extrautils2:endershard>*9)
    .duration(500)
    .EUt(1200)
    .buildAndRegister();

ebf.recipeBuilder()
    .inputs(<extrautils2:decorativesolid:4>)
    .outputs(<extrautils2:decorativeglass>)
    .property("temperature", 1700)
    .duration(400)
    .EUt(12)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12858>*8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<extrautils2:machine>)
    .duration(800)
    .EUt(1200)
    .buildAndRegister();

recipes.removeByRecipeName("extrautils2:shortcut_hopper");
recipes.removeByRecipeName("extrautils2:shortcut_stick");


recipes.addShaped(<extrautils2:largishchest>, [	[<randomthings:blockofsticks>, <randomthings:blockofsticks>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <ore:chest>, <randomthings:blockofsticks>], 	[<randomthings:blockofsticks>, <randomthings:blockofsticks>, <randomthings:blockofsticks>]]);

recipes.addShaped(<extrautils2:trashcan>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:2197>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<extrautils2:trashcanenergy>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:19018>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<extrautils2:trashcanfluid>, [ [null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:803>, <gregtech:meta_item_1:12184>], [null, null, null]]);
recipes.remove(<extrautils2:trashcan>);
recipes.remove(<extrautils2:trashcanenergy>);
recipes.remove(<extrautils2:trashcanfluid>);


