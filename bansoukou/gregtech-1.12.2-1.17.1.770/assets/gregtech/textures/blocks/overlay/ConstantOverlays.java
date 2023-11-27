package com.zook.devtech.gregtech.machines.constants;

import com.zook.devtech.gregtech.machines.IOverlayRenderer;
import com.zook.devtech.gregtech.machines.impl.MCOverlayRenderer;
import crafttweaker.annotations.ZenRegister;
import gregtech.api.render.Textures;
import net.minecraftforge.common.util.EnumHelper;
import stanhebben.zenscript.annotations.ZenClass;
import stanhebben.zenscript.annotations.ZenMethod;
import stanhebben.zenscript.annotations.ZenProperty;

import java.util.Objects;

@ZenClass("mods.devtech.machines.Overlays")
@ZenRegister
public enum ConstantOverlays {
    @ZenProperty coal_boiler(new MCOverlayRenderer(Textures.COAL_BOILER_OVERLAY)),
    @ZenProperty microscope(new MCOverlayRenderer(Textures.MICROSCOPE_OVERLAY)),
    @ZenProperty lava_boiler(new MCOverlayRenderer(Textures.LAVA_BOILER_OVERLAY)),
    @ZenProperty solar_boiler(new MCOverlayRenderer(Textures.SOLAR_BOILER_OVERLAY)),
    @ZenProperty primitive_blast_furnace(new MCOverlayRenderer(Textures.PRIMITIVE_BLAST_FURNACE_OVERLAY)),
    @ZenProperty coke_oven(new MCOverlayRenderer(Textures.COKE_OVEN_OVERLAY)),
    @ZenProperty alloy_smelter(new MCOverlayRenderer(Textures.ALLOY_SMELTER_OVERLAY)),
    @ZenProperty furnace(new MCOverlayRenderer(Textures.FURNACE_OVERLAY)),
    @ZenProperty electric_furnace(new MCOverlayRenderer(Textures.ELECTRIC_FURNACE_OVERLAY)),
    @ZenProperty extractor(new MCOverlayRenderer(Textures.EXTRACTOR_OVERLAY)),
    @ZenProperty compressor(new MCOverlayRenderer(Textures.COMPRESSOR_OVERLAY)),
    @ZenProperty hammer(new MCOverlayRenderer(Textures.HAMMER_OVERLAY)),
    @ZenProperty macerator(new MCOverlayRenderer(Textures.MACERATOR_OVERLAY)),
    @ZenProperty amplifab(new MCOverlayRenderer(Textures.AMPLIFAB_OVERLAY)),
    @ZenProperty arc_furnace(new MCOverlayRenderer(Textures.ARC_FURNACE_OVERLAY)),
    @ZenProperty assembler(new MCOverlayRenderer(Textures.ASSEMBLER_OVERLAY)),
    @ZenProperty autoclave(new MCOverlayRenderer(Textures.AUTOCLAVE_OVERLAY)),
    @ZenProperty bender(new MCOverlayRenderer(Textures.BENDER_OVERLAY)),
    @ZenProperty brewery(new MCOverlayRenderer(Textures.BREWERY_OVERLAY)),
    @ZenProperty canner(new MCOverlayRenderer(Textures.CANNER_OVERLAY)),
    @ZenProperty centrifuge(new MCOverlayRenderer(Textures.CENTRIFUGE_OVERLAY)),
    @ZenProperty chemical_bath(new MCOverlayRenderer(Textures.CHEMICAL_BATH_OVERLAY)),
    @ZenProperty chemical_reactor(new MCOverlayRenderer(Textures.CHEMICAL_REACTOR_OVERLAY)),
    @ZenProperty cutter(new MCOverlayRenderer(Textures.CUTTER_OVERLAY)),
    @ZenProperty distillery(new MCOverlayRenderer(Textures.DISTILLERY_OVERLAY)),
    @ZenProperty electrolyzer(new MCOverlayRenderer(Textures.ELECTROLYZER_OVERLAY)),
    @ZenProperty electromagnetic_separator(new MCOverlayRenderer(Textures.ELECTROMAGNETIC_SEPARATOR_OVERLAY)),
    @ZenProperty extruder(new MCOverlayRenderer(Textures.EXTRUDER_OVERLAY)),
    @ZenProperty fermenter(new MCOverlayRenderer(Textures.FERMENTER_OVERLAY)),
    @ZenProperty fluid_canner(new MCOverlayRenderer(Textures.FLUID_CANNER_OVERLAY)),
    @ZenProperty fluid_extractor(new MCOverlayRenderer(Textures.FLUID_EXTRACTOR_OVERLAY)),
    @ZenProperty fluid_heater(new MCOverlayRenderer(Textures.FLUID_HEATER_OVERLAY)),
    @ZenProperty fluid_solidifier(new MCOverlayRenderer(Textures.FLUID_SOLIDIFIER_OVERLAY)),
    @ZenProperty forge_hammer(new MCOverlayRenderer(Textures.FORGE_HAMMER_OVERLAY)),
    @ZenProperty forming_press(new MCOverlayRenderer(Textures.FORMING_PRESS_OVERLAY)),
    @ZenProperty lathe(new MCOverlayRenderer(Textures.LATHE_OVERLAY)),
    @ZenProperty microwave(new MCOverlayRenderer(Textures.MICROWAVE_OVERLAY)),
    @ZenProperty mixer(new MCOverlayRenderer(Textures.MIXER_OVERLAY)),
    @ZenProperty ore_washer(new MCOverlayRenderer(Textures.ORE_WASHER_OVERLAY)),
    @ZenProperty packer(new MCOverlayRenderer(Textures.PACKER_OVERLAY)),
    @ZenProperty unpacker(new MCOverlayRenderer(Textures.UNPACKER_OVERLAY)),
    @ZenProperty plasma_arc_furnace(new MCOverlayRenderer(Textures.PLASMA_ARC_FURNACE_OVERLAY)),
    @ZenProperty polarizer(new MCOverlayRenderer(Textures.POLARIZER_OVERLAY)),
    @ZenProperty laser_engraver(new MCOverlayRenderer(Textures.LASER_ENGRAVER_OVERLAY)),
    @ZenProperty sifter(new MCOverlayRenderer(Textures.SIFTER_OVERLAY)),
    @ZenProperty thermal_centrifuge(new MCOverlayRenderer(Textures.THERMAL_CENTRIFUGE_OVERLAY)),
    @ZenProperty wiremill(new MCOverlayRenderer(Textures.WIREMILL_OVERLAY)),
    @ZenProperty diesel_generator(new MCOverlayRenderer(Textures.DIESEL_GENERATOR_OVERLAY)),
    @ZenProperty gas_turbine(new MCOverlayRenderer(Textures.GAS_TURBINE_OVERLAY)),
    @ZenProperty steam_turbine(new MCOverlayRenderer(Textures.STEAM_TURBINE_OVERLAY));
    private final IOverlayRenderer inner;
    ConstantOverlays(IOverlayRenderer renderer) {
        inner = renderer;
    }
    public IOverlayRenderer getInternal() {
        return inner;
    }
    @ZenMethod
    public static IOverlayRenderer get(String name) {
        return ConstantOverlays.valueOf(name).getInternal();
    }
}