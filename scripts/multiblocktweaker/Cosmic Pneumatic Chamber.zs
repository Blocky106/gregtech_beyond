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


var loc = "cosmic_pneumatic_chamber";
var meta = 10007;
val cosmic_pneumatic_chamber = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCSCCC")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "OOOOOOO",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "O~~~~~O",
                    "OOOOOOO")
                .aisle(
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC",
                    "CCCCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:pneumaticcraft:pressure_chamber_wall>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("O", <metastate:gtadditions:ga_heating_coil:4>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCCCC",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "CCCCCCC")
                .aisle(
                    "SCCCCCE",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "O     O",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "OOOOOOO",
                    "CCCCCCC")
                .where("O", <metastate:gtadditions:ga_heating_coil:4>)
                .where("F", <metastate:gregtech:frame_steel>)
                .where("G", <metastate:gtadditions:ga_transparent_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:pneumaticcraft:pressure_chamber_wall>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[1], IFacing.north())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/pneumatic"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<pneumaticcraft:empty_pcb>)
    .outputs(<pneumaticcraft:unassembled_pcb>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32601>*8,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32545>*2,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32537>*4,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:transistor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32405>*64,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:transistor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32542>*2,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:transistor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32497>*16,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:transistor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32406>*64,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32601>*8,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32604>*8,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:transistor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32534>*4,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();

cosmic_pneumatic_chamber.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32494>*16,<pneumaticcraft:ingot_iron_compressed>*4)
    .outputs(<pneumaticcraft:capacitor>)
    .duration(800)
    .EUt(20000)
    .buildAndRegister();




