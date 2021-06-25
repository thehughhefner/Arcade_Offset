Vampire Savior The Lord of Vampire Euro 970519 Hidden Characters Unlocked by VMP_KyleW:

        [Details]

I'm an enthused VSAV player who is often finding new ways to be engaged in the game & it's competitive community. You can reach me on twitter - @VMP_KyleW 

Version: (1.0) Issued for public use, functional on every known device.

Goal
The primary goal of this mod is to enable selection of Oboro. I added a few more features to enhace the experience. 

Package Overview:
This (.zip) file contains every file needed to play an encrypted EU rom set. However, only (3) files are unique.
vsav(.key) is the standard encryption key, used to play encrypted roms.
vm3e(.03d) & vm3(.10b) are the only files that I directly modified. This is where conditions for secrets were changed. There was not enough room to add new conditions during the character select input assessment functions, so I had to jump to the free space at the very end of the OpCode and provide the entire function (including my modifications for specific inputs) there. This is why the second (.10b) file is needed.

Thank You to the many people who inspired, consulted & tested along the way: Jais, 9TNine, Alphakami/Tad, Felineki, N-Bee, Moebius, Viper Snake, Rotanibor, @SF2Platinum, JedPossum, ChooseGoose, Typhas, Ken, Ego, Zero-One

You may want to change this (.ZIP) file name to VSAV(.ZIP)

VSAV Boss Hack Details are provided below:
_________________________________________________

Service Menu Settings
I altered three default Euro settings in the Service Menu to align with our tournament standards
Coin Mode = Free Play (No Coins Needed) (0x2456, Data Table)
Regulation = OFF (Blood is on) (0x245C, Data Table)
Game Speed = Turbo 3 (0x2469, Data Table)

Title Version Screen (Splash Page) (0x1C93D, ASCII)
Replaced the title Vampire Savior w/ the text "VSAV BOSS HACK", so users are aware this is not the original rom set. 

Special Character Colors (0x20B38, OpCode moved into the empty space within file #10)
Select any Character with LP+LK or MP+MK to access their Auto-Guard only colors. If two players choose the same character and the same special color, one player will be forced as their default color.

Character Selection (0x211E4, Data Table)
You may choose Dak Gallon by going to the right from Jedah
You may choose Oboro by going to the left from Random Select
You may choose (0x16) Anakaris by going to the left of Bishamon or Oboro. This version of Anak loses triple-jump & float, but gains Tech-Hits.
Changing the accessibilty of Oboro & Dark Gallon allows them to use all of the character colors as well as Auto-MOde.

Intro Animations (0x53CF0, OpCode) & (0x53FE6, OpCode)
Oboro's intro animation duration has been standardizes with the rest of teh cast . Oboro's intro still has the prolonged descending armor. I did not find the timer for that graphic animation, sorry.
I disabled Bishamon's special intro vs Oboro, this ensures all matches start at the same time.

            Vampire Savior The Lord of Vampire (Boss Hack) by VMP_KyleW (https://twitter.com/VMP_KyleW)
