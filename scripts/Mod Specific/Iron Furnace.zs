




recipes.addShaped(<ironfurnaces:gold_furnace_idle>, [
	[<ore:screwSteel>, <ore:plateGold>, <ore:screwSteel>], 
	[<ore:plateGold>, <ironfurnaces:iron_furnace_idle>, <ore:plateGold>], 
	[<ore:screwSteel>, <ore:plateGold>, <ore:screwSteel>]
]);

recipes.addShaped(<ironfurnaces:iron_furnace_idle>, [
	[null, <ore:plateIron>, null], 
	[<ore:plateIron>, <ore:craftingFurnace>, <ore:plateIron>], 
	[null, <ore:plateIron>, null]
]);

recipes.addShaped(<ironfurnaces:diamond_furnace_idle>, [
	[<ore:screwSteel>, <ore:plateDiamond>, <ore:screwSteel>], 
	[<ore:plateDiamond>, <ironfurnaces:gold_furnace_idle>, <ore:plateDiamond>], 
	[<ore:screwSteel>, <ore:plateDiamond>, <ore:screwSteel>]
]);

recipes.addShaped(<ironfurnaces:glass_furnace_idle>, [
	[<ore:screwAluminium>, <ore:plateBorosilicateGlass>, <ore:screwAluminium>], 
	[<ore:plateBorosilicateGlass>, <ironfurnaces:diamond_furnace_idle>, <ore:plateBorosilicateGlass>], 
	[<ore:screwAluminium>, <ore:plateBorosilicateGlass>, <ore:screwAluminium>]
]);

recipes.addShaped(<ironfurnaces:obsidian_furnace_idle>, [
	[<ore:screwAluminium>, <tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:screwAluminium>], 
	[<tconstruct:large_plate>.withTag({Material: "obsidian"}), <ironfurnaces:glass_furnace_idle>, <tconstruct:large_plate>.withTag({Material: "obsidian"})], 
	[<ore:screwAluminium>, <tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:screwAluminium>]
]);

