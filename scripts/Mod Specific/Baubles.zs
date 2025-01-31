#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.ctintegration.baubles.IBaubleInventory;
import crafttweaker.player.IPlayer;
import crafttweaker.potions.IPotionEffect;





var FireMask = VanillaFactory.createBaubleItem("fire_mask");
FireMask.rarity = "rare";
FireMask.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("effect @s fire_resistance 544444 1 true");
    }
};
FireMask.onUnequipped  = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("effect @s fire_resistance 0 0");
    }
};
FireMask.baubleType = "TRINKET";
FireMask.register();