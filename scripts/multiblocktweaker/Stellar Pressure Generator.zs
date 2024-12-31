import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


var loc = "stellar_pressure_generator";
var meta = 10114;
val stellar_pressure_generator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
				.aisle(
                    "~~~~~~~~~FFFFFFF~~~~~~~~~",
                    "~~~~~~~FFPPPPPPPFF~~~~~~~",
                    "~~~~~FFPPFFCPCFFPPFF~~~~~",
                    "~~~~FPPFFF~CPC~FFFPPF~~~~",
                    "~~~FPFF~~~~CPC~~~~FFPF~~~",
                    "~~FPF~~~~~~CPC~~~~~~FPF~~",
                    "~~FPF~~~~~~CPC~~~~~~FPF~~",
                    "~FPF~~~~~~~CPC~~~~~~~FPF~",
                    "~FPF~~~~~~~CPC~~~~~~~FPF~",
                    "FPFF~~~~~~~CPC~~~~~~~FFPF",
                    "FPF~~~~~~~CCPCC~~~~~~~FPF",
                    "FPCCCCCCCCCPEPCCCCCCCCCPF",
                    "FPPPPPPPPPPEEEPPPPPPPPPPF",
                    "FPCCCCCCCCCPEPCCCCCCCCCPF",
                    "FPF~~~~~~~CCPCC~~~~~~~FPF",
                    "FPFF~~~~~~~CPC~~~~~~~FFPF",
                    "~FPF~~~~~~~CPC~~~~~~~FPF~",
                    "~FPF~~~~~~~CPC~~~~~~~FPF~",
                    "~~FPF~~~~~~CPC~~~~~~FPF~~",
                    "~~FPF~~~~~~CPC~~~~~~FPF~~",
                    "~~~FPFF~~~~CPC~~~~FFPF~~~",
                    "~~~~FPPFFF~CPC~FFFPPF~~~~",
                    "~~~~~FFPPFFCPCFFPPFF~~~~~",
                    "~~~~~~~FFPPPPPPPFF~~~~~~~",
                    "~~~~~~~~~FFFFFFF~~~~~~~~~")
                .aisle(
                    "~~~~~                    ",
                    "~~~~~~~~~CCCCCCC~~~~~~~~~",
                    "~~~~~~~CCF~~~~~FCC~~~~~~~",
                    "~~~~~CC~FF~~~~~FF~CC~~~~~",
                    "~~~~C~~~~~~~~~~~~~~~C~~~~",
                    "~~~C~~~~~~~~C~~~~~~~~C~~~",
                    "~~~C~~~~~~~CCC~~~~~~~C~~~",
                    "~~C~~~~~~~~~C~~~~~~~~~C~~",
                    "~~CF~~~~~~~~~~~~~~~~~FC~~",
                    "~CFF~~~~~~~~F~~~~~~~~FFC~",
                    "~C~~~~~~~~~~F~~~~~~~~~~C~",
                    "~C~~~~C~~~~CEC~~~~C~~~~C~",
                    "~C~~~CCC~FFEEEFF~CCC~~~C~",
                    "~C~~~~C~~~~CEC~~~~C~~~~C~",
                    "~C~~~~~~~~~~F~~~~~~~~~~C~",
                    "~CFF~~~~~~~~F~~~~~~~~FFC~",
                    "~~CF~~~~~~~~~~~~~~~~~FC~~",
                    "~~C~~~~~~~~~C~~~~~~~~~C~~",
                    "~~~C~~~~~~~CCC~~~~~~~C~~~",
                    "~~~C~~~~~~~~C~~~~~~~~C~~~",
                    "~~~~C~~~~~~~~~~~~~~~C~~~~",
                    "~~~~~CC~FF~~~~~FF~CC~~~~~",
                    "~~~~~~~CCF~~~~~FCC~~~~~~~",
                    "~~~~~~~~~CCCSCCC~~~~~~~~~",
                    "~~~~~                    ")

                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~F~~~FCECF~~~F~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~                    ")

                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~F~~~~CEC~~~~F~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")

                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~F~~~~CEC~~~~F~~~~~~",
                    "~~~~~~~~~~~FCF~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~F~~~~~~~~T~~~~~~~~F~~~",
                    "~~~~~~~~~~~GTG~~~~~~~~~~~",
                    "~~~~~~~~~~GFCFG~~~~~~~~~~",
                    "~~~~~~F~~TTCECTT~~F~~~~~~",
                    "~~~~~~~~~~GFCFG~~~~~~~~~~",
                    "~~~~~~~~~~~GTG~~~~~~~~~~~",
                    "~~~F~~~~~~~~T~~~~~~~~F~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~F~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~FGGGGGF~~~~~~~~~",
                    "~~~~~~~~GGPPPPPGG~~~~~~~~",
                    "~~~~~~GGPP~~~~~PPGG~~~~~~",
                    "~~~~~GPP~~~~F~~~~PPG~~~~~",
                    "~~~~~GP~~~~~~~~~~~PG~~~~~",
                    "~~~~GP~~~~~~~~~~~~~PG~~~~",
                    "~~~FGP~~~~~GTG~~~~~PGF~~~",
                    "~~~GP~~~~~G~C~G~~~~~PG~~~",
                    "~~~GP~~~~G~FAF~G~~~~PG~~~",
                    "~~~GP~F~~TCAPACT~~F~PG~~~",
                    "~~~GP~~~~G~FAF~G~~~~PG~~~",
                    "~~~GP~~~~~G~C~G~~~~~PG~~~",
                    "~~~FGP~~~~~GTG~~~~~PGF~~~",
                    "~~~~GP~~~~~~~~~~~~~PG~~~~",
                    "~~~~~GP~~~~~~~~~~~PG~~~~~",
                    "~~~~~GPP~~~~F~~~~PPG~~~~~",
                    "~~~~~~GGPP~~~~~PPGG~~~~~~",
                    "~~~~~~~~GGPPPPPGG~~~~~~~~",
                    "~~~~~~~~~FGGGGGF~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~FCHHHCF~~~~~~~~~",
                    "~~~~~~~~CCCCCCCCC~~~~~~~~",
                    "~~~~~~CCCC~~~~~CCCC~~~~~~",
                    "~~~~~CCC~~~~F~~~~CCC~~~~~",
                    "~~~~~CC~~~~~~~~~~~CC~~~~~",
                    "~~~~CC~~~~~~T~~~~~~CC~~~~",
                    "~~~FCC~~~~GGCGG~~~~CCF~~~",
                    "~~~CC~~~~G~~A~~G~~~~CC~~~",
                    "~~~HC~~~~G~FAF~G~~~~CH~~~",
                    "~~~HC~F~TCAAPAACT~F~CH~~~",
                    "~~~HC~~~~G~FAF~G~~~~CH~~~",
                    "~~~CC~~~~G~~A~~G~~~~CC~~~",
                    "~~~FCC~~~~~GCG~~~~~CCF~~~",
                    "~~~~CC~~~~~~T~~~~~~CC~~~~",
                    "~~~~~CC~~~~~~~~~~~CC~~~~~",
                    "~~~~~CCC~~~~F~~~~CCC~~~~~",
                    "~~~~~~CCCC~~~~~CCCC~~~~~~",
                    "~~~~~~~~CCCCCCCCC~~~~~~~~",
                    "~~~~~~~~~FCHHHCF~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~FFCCCCCFF~~~~~~~~",
                    "~~~~~~~~CCCCCCCCC~~~~~~~~",
                    "~~~~~~CCCC~~F~~CCCC~~~~~~",
                    "~~~~~CCC~~~FFF~~~CCC~~~~~",
                    "~~~~~CC~~~~~F~~~~~CC~~~~~",
                    "~~~FCC~~~~~TTT~~~~~CCF~~~",
                    "~~FFCC~~~~TCCCT~~~~CCFF~~",
                    "~~~CC~~~~TC~A~CT~~~~CC~~~",
                    "~~~CC~F~TC~AAA~CT~F~CC~~~",
                    "~~~CCFFFTCAAPAACTFFFCC~~~",
                    "~~~CC~F~TC~AAA~CT~F~CC~~~",
                    "~~~CC~~~~TC~A~CT~~~~CC~~~",
                    "~~FFCC~~~TTCCCTT~~~CCFF~~",
                    "~~~FCC~~~~~TTT~~~~~CCF~~~",
                    "~~~~~CC~~~~~F~~~~~CC~~~~~",
                    "~~~~~CCC~~~FFF~~~CCC~~~~~",
                    "~~~~~~CCCC~~F~~CCCC~~~~~~",
                    "~~~~~~~~CCCCCCCCC~~~~~~~~",
                    "~~~~~~~~FFCCCCCFF~~~~~~~~",
                    "~~~~~~~~~F~~~~~F~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~FFFFFFF~~~~~~~~~",
                    "~~~~~~~FFF~~~~~FFF~~~~~~~",
                    "~~~~~~FF~~~~~~~~~FF~~~~~~",
                    "~~~~~FF~~~~~~~~~~~FF~~~~~",
                    "~~~~FF~~~~~~F~~~~~~FF~~~~",
                    "~~~FF~~~~~~~~~~~~~~~FF~~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~FF~~~~~~GGCGG~~~~~~FF~~",
                    "~~F~~~~~~G~~A~~G~~~~~~F~~",
                    "~~F~~~~~~G~FAF~G~~~~~~F~~",
                    "~~F~~F~~TCAAPAACT~~F~~F~~",
                    "~~F~~~~~~G~FAF~G~~~~~~F~~",
                    "~~F~~~~~~G~~A~~G~~~~~~F~~",
                    "~~FF~~~~~~GGCGG~~~~~~FF~~",
                    "~~~F~~~~~~~~~~~~~~~~~F~~~",
                    "~~~FF~~~~~~~~~~~~~~~FF~~~",
                    "~~~~FF~~~~~~F~~~~~~FF~~~~",
                    "~~~~~FF~~~~~~~~~~~FF~~~~~",
                    "~~~~~~FF~~~~~~~~~FF~~~~~~",
                    "~~~~~~~FFF~~~~~FFF~~~~~~~",
					"~~~~~~~~~FFFFFFF~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~GTG~~~~~~~~~~~",
					"~~~~~~~~~~G~C~G~~~~~~~~~~",
					"~~~~~~~~~G~FAF~G~~~~~~~~~",
					"~~~~~~F~~TCAPACT~~F~~~~~~",
					"~~~~~~~~~G~FAF~G~~~~~~~~~",
					"~~~~~~~~~~G~C~G~~~~~~~~~~",
					"~~~~~~~~~~~GTG~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~T~~~~~~~~~~~~",
					"~~~~~~~~~~~GTG~~~~~~~~~~~",
					"~~~~~~~~~~GFCFG~~~~~~~~~~",
					"~~~~~~F~~TTCPCTT~~F~~~~~~",
					"~~~~~~~~~~GFCFG~~~~~~~~~~",
					"~~~~~~~~~~~GTG~~~~~~~~~~~",
					"~~~~~~~~~~~~T~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~FTF~~~~~~~~~~~",
					"~~~~~~F~~~~TPT~~~~F~~~~~~",
					"~~~~~~~~~~~FTF~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~EEE~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~E~~F~F~~E~~~~~~~~",
					"~~~~~~F~E~~~P~~~E~F~~~~~~",
					"~~~~~~~~E~~F~F~~E~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~EEE~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~H~~~~~~~~~~~~",
                    "~~~~~~~~~~~~E~~~~~~~~~~~~",
                    "~~~~~~~~~~~~E~~~~~~~~~~~~",
                    "~~~~~~~~~~FFEFF~~~~~~~~~~",
                    "~~~~~~~~~FFFEFFF~~~~~~~~~",
                    "~~~~~~~~FF~~E~~FF~~~~~~~~",
                    "~~~~~~~~FF~FEF~FF~~~~~~~~",
                    "~~~~~HEEEEEEPEEEEEEH~~~~~",
                    "~~~~~~~~FF~FEF~FF~~~~~~~~",
                    "~~~~~~~~FF~~E~~FF~~~~~~~~",
                    "~~~~~~~~~FFFEFFF~~~~~~~~~",
                    "~~~~~~~~~~FFEFF~~~~~~~~~~",
                    "~~~~~~~~~~~~E~~~~~~~~~~~~",
                    "~~~~~~~~~~~~E~~~~~~~~~~~~",
                    "~~~~~~~~~~~~H~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~",
                    "~~~~~~~~~~~~~~~~~~~~~~~~~")
                .aisle(
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~FFF~~~~~~~~~~~",
					"~~~~~~~~~~~~F~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~",
					"~~~~~~~~~~~~~~~~~~~~~~~~~")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("C", 
                <blockstate:contenttweaker:mervin_tara_carbonoxygen_casing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .setAmountAtLeast('C', 370)
                .where("H", <blockstate:contenttweaker:heat_vent>)
                .where("F", <metastate:gregtech:frame_metallic_hydrogen>)
                .where("T", <metastate:gtadditions:ga_heating_coil:1>)
                .where("G", <blockstate:contenttweaker:highresistanceglass>)
                .where("E", <blockstate:contenttweaker:electromagnetic_acceleration_pipe_box>)
                .where("P", <blockstate:contenttweaker:neutron_tube_casing>)
                .where("A", <blockstate:contenttweaker:stella_anvil_module>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle("         FFFFFFF         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("       FFPPPPPPPFF       ","         CCCCCCC         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("     FFPPFFCPCFFPPFF     ","       CCF     FCC       ","                         ","                         ","                         ","                         ","                         ","                         ","         F     F         ","         FFFFFFF         ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("    FPPFFF CPC FFFPPF    ","     CC FF     FF CC     ","         F     F         ","         F     F         ","         F     F         ","         F     F         ","         FGGGGGF         ","         FCHHHCF         ","        FFCCCCCFF        ","       FFF     FFF       ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("   FPFF    CPC    FFPF   ","    C               C    ","                         ","                         ","                         ","                         ","        GGPPPPPGG        ","        CCCCCCCCC        ","        CCCCCCCCC        ","      FF         FF      ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("  FPF      CPC      FPF  ","   C        C        C   ","                         ","                         ","                         ","                         ","      GGPP     PPGG      ","      CCCC     CCCC      ","      CCCC  F  CCCC      ","     FF           FF     ","                         ","                         ","                         ","                         ","            H            ","                         ")
                .aisle("  FPF      CPC      FPF  ","   C       CCC       C   ","            F            ","            F            ","            F            ","            F            ","     GPP    F    PPG     ","     CCC    F    CCC     ","     CCC   FFF   CCC     ","    FF      F      FF    ","            F            ","            F            ","            F            ","            F            ","            E            ","                         ")
                .aisle(" FPF       CPC       FPF ","  C         C         C  ","                         ","                         ","                         ","                         ","     GP           PG     ","     CC           CC     ","     CC     F     CC     ","   FF               FF   ","                         ","                         ","                         ","                         ","            E            ","                         ")
                .aisle(" FPF       CPC       FPF ","  CF                 FC  ","                         ","                         ","                         ","                         ","    GP             PG    ","    CC      T      CC    ","   FCC     TTT     CCF   ","   F        T        F   ","                         ","                         ","                         ","           EEE           ","          FFEFF          ","                         ")
                .aisle("FPFF       CPC       FFPF"," CFF        F        FFC ","   F                 F   ","   F                 F   ","   F                 F   ","   F        T        F   ","   FGP     GTG     PGF   ","   FCC    GGCGG    CCF   ","  FFCC   TTCCCTT   CCFF  ","  FF      GGCGG      FF  ","           GTG           ","            T            ","                         ","                         ","         FFFEFFF         ","                         ")
                .aisle("FPF       CCPCC       FPF"," C          F          C ","            F            ","                         ","                         ","           GTG           ","   GP     G C G     PG   ","   CC    G  A  G    CC   ","   CC    TC A CT    CC   ","  F      G  A  G      F  ","          G C G          ","           GTG           ","                         ","                         ","        FF  E  FF        ","                         ")
                .aisle("FPCCCCCCCCCPEPCCCCCCCCCPF"," C    C    CEC    C    C ","           FCF           ","           FCF           ","           FCF           ","          GFCFG          ","   GP    G FAF G    PG   ","   HC    G FAF G    CH   ","   CC F TC AAA CT F CC   ","  F      G FAF G      F  ","         G FAF G         ","          GFCFG          ","           FTF           ","        E  F F  E        ","        FF FEF FF        ","            F            ")
                .aisle("FPPPPPPPPPPEEEPPPPPPPPPPF"," S   CCC FFEEEFF CCC   C ","      F   FCECF   F      ","      F    CEC    F      ","      F    CEC    F      ","      F  TTCECTT  F      ","   GP F  TCAPACT  F PG   ","   HC F TCAAPAACT F CH   ","   CCFFFTCAAPAACTFFFCC   ","  F   F TCAAPAACT F   F  ","      F  TCAPACT  F      ","      F  TTCPCTT  F      ","      F    TPT    F      ","      F E   P   E F      ","     HEEEEEEPEEEEEEH     ","           FFF           ")
                .aisle("FPCCCCCCCCCPEPCCCCCCCCCPF"," C    C    CEC    C    C ","           FCF           ","           FCF           ","           FCF           ","          GFCFG          ","   GP    G FAF G    PG   ","   HC    G FAF G    CH   ","   CC F TC AAA CT F CC   ","  F      G FAF G      F  ","         G FAF G         ","          GFCFG          ","           FTF           ","        E  F F  E        ","        FF FEF FF        ","            F            ")
                .aisle("FPF       CCPCC       FPF"," C          F          C ","            F            ","                         ","                         ","           GTG           ","   GP     G C G     PG   ","   CC    G  A  G    CC   ","   CC    TC A CT    CC   ","  F      G  A  G      F  ","          G C G          ","           GTG           ","                         ","                         ","        FF  E  FF        ","                         ")
                .aisle("FPFF       CPC       FFPF"," CFF        F        FFC ","   F                 F   ","   F                 F   ","   F                 F   ","   F        T        F   ","   FGP     GTG     PGF   ","   FCC    GGCGG    CCF   ","  FFCC   TTCCCTT   CCFF  ","  FF      GGCGG      FF  ","           GTG           ","            T            ","                         ","                         ","         FFFEFFF         ","                         ")
                .aisle(" FPF       CPC       FPF ","  CF                 FC  ","                         ","                         ","                         ","                         ","    GP             PG    ","    CC      T      CC    ","   FCC     TTT     CCF   ","   F        T        F   ","                         ","                         ","                         ","           EEE           ","          FFEFF          ","                         ")
                .aisle(" FPF       CPC       FPF ","  C         C         C  ","                         ","                         ","                         ","                         ","     GP           PG     ","     CC           CC     ","     CC     F     CC     ","   FF               FF   ","                         ","                         ","                         ","                         ","            E            ","                         ")
                .aisle("  FPF      CPC      FPF  ","   C       CCC       C   ","            F            ","            F            ","            F            ","            F            ","     GPP    F    PPG     ","     CCC    F    CCC     ","     CCC   FFF   CCC     ","    FF      F      FF    ","            F            ","            F            ","            F            ","            F            ","            E            ","                         ")
                .aisle("  FPF      CPC      FPF  ","   C        C        C   ","                         ","                         ","                         ","                         ","      GGPP     PPGG      ","      CCCC     CCCC      ","      CCCC  F  CCCC      ","     FF           FF     ","                         ","                         ","                         ","                         ","            H            ","                         ")
                .aisle("   FPFF    CPC    FFPF   ","    C               C    ","                         ","                         ","                         ","                         ","        GGPPPPPGG        ","        CCCCCCCCC        ","        CCCCCCCCC        ","      FF         FF      ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("    FPPFFF CPC FFFPPF    ","     CC FF     FF CC     ","         F     F         ","         F     F         ","         F     F         ","         F     F         ","         FGGGGGF         ","         FCHHHCF         ","        FFCCCCCFF        ","       FFF     FFF       ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("     FFPPFFCPCFFPPFF     ","       CCF     FCC       ","                         ","                         ","                         ","                         ","                         ","                         ","         F     F         ","         FFFFFFF         ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("       FFPPPPPPPFF       ","         CCCCCCC         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ")
                .aisle("         FFFFFFF         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ","                         ")    
                .where("H", <metastate:contenttweaker:heat_vent>)
                .where("F", <metastate:gregtech:frame_metallic_hydrogen>)
                .where("E", <metastate:contenttweaker:electromagnetic_acceleration_pipe_box>)
                .where("P", <metastate:contenttweaker:neutron_tube_casing>)
                .where("A", <metastate:contenttweaker:stella_anvil_module>)
                .where("G", <metastate:contenttweaker:highresistanceglass>)
                .where("T", <metastate:gtadditions:ga_heating_coil:1>)
                .where("S", IBlockInfo.controller(loc))
                .where("C", <metastate:contenttweaker:mervin_tara_carbonoxygen_casing>)
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.south())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxInputs(4)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .maxOutputs(4)
                        .build())
                        .withTexture(ICubeRenderer.sided("contenttweaker:blocks/mervin_tara_carbonoxygen_casing"))
.withZoom(0.5f)
.buildAndRegister() as Multiblock;

