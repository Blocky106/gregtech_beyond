
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



RecipeBuilder.newBuilder("quantumcircuitassembler1", "quantumcircuitassemblers", 800)    .addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0)    .addEnergyPerTickInput(20000)   .addFluidInput(<liquid:quantumdots>*20)   .addItemOutput(<gtadditions:ga_meta_item:32600>*8)    .addItemInputs(<gtadditions:ga_meta_item:32491>,<contenttweaker:ultrabiomutatedcircuitboard>*2,<gtadditions:ga_meta_item:32601>*2,<gtadditions:ga_meta_item:32602>*2,<gtadditions:ga_meta_item:32603>*2,<gtadditions:ga_meta_item:32604>*2,<gtadditions:ga_meta_item:32599>,<gtadditions:ga_meta_item:32430>,<gregtech:meta_item_1:19715>,<gtadditions:ga_meta_item:32598>,<contenttweaker:computation>*16).build();
RecipeBuilder.newBuilder("quantumcircuitassembler2", "quantumcircuitassemblers", 800)    .addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0)    .addEnergyPerTickInput(20000)   .addFluidInputs(<liquid:polytetrafluoroethylene>*864,<liquid:fullerene_doped_nanotubes>*144,<liquid:soldering_alloy>*2296,<liquid:enriched_naquadah_alloy>*432)   .addItemOutput(<gtadditions:ga_meta_item:32500>*4)    .addItemInputs(<gregtech:meta_item_1:12205>*4,<gtadditions:ga_meta_item:32488>,<contenttweaker:opticalcircuitboard>*4,<gtadditions:ga_meta_item:32487>,<contenttweaker:computation>*8,<gtadditions:ga_meta_item:32459>,<gtadditions:ga_meta_item:32499>*2,<gtadditions:ga_meta_item:32486>,<gtadditions:ga_meta_item:32438>*2,<gtadditions:ga_meta_item:32496>*2,<gtadditions:ga_meta_item:32494>*2,<gtadditions:ga_meta_item:32495>*2,<gtadditions:ga_meta_item:32497>*2,<gregtech:meta_item_1:19730>*2,<gtadditions:ga_meta_item:32491>*2).build();
RecipeBuilder.newBuilder("quantumcircuitassembler3", "quantumcircuitassemblers", 800)    .addItemInput(<contenttweaker:quantumcontrolcomputermk2>).setChance(0)    .addEnergyPerTickInput(20000)   .addItemInputs(<gregtech:meta_item_2:32496>,<contenttweaker:computation>*4)   .addItemOutputs(<gtadditions:ga_meta_item:32213>*64,<gtadditions:ga_meta_item:32213>*64).build();
RecipeBuilder.newBuilder("quantumcircuitassembler4", "quantumcircuitassemblers", 800)    .addFluidInput(<liquid:tritanium>*144)    .addItemInput(<contenttweaker:quantumcontrolcomputermk2>).setChance(0)    .addEnergyPerTickInput(20000)   .addItemInputs(<contenttweaker:computation>*2,<gtadditions:ga_meta_item:32585>,<gregtech:meta_item_2:32475>*2,<gregtech:meta_item_2:26564>*4,<gregtech:cable:5573>*4,<gregtech:meta_item_1:12528>*4)   .addItemOutput(<gregtech:meta_item_2:32496>).build();
RecipeBuilder.newBuilder("quantumcircuitassembler5", "quantumcircuitassemblers", 800)    .addEnergyPerTickInput(20000).addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0)  .addItemOutput(<gtadditions:ga_meta_item:32015>*32)  .addFluidInput(<liquid:tritanium>*2000) .addItemInputs(<gtadditions:ga_meta_item:32411>*4,<gtadditions:ga_meta_item:32405>*16,<contenttweaker:biowaremainchip>*4,<gregtech:meta_item_2:16308>*64,<gregtech:meta_item_2:16308>*64,<gtadditions:ga_meta_item:32408>*16,<gtadditions:ga_meta_item:32407>*16,<gtadditions:ga_meta_item:32018>*16,<gtadditions:ga_meta_item:32406>*16,<gregtech:meta_item_1:19840>*64).build();
RecipeBuilder.newBuilder("quantumcircuitassembler6", "quantumcircuitassemblers", 800)    .addEnergyPerTickInput(20000).addFluidInputs(<liquid:cosmic_computing_mix>*1000,<liquid:metastable_hassium>*1000)    .addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0)  .addItemOutput(<gtadditions:ga_meta_item:32538>).addItemInputs(<contenttweaker:biocells>*4,<contenttweaker:computation>*32,<gregtech:meta_item_1:19728>*2,<gregtech:ga_cable:721>*8,<gregtech:meta_item_1:12856>*8,<gtadditions:ga_meta_item:32459>*4,<gtadditions:ga_meta_item:32438>*8,<gtadditions:ga_meta_item:32533>,<gtadditions:ga_meta_item:32535>*2,<gtadditions:ga_meta_item:32538>,<gtadditions:ga_meta_item:32534>*2,<gtadditions:ga_meta_item:32537>*2,<gtadditions:ga_meta_item:32536>*2).build();
RecipeBuilder.newBuilder("quantumcircuitassembler7", "quantumcircuitassemblers", 800)    .addEnergyPerTickInput(20000).addFluidInputs(<liquid:zylon>*864,<liquid:quantum>*432,<liquid:soldering_alloy>*1296,<liquid:proto_adamantium>*432)    .addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0)  .addItemOutput(<gtadditions:ga_meta_item:32539>*4).addItemInputs(<contenttweaker:biocells>*4,<contenttweaker:computation>*32,<gregtech:meta_item_1:19728>*2,<gregtech:ga_cable:721>*8,<gregtech:meta_item_1:12856>*8,<gtadditions:ga_meta_item:32459>*4,<gtadditions:ga_meta_item:32438>*8,<gtadditions:ga_meta_item:32533>,<gtadditions:ga_meta_item:32535>*2,<gtadditions:ga_meta_item:32538>,<gtadditions:ga_meta_item:32534>*2,<gtadditions:ga_meta_item:32537>*2,<gtadditions:ga_meta_item:32536>*2).build();
RecipeBuilder.newBuilder("quantumcircuitassembler8", "quantumcircuitassemblers", 800)    .addEnergyPerTickInput(20000).addFluidInputs(<liquid:fullerene_polymer_matrix>*1296,<liquid:titanium50>*8000).addItemInput(<contenttweaker:quantumcontrolcomputermk1>).setChance(0).addItemOutput(<gtadditions:ga_meta_item:32554>*4).addItemInputs(<gtadditions:ga_meta_item:32545>*16,<gtadditions:ga_meta_item:32542>*16,<contenttweaker:computation>*64,<gtadditions:ga_meta_item:32551>,<gtadditions:ga_meta_item:32543>*16,<gtadditions:ga_meta_item:32553>,<gtadditions:ga_meta_item:32552>,<gtadditions:ga_meta_item:32550>,<gregtech:meta_item_1:12993>*2,<gregtech:ga_cable:724>*4,<gtadditions:ga_meta_item:32544>*16,<gtadditions:ga_meta_item:32556>*4).build();








