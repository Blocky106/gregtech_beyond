import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;

#Planets

mods.jei.JEI.addDescription(<contenttweaker:io>,"Planet Properties:              Rocket Requirement:        T5   Breathable: No                   Corrosive: No                   Atmosphere: No                    Temperature: -174.0 C, Gravity: 48%   Type : Moon, Class: Cold Selena   Day Lenght: 42h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:callisto>,"Planet Properties:        Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -174.0 C, Gravity: 46%   Type : Moon, Class: Cold Selena   Day Lenght: 154h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:europa>,"Planet Properties:      Rocket Requirement:   T5   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -174.0 C, Gravity: 38%   Type : Moon, Class: Cold Selena   Day Lenght: 58h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:ganymede>,"Planet Properties:       Rocket Requirement:   T5   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -174.0 C, Gravity: 43%   Type : Moon, Class: Cold Selena   Day Lenght: 102h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:mercury>,"Planet Properties:       Rocket Requirement:   T3   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 120.0 C, Gravity: 48%   Type : Planet, Class: Hot Selena   Day Lenght: 176h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:venus>,"Planet Properties:       Rocket Requirement:   T2   Breathable: No, Corrosive: No, Atmosphere: CO2, Nitrogen   Temperature: 150.0 C, Gravity: 62%   Type : Planet, Class: Hot Desert   Day Lenght: 720h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:moon>,"Planet Properties:        Rocket Requirement:   T1   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 30.0 C, Gravity: 38%   Type : Moon, Class: Comfort Selena   Day Lenght: 192h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:mars>,"Planet Properties:        Rocket Requirement:   T2   Breathable: No, Corrosive: No, Atmosphere:CO2, Argon, Nitrogen   Temperature: -60.0 C, Gravity: 42%   Type : Planet, Class: Cold Desert   Day Lenght: 24h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:phobos>,"Planet Properties:       Rocket Requirement:   T2   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -48.0 C, Gravity: 34%   Type : Moon, Class: Cool Selena   Day Lenght: 12h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:ceres>,"Planet Properties:        Rocket Requirement:   T4   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -120.0 C, Gravity: 36%   Type : Planet, Class: Cold Selena   Day Lenght: 10h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:asteroids>,"Planet Properties:        Rocket Requirement:   T4   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -45.0 C, Gravity: 28%   Type : Asteroid, Class: Asteroid   Day Lenght: 0h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:enceladus>,"Planet Properties:         Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -240.0 C, Gravity: 42%   Type : Moon, Class: Cold Selena   Day Lenght: 32h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:titan>,"Planet Properties:       Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -240.0 C, Gravity: 42%   Type : Moon, Class: Cold Selena   Day Lenght: 32h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:miranda>,"Planet Properties:       Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -216.0 C, Gravity: 43%   Type : Moon, Class: Cold Selena   Day Lenght: 33h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:triton>,"Planet Properties:       Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -237.0 C, Gravity: 41%   Type : Moon, Class: Cold Selena   Day Lenght: 145h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:pluto>,"Planet Properties:       Rocket Requirement:   T6   Breathable: No, Corrosive: No,Atmosphere: Nitrogen   Temperature: -234.0 C, Gravity: 38%   Type : Planet, Class: Cold Selena   Day Lenght: 98h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:kupiterbelt>,"Planet Properties:        Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -246.0 C, Gravity: 0%   Type : Planet, Class: Cold Asteroid   Day Lenght: 0h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:haumea>,"Planet Properties:         Rocket Requirement:   T6   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -249.0 C, Gravity: 33%   Type : Planet, Class: Cold Selena   Day Lenght: 12h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:barnadac>,"Planet Properties:       Rocket Requirement:   T6 + Sublight   Breathable: Yes, Corrosive: No, Atmosphere: CO2, Oxygen, Argon   Temperature: 30.0 C, Gravity: 89%   Type : Planet, Class: Comfort Selena   Day Lenght: 24h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:fronos>,"Planet Properties:        Rocket Requirement:   T6 + Sublight   Breathable: Yes, Corrosive: No, No Atmosphere   Temperature: 30.0 C, Gravity: 0%   Type : Planet, Class: Comfort Terra   Day Lenght: 24h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:nibiru>,"Planet Properties:         Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: Yes, No Atmosphere   Temperature: 30.0 C, Gravity: 87%   Type : Planet, Class: Comfort Selena   Day Lenght: 144h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:chalos>,"Planet Properties:      Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 30.0 C, Gravity: 73%   Type : Planet, Class: Comfort Selena   Day Lenght: 48h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:diona>,"Planet Properties:         Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 30.0 C, Gravity: 35%   Type : Planet, Class: Comfort Selena   Day Lenght: 96h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:proximab>,"Planet Properties:          Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No,Atmosphere: CO2, Oxygen   Temperature: -15.0 C, Gravity: 84%   Type : Planet, Class: Comfort Selena   Day Lenght: 175h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:taucetif>,"Planet Properties:         Rocket Requirement:	T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: -6.0 C, Gravity: 83%   Type : Planet, Class: Comfort Selena   Day Lenght: 36h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:trappist1c>,"Planet Properties:         Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 60.0 C, Gravity: 35%   Type : Planet, Class: Hot Selena   Day Lenght: 32h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:trappist1e>,"Planet Properties:        Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 150.0 C, Gravity: 35%   Type : Planet, Class: Hot Selena   Day Lenght: 24h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:yzcetib>,"Planet Properties:       Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 60.0 C, Gravity: 70%   Type : Planet, Class: Hot Selena   Day Lenght: 23h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:yzcetic>,"Planet Properties:        Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 240.0 C, Gravity: 70%   Type : Planet, Class: Hot Selena   Day Lenght: 28h   Has Dungeon: Yes");
mods.jei.JEI.addDescription(<contenttweaker:yzcetid>,"Planet Properties:      Rocket Requirement:   T6 + Sublight   Breathable: No, Corrosive: No, No Atmosphere   Temperature: 60.0 C, Gravity: 63%   Type : Planet, Class: Hot Selena   Day Lenght: 35h   Has Dungeon: No");
mods.jei.JEI.addDescription(<contenttweaker:overworld>,"Planet Properties:    Rocket Requirement:   T0   Breathable: Yes, Corrosive: No, Atmosphere: Nitrogen, Oxygen, Argon   Temperature: 30.0 C, Gravity: 100%   Type : Planet, Class: Comfort Terra   Day Lenght: 24h   Has Dungeon: Yes");

#Baubles

<contenttweaker:fire_mask>.addTooltip("Use this to Traverse the Nether! It will provide you with Fire Resistance, throw it in your Trinket slot in order for it to work");