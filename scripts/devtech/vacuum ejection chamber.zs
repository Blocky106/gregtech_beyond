import mods.devtech.machines.RegisterMachine;
import mods.devtech.machines.Overlays;
import mods.devtech.IRecipeMap;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import mods.gregtech.material.IngotMaterial;
import mods.gregtech.material.SolidMaterial;
import mods.gregtech.material.DustMaterial;
import mods.gregtech.material.FluidMaterial;
import mods.gregtech.material.GemMaterial;
import mods.gregtech.material.RoughSolidMaterial;
import mods.devtech.OverlayFace;
import mods.devtech.OverlayRenderer;
import mods.gtadditions.recipe.GARecipeMaps;


var vacuum_ejection_chamber = IRecipeMap.recipeMapBuilder("vacuum_ejection_chamber",1,0,1,0,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("crystal_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1416, "vacuum_ejection_chamber.lv",vacuum_ejection_chamber, Overlays.get("chemical_bath"), 1);
RegisterMachine.CreateSimpleMachine(1417, "vacuum_ejection_chamber.mv",vacuum_ejection_chamber, Overlays.get("chemical_bath"), 2);

vacuum_ejection_chamber.recipeBuilder()
    .inputs(<gtadditions:ga_dust:32049>)
    .outputs(<contenttweaker:monocrystalline_seed_crystal>)
    .EUt(12)
    .duration(200)
    .buildAndRegister();






