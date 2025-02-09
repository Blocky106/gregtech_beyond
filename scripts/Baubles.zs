#loader contenttweaker

import mods.ctintegration.baubles.IBaubleInventory;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var FireMask = VanillaFactory.createBaubleItem("fire_mask");
FireMask.rarity = "rare";
FireMask.baubleType = "TRINKET";
FireMask.register();
