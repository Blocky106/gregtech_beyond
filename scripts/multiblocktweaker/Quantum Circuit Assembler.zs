import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


var loc = "quantum_circuit_assembler";
var meta = 10011;
val quantum_circuit_assembler = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCSCCCCC")
                .aisle(
                    "HHHHHHHHHHH",
                    "H~~~~~~~~~H",
                    "H~~~~~~~~~H",
                    "H~~~~~~~~~H",
                    "HHHHHHHHHHH")
                .aisle(
                    "HGGGGGGGGGH",
                    "M~~~~~~~~~M",
                    "MAAAAAAAAAM",
                    "M~~~~~~~~~M",
                    "HGGGGGGGGGH")
                .aisle(
                    "HGGGGGGGGGH",
                    "MAAAAAAAAAM",
                    "MZZZZZZZZZM",
                    "MAAAAAAAAAM",
                    "HGGGGGGGGGH")
                .aisle(
                    "HGGGGGGGGGH",
                    "M~~~~~~~~~M",
                    "MAAAAAAAAAM",
                    "M~~~~~~~~~M",
                    "HGGGGGGGGGH")
                .aisle(
                    "HHHHHHHHHHH",
                    "H~~~~~~~~~H",
                    "H~~~~~~~~~H",
                    "H~~~~~~~~~H",
                    "HHHHHHHHHHH")
                .aisle(
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC",
                    "CCCCCCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:7>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .where("A", <metastate:gtadditions:ga_multiblock_casing>)
                .where("Z", <metastate:contenttweaker:advancedassemblylinecasing>)
                .where("M", <metastate:gtadditions:ga_nuclear_casing:11>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCC",
                    "HHHHH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HHHHH",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "SCCCE",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "H   H",
                    "G A G",
                    "GAZAG",
                    "G A G",
                    "H   H",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "HHHHH",
                    "HMMMH",
                    "HMMMH",
                    "HMMMH",
                    "HHHHH",
                    "CCCCC")                
                .where("C", <metastate:gregtech:metal_casing:7>)
                .where("S", IBlockInfo.controller(loc))
                .where("H", <metastate:contenttweaker:highpowercasing>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .where("A", <metastate:gtadditions:ga_multiblock_casing>)
                .where("Z", <metastate:contenttweaker:advancedassemblylinecasing>)
                .where("M", <metastate:gtadditions:ga_nuclear_casing:11>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(16)
                        .maxFluidInputs(4)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;







quantum_circuit_assembler.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:quantumdots>*20)
    .inputs(<gtadditions:ga_meta_item:32491>,<contenttweaker:ultrabiomutatedcircuitboard>*2,<gtadditions:ga_meta_item:32601>*2,<gtadditions:ga_meta_item:32602>*2,<gtadditions:ga_meta_item:32603>*2,<gtadditions:ga_meta_item:32604>*2,<gtadditions:ga_meta_item:32599>,<gtadditions:ga_meta_item:32430>,<gregtech:meta_item_1:19715>,<gtadditions:ga_meta_item:32598>,<contenttweaker:computation>*16)
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .duration(500)
    .outputs(<gtadditions:ga_meta_item:32600>*8)
    .EUt(100000000)
    .buildAndRegister();

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32496>,<contenttweaker:computation>*4)
    .notConsumable(<contenttweaker:quantumcontrolcomputermk2>)
    .duration(500)
    .outputs(<gtadditions:ga_meta_item:32213>*128)
    .EUt(100000000)
    .buildAndRegister();

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:polytetrafluoroethylene>*864,<liquid:fullerene_doped_nanotubes>*144,<liquid:soldering_alloy>*2296,<liquid:enriched_naquadah_alloy>*432)
    .inputs(<gregtech:meta_item_1:12205>*4,<gtadditions:ga_meta_item:32488>,<contenttweaker:opticalcircuitboard>*4,<gtadditions:ga_meta_item:32487>,<contenttweaker:computation>*8,<gtadditions:ga_meta_item:32459>,<gtadditions:ga_meta_item:32499>*2,<gtadditions:ga_meta_item:32486>,<gtadditions:ga_meta_item:32438>*2,<gtadditions:ga_meta_item:32496>*2,<gtadditions:ga_meta_item:32494>*2,<gtadditions:ga_meta_item:32495>*2,<gtadditions:ga_meta_item:32497>*2,<gregtech:meta_item_1:19730>*2,<gtadditions:ga_meta_item:32491>*2)
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .outputs(<gtadditions:ga_meta_item:32500>*4)
    .duration(500)
    .EUt(100000000)
    .buildAndRegister();

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:quantumcontrolcomputermk2>)
    .fluidInputs(<liquid:tritanium>*144)
    .inputs(<contenttweaker:computation>*2,<gtadditions:ga_meta_item:32585>,<gregtech:meta_item_2:32475>*2,<gregtech:meta_item_2:26564>*4,<gregtech:cable:5573>*4,<gregtech:meta_item_1:12528>*4)
    .outputs(<gregtech:meta_item_2:32496>)
    .duration(500)
    .EUt(2000000)
    .buildAndRegister();

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .fluidInputs(<liquid:tritanium>*2000)
    .inputs(<gtadditions:ga_meta_item:32411>*4,<nuclearcraft:part:6>*4,<gtadditions:ga_meta_item:32405>*8,<contenttweaker:biowaremainchip>*4,<gregtech:meta_item_2:16308>*64,<gtadditions:ga_meta_item:32408>*8,<gtadditions:ga_meta_item:32407>*8,<gtadditions:ga_meta_item:32018>*8,<gtadditions:ga_meta_item:32406>*8,<gregtech:meta_item_1:19840>*64)
    .outputs(<gtadditions:ga_meta_item:32015>*32)
    .duration(800)
    .EUt(1200000)
    .buildAndRegister();  

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .fluidInputs(<liquid:cosmic_computing_mix>*1000,<liquid:metastable_hassium>*1000)
    .inputs(<contenttweaker:biocells>*4,<contenttweaker:computation>*32,<gregtech:meta_item_1:19728>*2,<gregtech:ga_cable:721>*8,<gregtech:meta_item_1:12856>*8,<gtadditions:ga_meta_item:32459>*4,<gtadditions:ga_meta_item:32438>*8,<gtadditions:ga_meta_item:32533>,<gtadditions:ga_meta_item:32535>*2,<gtadditions:ga_meta_item:32534>*2,<gtadditions:ga_meta_item:32537>*2,<gtadditions:ga_meta_item:32536>*2)
    .outputs(<gtadditions:ga_meta_item:32538>)
    .duration(800)
    .EUt(120000000)
    .buildAndRegister();  

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .fluidInputs(<liquid:zylon>*864,<liquid:quantum>*432,<liquid:soldering_alloy>*1296,<liquid:proto_adamantium>*432)
    .inputs(<contenttweaker:biocells>*4,<contenttweaker:computation>*32,<gregtech:meta_item_1:19728>*2,<gregtech:ga_cable:721>*8,<gregtech:meta_item_1:12856>*8,<gtadditions:ga_meta_item:32459>*4,<gtadditions:ga_meta_item:32438>*8,<gtadditions:ga_meta_item:32533>,<gtadditions:ga_meta_item:32535>*2,<gtadditions:ga_meta_item:32538>,<gtadditions:ga_meta_item:32534>*2,<gtadditions:ga_meta_item:32537>*2,<gtadditions:ga_meta_item:32536>*2)
    .outputs(<gtadditions:ga_meta_item:32539>*4)
    .duration(480)
    .EUt(25000000)
    .buildAndRegister();  

quantum_circuit_assembler.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:quantumcontrolcomputermk1>)
    .fluidInputs(<liquid:fullerene_polymer_matrix>*1296,<liquid:titanium50>*8000)
    .inputs(<gtadditions:ga_meta_item:32545>*16,<gtadditions:ga_meta_item:32542>*16,<contenttweaker:computation>*64,<gtadditions:ga_meta_item:32551>,<gtadditions:ga_meta_item:32543>*16,<gtadditions:ga_meta_item:32553>,<gtadditions:ga_meta_item:32552>,<gtadditions:ga_meta_item:32550>,<gregtech:meta_item_1:12993>*2,<gregtech:ga_cable:724>*4,<gtadditions:ga_meta_item:32544>*16,<gtadditions:ga_meta_item:32556>*4)
    .outputs(<gtadditions:ga_meta_item:32554>*4)
    .duration(650)
    .EUt(22222222)
    .buildAndRegister();  




