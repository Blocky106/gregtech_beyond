import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;



RecipeBuilder.newBuilder("pneumatic2", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<pneumaticcraft:empty_pcb>)    .addItemOutput(<pneumaticcraft:unassembled_pcb>)    .build();
RecipeBuilder.newBuilder("pneumatic4", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32601>*8)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic5", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32545>*2)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic6", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32537>*4)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic7", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32405>*64)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)   .build();
RecipeBuilder.newBuilder("pneumatic8", "pneumatic", 80)   .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32542>*2)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic9", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32497>*16)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic10", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32406>*64)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic11", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32604>*8)   .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:transistor>)    .build();
RecipeBuilder.newBuilder("pneumatic12", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32534>*4)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)    .addItemOutput(<pneumaticcraft:capacitor>)    .build();
RecipeBuilder.newBuilder("pneumatic1", "pneumatic", 80)    .addEnergyPerTickInput(51280000)    .addItemInput(<gtadditions:ga_meta_item:32494>*16)    .addItemInput(<pneumaticcraft:ingot_iron_compressed>*4)   .addItemOutput(<pneumaticcraft:capacitor>)    .build();



RecipeBuilder.newBuilder("mf1", "mf", 200)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenfullerenesuperconductor>*1000) .addFluidInput(<liquid:proto_adamantium>*2000) .addFluidInput(<liquid:metastable_oganesson>*2000) .addFluidInput(<liquid:moltenborocarbide>*3000) .addFluidOutput(<liquid:uiv_superconductor_base>*3500) .build();
RecipeBuilder.newBuilder("mf2", "mf", 400)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:superheavy_h_alloy>*2000) .addFluidInput(<liquid:moltenchargedcesiumceriumcobaltindium>*3000) .addFluidInput(<liquid:black_titanium>*3000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*6000) .addFluidOutput(<liquid:umv_superconductor_base>*7000) .build();
RecipeBuilder.newBuilder("mf3", "mf", 800)  .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenlegendarium>*5000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*12000) .addFluidInput(<liquid:moltenactiniumsuperhydride>*5000) .addFluidInput(<liquid:moltenlanthanumfullerenenanotubes>*4000) .addFluidInput(<liquid:neutronium>*4000) .addFluidOutput(<liquid:uxv_superconductor_base>*15000) .build();
RecipeBuilder.newBuilder("mf4", "mf", 2000) .addEnergyPerTickInput(1000000) .addFluidInput(<liquid:moltenlegendarium>*4000) .addFluidInput(<liquid:cosmic_neutronium>*2000) .addFluidInput(<liquid:moltenrheniumhassiumthalliumisophtaloylbisdiethylthiourea>*24000) .addFluidInput(<liquid:periodicium>*12000) .addFluidInput(<liquid:pikyonium>*3000) .addFluidInput(<liquid:ultimate>*3500) .addFluidOutput(<liquid:maxsuperconductorbase>*10000) .build();
RecipeBuilder.newBuilder("transformer1", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dye:4>) .addItemOutput(<gregtech:meta_item_1:8157>) .build();
RecipeBuilder.newBuilder("transformer2", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<ore:sand>) .addItemOutput(<minecraft:gravel>) .build();
RecipeBuilder.newBuilder("transformer3", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<contenttweaker:crystaltinebaseingot>) .addItemOutput(<extendedcrafting:material:24>) .build();
RecipeBuilder.newBuilder("transformer5", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<ore:woolYellow>) .addItemOutput(<minecraft:glowstone>) .build();
RecipeBuilder.newBuilder("transformer6", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:netherrack>) .addItemOutput(<minecraft:gunpowder>*2) .build();
RecipeBuilder.newBuilder("transformer7", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dye:4>) .addItemOutput(<gregtech:meta_item_1:8157>) .build();
RecipeBuilder.newBuilder("transformer8", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:2072>) .addItemOutput(<gregtech:meta_item_1:2016>) .build();
RecipeBuilder.newBuilder("transformer9", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10071>) .addItemOutput(<gregtech:meta_item_1:10062>) .build();
RecipeBuilder.newBuilder("transformer10", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:quartz>) .addItemOutput(<gregtech:meta_item_1:8202>) .build();
RecipeBuilder.newBuilder("transformer11", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10018>) .addItemOutput(<gregtech:meta_item_1:10044>) .build();
RecipeBuilder.newBuilder("transformer12", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:wool:14>) .addItemOutput(<minecraft:redstone_block>) .build();
RecipeBuilder.newBuilder("transformer13", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:redstone>) .addItemOutput(<gregtech:meta_item_1:8154>) .build();
RecipeBuilder.newBuilder("transformer14", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:wool:11>) .addItemOutput(<minecraft:lapis_block>) .build();
RecipeBuilder.newBuilder("transformer15", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10062>) .addItemOutput(<minecraft:gold_ingot>) .build();
RecipeBuilder.newBuilder("transformer16", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<gregtech:meta_item_1:10072>) .addItemOutput(<gregtech:meta_item_1:10016>) .build();
RecipeBuilder.newBuilder("transformer17", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<minecraft:dirt:2>) .addItemOutput(<minecraft:clay>) .build();
RecipeBuilder.newBuilder("transformer18", "transformer", 20) .addEnergyPerTickInput(512) .addItemInput(<contenttweaker:instablematter>) .addFluidInput(<liquid:atomicseperationcatalyst>*144) .addItemOutput(<contenttweaker:stablematter>) .build();




















