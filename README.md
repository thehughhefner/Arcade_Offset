![capcom](https://user-images.githubusercontent.com/32810066/123269746-440cb600-d4cd-11eb-9e11-90ed7fc951d7.png)

## Arcade Offset (Patched MRA Files)

This repository will include encrypted patches for titles available on [**jotego's jtcps1 repository**](https://github.com/jotego/). In the future, I may continue patching other titles for various cores playable on [**MiSTerFPGA found in the MiSTer-devel repository**](https://github.com/MiSTer-devel).

These patches utilize encrypted roms from mame 0.229 or higher.  They should work with previous mame sets if no changes were made to the merged rom. The intent of these patched mra files is to alleviate the need for additional roms in **`games/mame`** or **`games/hbmame`** and patch the merged rom on the fly.

They include **unlocked characters, modes, enchancements, trainers, and other features** available in the encrypted romsets. The primary usage is to no longer input a **code** to access hidden characters. Some files may be found in **HBMame**, although that is not the original source. The readme files for each title show the source of the patch and the author. If none is notated, then the patch has sourced from me.

There are custom **.xml** files generated to export these enchancements to **.mra** files when generated. They are located in the **rom/xml** directory.

## Arcade Offset Update (Download Script)

Below is a video tutorial on how to install and run [arcade_offset_update.sh](https://github.com/atrac17/Arcade_Offset/blob/main/arcade_offset_update.sh). It can be run from **SSH** or on you **MiSTer**.

Just simply download the script from the link above and place it in `media/fat/Scripts/`. Uncollapse the video below to view the tutorial.

<details>
<summary>
<b>Arcade Offset Update Video Tutorial</b>
</summary>
<p>https://user-images.githubusercontent.com/32810066/123512934-2e77c780-d658-11eb-8707-8db9f5bfc89c.mp4</p>
</details>

## Compatibility Notes

<details>

<summary>Compatibility with <b>jtcps15</b> as of 20210624:</summary>

Currently, the **fourth button** has been eliminated in [**jotego's jtcps15 core**](https://github.com/jotego/jtbin/tree/master/mister/cps15) to fix an issue with [**Muscle Bomber Duo**](https://github.com/jotego/jtcps1/issues/99) as no officially released titles utilize more than three buttons on the hardware. 

Please use the core linked below separately in **Current Titles** if you wish to have full **6 button support** for ***Street Fighter Zero (CPS Changer 1.5, Japan 201218)***. If not, you will lose the input for `lk`/`B4`.

This will be addressed in the future.

</details>

## Current Patched Titles

<details>

<summary>Naming Schema Template:</summary>

| **No [ ]**| **[TE]**| **[Naming Schema]**|
|---------------|-------------|-------------|
| ***[Unlocked]*** | ***[Training Edition]***  | ***[Onslaught Edition], [Aesthetic Mod], [v1], Etc.*** |

</details>

<details>

<summary><b>Current Titles for CP System 'Dash:</b></summary>

| Title         | Core        | Information                  | Date Available: |
|---------------|-------------|------------------------------|-----------------|
[**Street Fighter Zero (CPS Changer 1.5, Japan 201218)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20'Dash/Street%20Fighter%20Zero%20(CPS%20Changer%201.5%2C%20Japan%20201218).mra) | [**JTCPS15**](https://github.com/jotego/jtbin/blob/master/mister/cps15/releases/jtcps15_20210604.rbf) | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20'Dash/Street%20Fighter%20Zero%20(CPS%20Changer%201.5%2C%20Japan%20201218).md) | 20210624 |

</details>

<details>

<summary><b>Current Titles for CP System II:</b></summary>

| Title         | Core        | Information                  | Date Available: |
|---------------|-------------|------------------------------|-----------------|
[**Dimahoo (Euro 000121)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Dimahoo%20(Euro%20000121)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Dimahoo%20(Euro%20000121)%20%5BUnlocked%5D.md) | 20210624 |
[**Dimahoo (USA 000121)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Dimahoo%20%28USA%20000121%29%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Dimahoo%20(USA%20000121)%20%5BUnlocked%5D.md) | 20210624 |
[**Great Mahou Daisakusen (Japan 000121)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Great%20Mahou%20Daisakusen%20%28Japan%20000121%29%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Great%20Mahou%20Daisakusen%20(Japan%20000121)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Super Heroes (Japan 951117)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Super%20Heroes%20(Japan%20951117)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Super%20Heroes%20(Japan%20951117)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Super Heroes (USA 951117)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Super%20Heroes%20(USA%20951117)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Super%20Heroes%20(USA%20951117)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Super Heroes Vs. Street Fighter (Japan 970707)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Super%20Heroes%20Vs.%20Street%20Fighter%20(Japan%20970707)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Super%20Heroes%20Vs.%20Street%20Fighter%20(Japan%20970707)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Super Heroes Vs. Street Fighter (USA 970625)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Super%20Heroes%20Vs.%20Street%20Fighter%20(USA%20970625)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Super%20Heroes%20Vs.%20Street%20Fighter%20(USA%20970625)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Vs. Capcom Clash of Super Heroes (Japan 980112) [Onslaught Edition]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(Japan%20980112)%20%5BOnslaught%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(Japan%20980112)%20%5BOnslaught%20Edition%5D.md) | 20210624 |
[**Marvel Vs. Capcom Clash of Super Heroes (USA 980112) [Onslaught Edition]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(USA%20980112)%20%5BOnslaught%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(USA%20980112)%20%5BOnslaught%20Edition%5D.md) | 20210624 |
[**Marvel Vs. Capcom Clash of Super Heroes (Japan 980123)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(Japan%20980123)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(Japan%20980123)%20%5BUnlocked%5D.md) | 20210624 |
[**Marvel Vs. Capcom Clash of Super Heroes (USA 980123)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(USA%20980123)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Marvel%20Vs.%20Capcom%20Clash%20of%20Super%20Heroes%20(USA%20980123)%20%5BUnlocked%5D.md) | 20210624 |
[**Progear (USA 010117, Second Loop)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Progear%20(USA%20010117%2C%20Second%20Loop)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Progear%20(USA%20010117%2C%20Second%20Loop)%20%5BUnlocked%5D.md) | 20210624 |
[**Progear no Arashi (Japan 010117, Second Loop)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Progear%20no%20Arashi%20(Japan%20010117%2C%20Second%20Loop)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Progear%20no%20Arashi%20(Japan%20010117%2C%20Second%20Loop)%20%5BUnlocked%5D.md) | 20210624 |
[**Progear Red Label Halfway to Hell (Japan 160117)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/Progear%20Red%20Label%20Halfway%20to%20Hell%20(Japan%20160117).mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Progear%20Red%20Label%20Halfway%20to%20Hell%20(Japan%20160117).md) | 20210624 |
[**Street Fighter Alpha 2 (Euro 960229) [TE]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Street%20Fighter%20Alpha%202%20(Euro%20960229)%20%5BTraining%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Alpha%202%20(Euro%20960229)%20%5BTraining%20Edition%5D.md) | 20210624 |
[**Street Fighter Alpha 2 (USA 960430) [TE]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Street%20Fighter%20Alpha%202%20(USA%20960430)%20%5BTraining%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Alpha%202%20(USA%20960430)%20%5BTraining%20Edition%5D.md) | 20210624 |
[**Street Fighter Zero (Japan 950727) [v1]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Street%20Fighter%20Zero%20(Japan%20950727)%20%5BUnlocked%20v1%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%20(Japan%20950727)%20%5BUnlocked%20v1%5D.md) | 20210624 |
[**Street Fighter Zero 2 Alpha (Asia 960826)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Street%20Fighter%20Zero%202%20Alpha%20(Asia%20960826)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%202%20Alpha%20(Asia%20960826)%20%5BUnlocked%5D.md) | 20210624 |
[**Street Fighter Zero 2 Alpha (Japan 960805)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Street%20Fighter%20Zero%202%20Alpha%20(Japan%20960805)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%202%20Alpha%20(Japan%20960805)%20%5BUnlocked%5D.md) | 20210624 |
[**Street Fighter Zero 2 Alpha (USA 960813)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Street%20Fighter%20Zero%202%20Alpha%20(USA%20960813)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%202%20Alpha%20(USA%20960813)%20%5BUnlocked%5D.md) | 20210624 |
[**Street Fighter Zero 3 (Japan 980629) [TE v1.1]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Street%20Fighter%20Zero%203%20(Japan%20980629)%20%5BTraining%20Edition%20v1.1%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%203%20(Japan%20980629)%20%5BTraining%20Edition%20v1.1%5D.md) | 20210624 |
[**Street Fighter Zero 3 (Japan 980904)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Street%20Fighter%20Zero%203%20(Japan%20980904)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Street%20Fighter%20Zero%203%20(Japan%20980904)%20%5BUnlocked%5D.md) | 20210624 |
[**Super Street Fighter II The New Legacy (World 201113) [Beta v0.4]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/Super%20Street%20Fighter%20II%20The%20New%20Legacy%20(World%20201113)%20%5BBeta%20v0.4%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Super%20Street%20Fighter%20II%20The%20New%20Legacy%20(World%20201113)%20%5BBeta%20v0.4%5D.md) | 20210624 |
[**Super Street Fighter II The New Legacy (World 210611) [Beta v0.5]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/Super%20Street%20Fighter%20II%20The%20New%20Legacy%20(World%20210611)%20%5BBeta%20v0.5%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Super%20Street%20Fighter%20II%20The%20New%20Legacy%20(World%20210611)%20%5BBeta%20v0.5%5D.md) | 20210624 |
[**Super Street Fighter II Turbo (Asia 940223) [TE]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Super%20Street%20Fighter%20II%20Turbo%20(Asia%20940223)%20%5BTraining%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Super%20Street%20Fighter%20II%20Turbo%20(Asia%20940223)%20%5BTraining%20Edition%5D.md) | 20210624 |
[**Super Street Fighter II X Grand Master Challenge (Japan 940223)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Super%20Street%20Fighter%20II%20X%20Grand%20Master%20Challenge%20(Japan%20940223)%20%5BFree%20Play%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Super%20Street%20Fighter%20II%20X%20Grand%20Master%20Challenge%20(Japan%20940223)%20%5BFree%20Play%5D.md) | 20210624 |
[**Super Street Fighter II X Grand Master Challenge (Japan 940311)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Super%20Street%20Fighter%20II%20X%20Grand%20Master%20Challenge%20(Japan%20940311)%20%5BFree%20Play%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Super%20Street%20Fighter%20II%20X%20Grand%20Master%20Challenge%20(Japan%20940311)%20%5BFree%20Play%5D.md) | 20210624 |
[**Vampire Savior The Lord of Vampire (Euro 970519) [AM v1.3]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%5D.md) | 20210624 |
[**Darkstalkers Jedah's Damnation (Euro 970519) [AM v1.3]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Darkstalkers%20Jedahs%20Damnation%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Darkstalkers%20Jedah's%20Damnation%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%5D.md) | 20210624 |
[**Vampire Savior The Lord of Vampire (Euro 970519) [AM v1.3 TE]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%20Training%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BAesthetic%20Mod%20v1.3%20Training%20Edition%5D.md) | 20210624 |
[**Vampire Savior The Lord of Vampire (Euro 970519) [TE]**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Training/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BTraining%20Edition%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BTraining%20Edition%5D.md) | 20210624 |
[**Vampire Savior The Lord of Vampire (Euro 970519)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/Vampire%20Savior%20The%20Lord%20of%20Vampire%20(Euro%20970519)%20%5BUnlocked%5D.md) | 20210624 |
[**X-Men Children of the Atom (Japan 941219)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/X-Men%20Children%20of%20the%20Atom%20(Japan%20941219)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/X-Men%20Children%20of%20the%20Atom%20(Japan%20941219)%20%5BUnlocked%5D.md) | 20210624 |
[**X-Men Children of the Atom (USA 941219)**](https://github.com/atrac17/Arcade_Offset/blob/main/release/_Arcade%20Offset/_CP%20System%20II/_Unlocked/X-Men%20Children%20of%20the%20Atom%20(USA%20941219)%20%5BUnlocked%5D.mra) | JTCPS2 | [**View Readme**](https://github.com/atrac17/Arcade_Offset/blob/main/readme/CP%20System%20II/X-Men%20Children%20of%20the%20Atom%20(USA%20941219)%20%5BUnlocked%5D.md) | 20210624 |

</details>

## Patched MRA Format

This is the provided layout used for **`jtcps2`**. Patches are applied to the loaded roms from **`rom index="0"`**. Additional information may be provided from **soft dip** settings in the eeprom/nvram file. The hex is taken from **soft dip** settings and applied to **`rom index="02"`**. The  **`rom index`** usage will vary from core to core dependent upon the author.

As these are generated from a tool chain, they do not mirror the example shown at [**MiSTer-devel/Main_MiSTer #MRA Format**](https://github.com/MiSTer-devel/Main_MiSTer/wiki/Arcade-Roms-and-MRA-files#mra-format).

<details>
        <summary><b>Patched MRA Template</b></summary>
<p>

```xml
        <misterromdescription>
            <about author=/>
            <name></name>
            <setname></setname>
            <rbf></rbf>
            <mameversion></mameversion>
            <year></year>
            <manufacturer></manufacturer>
            <players></players>
            <joystick></joystick>
            <rotation></rotation>
            <region></region>
            <platform></platform>
            <category></category>
            <catver></catver>
            <mraauthor></mraauthor>
            <rom index="0" zip="rom1.zip|rom2.zip" type="merged" md5="None" address="0x30000000">
                <part>
                Example encryption / configuration
                </part>
                <!-- example rom - starts at 0x0 -->
                <part name="example.00" crc="12345678"/>
                <!-- example rom - starts at 0x14 -->
                <part name="example.01" crc="91011121"/>
                <!-- Total 0x000000 bytes - 00000 kBytes -->
                <patch 0x0>"hex information"</patch>
            </rom>
            <rom index="1">
                <part>00=horizontal / 01=vertical / 02= 4-Way Joystick</part>
            </rom>
            <rom index="2">
                <part>"soft dip information"</part>
            </rom>
            <nvram index="2" size="128"/>
            <buttons names="B1,B2,B3,B4,B5,B6,Start,Coin,Core Credits" default="Y,X,B,A,L,R,Select,Start,-" count="6"/>
        </misterromdescription>
```

</p>
</details> 

## Support

Please consider showing support for this and future projects at [Patreon](https://www.patreon.com/atrac17). While it isn't necessary, it's greatly appreciated.

![123269746-440cb600-d4cd-11eb-9e11-90ed7fc951d7](https://user-images.githubusercontent.com/32810066/123511968-b529a600-d652-11eb-9cd5-ca45d16e81a5.png)
