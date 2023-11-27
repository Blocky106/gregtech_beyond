#loader gregtech

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


var microscope_overlay = OverlayRenderer.newOverlay("machines/microscope_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);
var roaster_overlay = OverlayRenderer.newOverlay("machines/roaster_overlay", OverlayFace.FRONT, OverlayFace.SIDE, OverlayFace.TOP);



RegisterMachine.CreateSimpleMachine(1416, "vacuum_ejection_chamber.lv",vacuum_ejection_chamber, Overlays.get("chemical_bath"), 1);
RegisterMachine.CreateSimpleMachine(1417, "vacuum_ejection_chamber.mv",vacuum_ejection_chamber, Overlays.get("chemical_bath"), 2);

RegisterMachine.CreateSimpleMachine(1404, "componentassembler.iv", componentassembler, Overlays.get("assembler"),5);
RegisterMachine.CreateSimpleMachine(1405, "componentassembler.luv", componentassembler, Overlays.get("assembler"), 6);
RegisterMachine.CreateSimpleMachine(1406, "componentassembler.zpm", componentassembler, Overlays.get("assembler"), 7);

RegisterMachine.CreateSimpleMachine(1401, "fisher.iv",fisher, Overlays.get("extractor"), 5);
RegisterMachine.CreateSimpleMachine(1402, "fisher.luv",fisher, Overlays.get("extractor"), 6);
RegisterMachine.CreateSimpleMachine(1400, "fisher.ev",fisher, Overlays.get("extractor"), 4);
RegisterMachine.CreateSimpleMachine(1403, "fisher.zpm",fisher, Overlays.get("extractor"), 7);

RegisterMachine.CreateSimpleMachine(1418, "fluid_compressor.lv",fluid_compressor, Overlays.get("extractor"), 1);
RegisterMachine.CreateSimpleMachine(1419, "fluid_compressor.mv",fluid_compressor, Overlays.get("extractor"), 2);
RegisterMachine.CreateSimpleMachine(1420, "fluid_compressor.hv",fluid_compressor, Overlays.get("extractor"), 3);

RegisterMachine.CreateSimpleMachine(1424, "microscope.hv",microscope, microscope_overlay, 3);
RegisterMachine.CreateSimpleMachine(1425, "microscope.ev",microscope, microscope_overlay, 4);
RegisterMachine.CreateSimpleMachine(1426, "microscope.iv",microscope, microscope_overlay, 5);

RegisterMachine.CreateSimpleMachine(1431, "roaster.hv",roaster, roaster_overlay, 3);
RegisterMachine.CreateSimpleMachine(1432, "roaster.ev",roaster, roaster_overlay, 4);
RegisterMachine.CreateSimpleMachine(1433, "roaster.iv",roaster, roaster_overlay, 5);

RegisterMachine.CreateSimpleMachine(1409, "rock_crusher",rock_crusher, Overlays.get("forge_hammer"), 6);


RegisterMachine.CreateSimpleMachine(1407, "scanner.iv",scanner, Overlays.get("assembler"), 5);
RegisterMachine.CreateSimpleMachine(1408, "scanner.luv",scanner, Overlays.get("assembler"), 6);






