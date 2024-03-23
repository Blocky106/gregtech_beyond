#loader gregtech
import mods.devtech.unification.MetaItem;
import mods.devtech.unification.IOrePrefix;
import mods.devtech.unification.IMaterialIconType;
import mods.devtech.unification.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.material.MaterialCasting;
import mods.devtech.unification.IFlag;

IFlag.registerFlag("TEST", 210);

<material:iron>.addFlags("TEST");

var testOrePrefix = IOrePrefix.createOrePrefix("test", "test", 0, IMaterialPredicate.isIngot & IMaterialPredicate.hasFlag("TEST"));

/* can fit up to 32 IOrePrefix's in here, like MetaItem.createItems("test", testOrePrefix, giantGearOrePrefix, giantDustPileOrePrefix, ...);
the textures/models go into a resource loader/pack that has the directories.
	textures: gregtech/textures/items/material_sets/%MATERIAL_ICON_TYPE%
	models: gregtech/models/item/material_sets/%MATERIAL_ICON_TYPE%
	There an example of this in this directory.
*/
MetaItem.createItems("test", testOrePrefix);