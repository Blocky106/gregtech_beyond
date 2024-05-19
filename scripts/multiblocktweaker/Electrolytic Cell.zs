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


var loc = "electrolytic_cell";
var meta = 10041;
val electrolytic_cell = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle("CCCCC","CCCCC","CCCCC")
                .aisle("CCCCC","CAAAC","CSCCC")
                .aisle("CCCCC","CCCCC","CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <metastate:gtadditions:ga_metal_casing_2:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCC","CCC","CCC")
                .aisle("CCC","SAE","CCC")
                .aisle("CCC","CAC","CCC")
                .aisle("CCC","CAC","CCC")
                .aisle("CCC","CCC","CCC")
                .where("A", <metastate:contenttweaker:copperalloycoilblock>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:gtadditions:ga_metal_casing_2:5>)
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(6)
                        .maxOutputs(4)
                        .build())
.withZoom(0.5f)

.buildAndRegister() as Multiblock;



//Chalcopyrite --> Copper
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:blue_vitriol_water_solution>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*5000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:2065>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();


//Pyrolusite --> Magnanese
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:gray_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*5000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2039>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

//Magnesite --> Magnesium
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:pink_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*5000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2012>,<gregtech:meta_item_1:2038>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

//Ilmenite --> Titanium Sludge
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:green_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*5000,<liquid:oxygen>*1000)
    .outputs(<gtadditions:ga_dust:32186>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

//Sphalerite --> Zinc
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:white_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*3000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2079>,<gregtech:meta_item_1:2065>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

//Clay --> Alumina
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:clay_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*2000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2524>*5,<gregtech:meta_item_1:2063>,<gregtech:meta_item_1:2036>,<gregtech:meta_item_1:2061>*2)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

//Garnierite --> Nickel
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:cyan_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*2000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2044>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .fluidInputs(<liquid:red_vitriol>*1000,<liquid:distilled_water>*1000)
    .fluidOutputs(<liquid:water>*2000,<liquid:oxygen>*1000)
    .outputs(<gregtech:meta_item_1:2005>,<gregtech:meta_item_1:2017>,<gregtech:meta_item_1:2065>)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<contenttweaker:silver_electrode>)
    .notConsumable(<gregtech:meta_item_2:19300>)
    .fluidInputs(<liquid:draconiumsolution>*1000)
    .notConsumable(<liquid:plasma.draconium>)
    .fluidOutputs(<liquid:draconium>*500,<liquid:distilled_water>*500)
    .duration(100)
    .EUt(590)
    .buildAndRegister();

electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:14035>)
    .notConsumable(<gregtech:meta_item_1:14051>)
    .fluidInputs(<liquid:sulfuric_acid_solution>*1000)
    .fluidOutputs(<liquid:water>*50,<liquid:hydrogen>*50,<liquid:chlorine>*100,<liquid:sulfuric_acid>*500,<liquid:oxygen>*100,<liquid:hydrogen_peroxide>*200)
    .duration(200)
    .EUt(8)
    .buildAndRegister();

            
electrolytic_cell.recipeMap.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:ethoxylated_nonylphenol>*1000,<liquid:water>*1000)
    .fluidOutputs(<liquid:nonylphenol>*800,<liquid:ethylene_glycol>*800,<liquid:nonoxynol-9_solution>*200,<liquid:hydrogen>*200)
    .duration(299)
    .EUt(100)
    .buildAndRegister();