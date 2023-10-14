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

RecipeBuilder.newBuilder("polytank1", "polytank", 200)   .addEnergyPerTickInput(100)    .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .addFluidInput(<liquid:ethylene>*144)     .addFluidOutput(<liquid:plastic>*144)    .build();
RecipeBuilder.newBuilder("polytank2", "polytank", 200)   .addEnergyPerTickInput(200)    .addItemInput(<gregtech:meta_item_1:2596>).setChance(0)    .addFluidInput(<liquid:ethylene>*144)  .addFluidOutput(<liquid:plastic>*288)    .build();
RecipeBuilder.newBuilder("polytank3", "polytank", 200)   .addEnergyPerTickInput(400)    .addItemInput(<gregtech:meta_item_1:2597>).setChance(0)    .addFluidInput(<liquid:ethylene>*144)  .addFluidOutput(<liquid:plastic>*432)    .build();
RecipeBuilder.newBuilder("polytank4", "polytank", 200)   .addEnergyPerTickInput(800)    .addItemInput(<gregtech:meta_item_1:2598>).setChance(0)    .addFluidInput(<liquid:ethylene>*144)  .addFluidOutput(<liquid:plastic>*576)    .build();

RecipeBuilder.newBuilder("polytank5", "polytank", 400)   .addEnergyPerTickInput(1000)    .addFluidInput(<liquid:polybenzimidazoleprepolymerfoam>*14000) .addFluidOutput(<liquid:impurepolybenzimidazolesolution>*7000)  .build();

RecipeBuilder.newBuilder("polytank6", "polytank", 200)   .addEnergyPerTickInput(100)    .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .addFluidInput(<liquid:tetrafluoroethylene>*144)     .addFluidOutput(<liquid:polytetrafluoroethylene>*144)    .build();
RecipeBuilder.newBuilder("polytank7", "polytank", 200)   .addEnergyPerTickInput(200)    .addItemInput(<gregtech:meta_item_1:2596>).setChance(0)    .addFluidInput(<liquid:tetrafluoroethylene>*144)  .addFluidOutput(<liquid:polytetrafluoroethylene>*288)    .build();
RecipeBuilder.newBuilder("polytank8", "polytank", 200)   .addEnergyPerTickInput(400)    .addItemInput(<gregtech:meta_item_1:2597>).setChance(0)    .addFluidInput(<liquid:tetrafluoroethylene>*144)  .addFluidOutput(<liquid:polytetrafluoroethylene>*432)    .build();
RecipeBuilder.newBuilder("polytank9", "polytank", 200)   .addEnergyPerTickInput(800)    .addItemInput(<gregtech:meta_item_1:2598>).setChance(0)    .addFluidInput(<liquid:tetrafluoroethylene>*144)  .addFluidOutput(<liquid:polytetrafluoroethylene>*576)    .build();

RecipeBuilder.newBuilder("polytank10", "polytank", 200)   .addEnergyPerTickInput(100)    .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .addFluidInput(<liquid:styrene>*144)     .addFluidOutput(<liquid:polystyrene>*144)    .build();
RecipeBuilder.newBuilder("polytank11", "polytank", 200)   .addEnergyPerTickInput(200)    .addItemInput(<gregtech:meta_item_1:2596>).setChance(0)    .addFluidInput(<liquid:styrene>*144)  .addFluidOutput(<liquid:polystyrene>*288)    .build();
RecipeBuilder.newBuilder("polytank12", "polytank", 200)   .addEnergyPerTickInput(400)    .addItemInput(<gregtech:meta_item_1:2597>).setChance(0)    .addFluidInput(<liquid:styrene>*144)  .addFluidOutput(<liquid:polystyrene>*432)    .build();
RecipeBuilder.newBuilder("polytank13", "polytank", 200)   .addEnergyPerTickInput(800)    .addItemInput(<gregtech:meta_item_1:2598>).setChance(0)    .addFluidInput(<liquid:styrene>*144)  .addFluidOutput(<liquid:polystyrene>*576)    .build();

RecipeBuilder.newBuilder("polytank14", "polytank", 200)   .addEnergyPerTickInput(100)    .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .addFluidInput(<liquid:vinyl_chloride>*144)     .addFluidOutput(<liquid:polyvinyl_chloride>*144)    .build();
RecipeBuilder.newBuilder("polytank15", "polytank", 200)   .addEnergyPerTickInput(200)    .addItemInput(<gregtech:meta_item_1:2596>).setChance(0)    .addFluidInput(<liquid:vinyl_chloride>*144)  .addFluidOutput(<liquid:polyvinyl_chloride>*288)    .build();
RecipeBuilder.newBuilder("polytank16", "polytank", 200)   .addEnergyPerTickInput(400)    .addItemInput(<gregtech:meta_item_1:2597>).setChance(0)    .addFluidInput(<liquid:vinyl_chloride>*144)  .addFluidOutput(<liquid:polyvinyl_chloride>*432)    .build();
RecipeBuilder.newBuilder("polytank17", "polytank", 200)   .addEnergyPerTickInput(800)    .addItemInput(<gregtech:meta_item_1:2598>).setChance(0)    .addFluidInput(<liquid:vinyl_chloride>*144)  .addFluidOutput(<liquid:polyvinyl_chloride>*576)    .build();

RecipeBuilder.newBuilder("polytank18", "polytank", 200)   .addEnergyPerTickInput(100)    .addItemInput(<gregtech:meta_item_1:32766>.withTag({Configuration: 1})).setChance(0)    .addFluidInput(<liquid:vinyl_acetate>*144)     .addFluidOutput(<liquid:polyvinyl_acetate>*144)    .build();
RecipeBuilder.newBuilder("polytank19", "polytank", 200)   .addEnergyPerTickInput(200)    .addItemInput(<gregtech:meta_item_1:2596>).setChance(0)    .addFluidInput(<liquid:vinyl_acetate>*144)  .addFluidOutput(<liquid:polyvinyl_acetate>*288)    .build();
RecipeBuilder.newBuilder("polytank20", "polytank", 200)   .addEnergyPerTickInput(400)    .addItemInput(<gregtech:meta_item_1:2597>).setChance(0)    .addFluidInput(<liquid:vinyl_acetate>*144)  .addFluidOutput(<liquid:polyvinyl_acetate>*432)    .build();
RecipeBuilder.newBuilder("polytank21", "polytank", 200)   .addEnergyPerTickInput(800)    .addItemInput(<gregtech:meta_item_1:2598>).setChance(0)    .addFluidInput(<liquid:vinyl_acetate>*144)  .addFluidOutput(<liquid:polyvinyl_acetate>*576)    .build();








