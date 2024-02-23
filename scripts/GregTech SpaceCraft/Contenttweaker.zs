#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Hand;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.Player;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;


var propellant_tank = VanillaFactory.createItem("propellant_tank");
propellant_tank.register();

var fuel_tank = VanillaFactory.createItem("fuel_tank");
fuel_tank.register();

var oxidizer_tank = VanillaFactory.createItem("oxidizer_tank");
oxidizer_tank.register();

var air_handling_unit = VanillaFactory.createItem("air_handling_unit");
air_handling_unit.register();

var rocket_combustion_chamber = VanillaFactory.createItem("rocket_combustion_chamber");
rocket_combustion_chamber.register();

var injector = VanillaFactory.createItem("injector");
injector.register();

var nozzle = VanillaFactory.createItem("nozzle");
nozzle.register();

var t1_rocket_engine = VanillaFactory.createBlock("t1_rocket_engine", <blockmaterial:rock>);
t1_rocket_engine.setBlockHardness(12.0);
t1_rocket_engine.setBlockResistance(10.0);
t1_rocket_engine.setToolClass("pickaxe");
t1_rocket_engine.setToolLevel(1);
t1_rocket_engine.setBlockSoundType(<soundtype:metal>);
t1_rocket_engine.register();

var rocket_thruster = VanillaFactory.createBlock("rocket_thruster", <blockmaterial:rock>);
rocket_thruster.setBlockHardness(12.0);
rocket_thruster.setBlockResistance(10.0);
rocket_thruster.setToolClass("pickaxe");
rocket_thruster.setToolLevel(1);
rocket_thruster.setBlockSoundType(<soundtype:metal>);
rocket_thruster.register();

var guidance_system = VanillaFactory.createBlock("guidance_system", <blockmaterial:rock>);
guidance_system.setBlockHardness(12.0);
guidance_system.setBlockResistance(10.0);
guidance_system.setToolClass("pickaxe");
guidance_system.setToolLevel(1);
guidance_system.setBlockSoundType(<soundtype:metal>);
guidance_system.register();

var stabilization_fin = VanillaFactory.createBlock("stabilization_fin", <blockmaterial:rock>);
stabilization_fin.setBlockHardness(12.0);
stabilization_fin.setBlockResistance(10.0);
stabilization_fin.setToolClass("pickaxe");
stabilization_fin.setToolLevel(1);
stabilization_fin.setBlockSoundType(<soundtype:metal>);
stabilization_fin.register();

var protective_outer_wall = VanillaFactory.createBlock("protective_outer_wall", <blockmaterial:rock>);
protective_outer_wall.setBlockHardness(12.0);
protective_outer_wall.setBlockResistance(10.0);
protective_outer_wall.setToolClass("pickaxe");
protective_outer_wall.setToolLevel(1);
protective_outer_wall.setBlockSoundType(<soundtype:metal>);
protective_outer_wall.register();

var rocket_equipment = VanillaFactory.createBlock("rocket_equipment", <blockmaterial:rock>);
rocket_equipment.setBlockHardness(12.0);
rocket_equipment.setBlockResistance(10.0);
rocket_equipment.setToolClass("pickaxe");
rocket_equipment.setToolLevel(1);
rocket_equipment.setBlockSoundType(<soundtype:metal>);
rocket_equipment.register();



