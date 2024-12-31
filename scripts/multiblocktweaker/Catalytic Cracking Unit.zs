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


var loc = "catalytic_cracking_unit";
var meta = 10116;
val catalytic_cracking_unit = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " AAA ",
                    " AAA ",
                    " AAA ",
                    " P P ",
                    " P P ",
                    " P P ",
                    " P P ",
                    "CP PC",
                    " AAA ",
                    " AAA ",
                    " AAA ",
                    "CCSCC")
                .aisle(
                    "CCCCC",
                    " AAA ",
                    " A A ",
                    " AAA ",
                    "     ",
                    "     ",
                    "     ",
                    "     ",
                    "C   C",
                    " AAA ",
                    " F F ",
                    " AAA ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    " TTT ",
                    " TTT ",
                    " TTT ",
                    "  R  ",
                    "  R  ",
                    "  R  ",
                    "  R  ",
                    "C R C",
                    " AAA ",
                    " AAA ",
                    " AAA ",
                    "CCCCC")
                .aisle(
                    "CCCCC",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "C   C",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .setAmountAtLeast('C', 135)
                .whereOr("C", 
                <metastate:gregtech:metal_casing:5>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("A", <metastate:gregtech:metal_casing:4>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("R", <metastate:gregtech:boiler_casing>)
                .where("T", <metastate:gregtech:boiler_firebox_casing>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("CCCCCCCCCCCCC","C~~~C~~~~~~~C","C~~~C~~~~~~~C","C~~~C~~~~~~~C","CCCCCCCCCCCCC")
                .aisle("CCCCCCCCCCCCC","CAAAPPPPPAAAC","CAFA~~~~~AAAC","CAAA~~~~~TTTC","CCCCC~~~~~~~C")
                .aisle("CCCCCCCCCCCCC","SAAA~~~~~AAAE","CA~A~~~~~A~AC","CAAARRRRRRRTC","CCCCC~~~~~~~C")
                .aisle("CCCCCCCCCCCCC","CAAAPPPPPAAAC","CAFA~~~~~AAAC","CAAA~~~~~TTTC","CCCCC~~~~~~~C")
                .aisle("CCCCCCCCCCCCC","C~~~C~~~~~~~C","C~~~C~~~~~~~C","C~~~C~~~~~~~C","CCCCCCCCCCCCC")
                .where("F", <metastate:gregtech:boiler_firebox_casing:1>)
                .where("A", <metastate:gregtech:metal_casing:4>)
                .where("C", <metastate:gregtech:metal_casing:5>)
                .where("P", <metastate:gregtech:boiler_casing:1>)
                .where("R", <metastate:gregtech:boiler_casing>)
                .where("T", <metastate:gregtech:boiler_firebox_casing>)
                .where("S", IBlockInfo.controller(loc))
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[4], IFacing.east())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(2)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(1)
                        .build())
.withZoom(0.5f)
.buildAndRegister() as Multiblock;


#Oil Processing Hydro and Steam treating

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:kerosene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydro_cracked_kerosene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:kerosene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steam_cracked_kerosene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:ethane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_ethane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:ethylene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_ethylene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:propene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_propene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:propane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_propane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:butane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_butane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:light_fuel>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_light_fuel>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:naphtha>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_naphtha>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:heavy_fuel>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_heavy_fuel>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:butadiene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_butadiene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:gas>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_gas>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:hydrogen>*2000,<liquid:butene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:hydrocracked_butene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:ethane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_ethane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:ethylene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_ethylene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:propene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_propene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:propane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_propane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:butane>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_butane>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:light_fuel>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_light_fuel>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:naphtha>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_naphtha>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:heavy_fuel>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:cracked_heavy_fuel>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:butadiene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_butadiene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:gas>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_gas>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:butene>*1000)
    .inputs(<contenttweaker:crackingcatalyst>)
    .fluidOutputs(<liquid:steamcracked_butene>*1000)
    .outputs(<contenttweaker:usedcrackingcatalyst>)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Nuclear Catalytic Treating 

#Uranium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.uranium>*1000)
    .notConsumable(<gregtech:meta_item_1:2750>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.uranium>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.uranium235>*1000)
    .notConsumable(<gregtech:meta_item_1:2750>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.uranium235>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.uranium_radioactive234>*1000)
    .notConsumable(<gregtech:meta_item_1:2750>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.uranium_radioactive234>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Mendelevium  

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.mendelevium263>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.mendelevium263>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.mendelevium259>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.mendelevium259>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.mendelevium261>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.mendelevium261>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Curium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.curium247>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.curium247>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.curium250>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.curium250>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.curium246>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.curium246>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Neptunium

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.neptunium239>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.neptunium239>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.neptunium237>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.neptunium237>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.neptunium235>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.neptunium235>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Plutonium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.plutonium_radioactive240>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.plutonium_radioactive240>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.plutonium>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.plutonium>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.plutonium241>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.plutonium241>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Fermium

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.fermium262>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.fermium262>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.fermium259>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.fermium259>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.fermium258>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.fermium258>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Einsteinium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.einsteinium255>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.einsteinium255>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.einsteinium253>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.einsteinium253>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.einsteinium257>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.einsteinium257>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Berkelium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.berkelium251>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.berkelium251>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.berkelium247>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.berkelium247>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.berkelium249>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.berkelium249>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Americium  

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.americium243>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.americium243>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.americium241>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.americium241>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.americium245>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.americium245>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Californium   

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.californium252>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.californium252>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.californium253>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.californium253>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:steam>*2000,<liquid:hexafluoride.californium256>*1000)
    .inputs(<contenttweaker:lafeaso1_catalyst>)
    .outputs(<contenttweaker:used_lafeaso1_catalyst>)
    .fluidOutputs(<liquid:hexafluoride_steam_cracked.californium256>*1000)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Naquadah (Fluorine)

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*400,<liquid:medium_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:fl_cracked_medium_naquadah>*1400)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*200,<liquid:light_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:fl_cracked_light_naquadah>*1200)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:fluorine>*600,<liquid:heavy_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:fl_cracked_heavy_naquadah>*1600)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Naquadah (Radon)

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:radon>*400,<liquid:medium_e_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:rn_cracked_medium_e_naquadah>*1400)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:radon>*200,<liquid:light_e_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:rn_cracked_light_e_naquadah>*1200)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:radon>*600,<liquid:heavy_e_naquadah>*1000)
    .notConsumable(<gtadditions:ga_dust:32142>)
    .fluidOutputs(<liquid:rn_cracked_heavy_e_naquadah>*1600)
    .duration(200)
    .EUt(100)
    .buildAndRegister();

#Thorium 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:sulfuricthoriumsolution>*1000,<liquid:hydrogen>*1000)
    .notConsumable(<gregtech:meta_item_1:2291>)
    .fluidOutputs(<liquid:hydrocrackedthoriumsolution>*1000)
    .duration(777)
    .EUt(7707)
    .buildAndRegister();

#Osmium

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidInputs(<liquid:ruthenium_tetroxide_solution>*1000,<liquid:steam>*1000)
    .notConsumable(<gtadditions:ga_dust:205>)
    .fluidOutputs(<liquid:hot_ruthenium_tetroxide_solution>*2000)
    .duration(777)
    .EUt(7707)
    .buildAndRegister();

#Formaldehyde 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:formaldehyde>*120,<liquid:dimethylamine>*160)
    .notConsumable(<gregtech:meta_item_1:2062>)
    .fluidInputs(<liquid:hydrogen>*250,<liquid:dimethylformamide>*750)
    .duration(777)
    .EUt(7707)
    .buildAndRegister();

#Cyclopentene 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .fluidOutputs(<liquid:cyclopentadiene>*100,<liquid:cyclopentene>*100)
    .notConsumable(<gtadditions:ga_dust:32240>)
    .fluidInputs(<liquid:hydrogen>*1000,<liquid:ferrocenewaste>*1000)
    .duration(777)
    .EUt(7707)
    .buildAndRegister();

#Radox 

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:72>)
    .notConsumable(<gtadditions:ga_dust:328>)
    .fluidInputs(<liquid:plasma.iron>*25,<liquid:lightradox>*100)
    .fluidOutputs(<liquid:crackedlightradox>*100)
    .duration(800)
    .EUt(524000)
    .buildAndRegister();

catalytic_cracking_unit.recipeMap.recipeBuilder()
    .notConsumable(<gtadditions:ga_dust:72>)
    .notConsumable(<gtadditions:ga_dust:328>)
    .fluidInputs(<liquid:plasma.nickel>*25,<liquid:heavyradox>*100)
    .fluidOutputs(<liquid:crackedheavyradox>*100)
    .duration(800)
    .EUt(524000)
    .buildAndRegister();