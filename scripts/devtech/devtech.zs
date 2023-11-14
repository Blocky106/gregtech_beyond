#loader gregtech





import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.devtech.unification.IFlag;
import mods.devtech.unification.MetaItem;
import mods.devtech.unification.IOrePrefix;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import mods.devtech.unification.IMaterialPredicate;
import mods.devtech.unification.IMaterialIconType;
import mods.gregtech.material.Material;

IFlag.registerFlag("seed_crystal", 210);

RegisterMachine.CreateTank(4329, "tritanium.tank", MaterialCasting.toSolid(<material:tritanium>), 240000, 12, 12);


var seedCrystal = IOrePrefix.createOrePrefix("seed_crystal", "seed_crystal", 0, IMaterialPredicate.isIngot & IMaterialPredicate.hasFlag("seed_crystal"));

MetaItem.createItems("seed_crystal", seedCrystal);