#!/bin/bash

OUTDIR=_mra

rm -rf "${OUTDIR}"

if [ ! -d xml ]; then
    mkdir xml
fi

mkdir -p "${OUTDIR}"

function ord { 
    printf -v ordr "%d" "'$1"
}

function hexize() {
    mra="${1}"
    nvm="${2}"
    tmp="${3}"

    hexstr=""

    while IFS= read -r -n 1 -d '' char; do
        ord "$char"
        hb=`printf '%02x\n' "$ordr"`
        if [ ! -z "${hexstr}" ] ; then
            hexstr="${hexstr} ${hb}"
        else
            hexstr="${hb}"
        fi
    done < "${nvm}"

    inln=`grep -n "nvram index=\"2\"" "${mra}" | cut -d ':' -f 1`
    headln=$[ ${inln} - 1 ]
    head -${headln} "${mra}" > "${tmp}"
    echo "    <rom index=\"2\">" >> "${tmp}"
    echo "        <part>${hexstr}</part>" >> "${tmp}"
    echo "    </rom>" >> "${tmp}"
    tail -n +${inln} "${mra}" >> "${tmp}"
    mv -f "${tmp}" "${mra}"
}

function add_nvram() {
    mra="${1}"
    bname=`basename "${mra}"`
    dname=`dirname "${mra}"`
    base="${bname%%mra}"
    nvm="nvram/${base}nvm"
    tmp="${base}tmp"

    if [ ! -f "${nvm}" ]; then
        echo "Missing nvram: ${mra}"
    else
        hexize "${mra}" "${nvm}" "${tmp}"
   fi
}

function update_mras() {
    find . -type f -name "*.mra" | while read l; do
        add_nvram "${l}"
    done
}

function insert_file_after() {
    ifn="${1}"
    ofn="${2}"
    ofntmp="${ofn}.tmp"
    pattern="${3}"

    ln=`grep -n "${pattern}" "${ofn}" | cut -d ':' -f 1`
    head -${ln} "${ofn}" | tr -d '\r' > "${ofntmp}"
    cat "${ifn}" | tr -d '\r' >> "${ofntmp}"
    echo >> "${ofntmp}"
    lnnext=$[ ${ln} + 1]
    tail -n +${lnnext} "${ofn}" | tr -d '\r' >> "${ofntmp}"
    mv -f "${ofntmp}" "${ofn}"
}

function add_patch() {
    mra="${1}"
    bname=`basename "${mra}"`
    dname=`dirname "${mra}"`
    base="${bname%%mra}"
    pat="patch/${base}txt"
    tmp="${base}tmp"

    if [ -f "${pat}" ]; then
        insert_file_after "${pat}" "${mra}" "<\!-- Total"
        echo "Insert patch: ${mra}"
    fi
}

function cps15_mra {
    local GAME=$1
    local BUTSTR="$2"
    local DIP=$3
    local CATEGORY="$4"
    local CATVER="${SUBCATEGORY}"

    CATVER=`egrep "^${GAME}=" catver.ini | head -1 | cut -d '=' -f 2- | tr -d '\r' | tr -d '\n'`
    if [ -z "${CATVER}" ]; then
        CATVER="${SUBCATEGORY}"
    fi

    if [ ! -e xml/$GAME.xml ]; then
        if [ ! -f $GAME.xml ]; then
            mamefilter $GAME
        fi
        mv $GAME.xml xml/
    fi

    AUTHOR="jotego,atrac17"

    echo -----------------------------------------------
    echo Dumping $GAME
    mame2dip xml/$GAME.xml -rbf jtcps15 -outdir $OUTDIR -altfolder "$ALTD" \
        -order key maincpu audiocpu qsound gfx -ignore aboardplds bboardplds cboardplds dboardplds \
        -setword maincpu 16 reverse -setword gfx 64 -qsound -setword qsound 16 reverse \
        -header 64 0xff -header-offset 0 audiocpu oki gfx -header-offset-bits 10 -header-offset-reverse \
        -header-data 00 08 00 09 \
        -header-pointer 15 -header-data ff \
        -header-data 32 ff 00 02 04 06 26 28 2a 2c 2e 00 00 30 02 04 08 30 \
        -header-data 20 00 00 ff ff 11 \
        -header-pointer 50 -header-data ff \
        -info platform CPS-1.5 -info category "$CATEGORY" -info catver "$CATVER" -info mraauthor $AUTHOR \
        -dipbase 23 -dipdef $DIP -rmdipsw 'Unused' 'Unknown' 'Service Mode' \
        -corebuttons 6 -buttons $BUTSTR 
}


function cps2_mra {
    local GAME=$1
    local BUT=$2
    local BUTSTR="$3"
    local CATEGORY="$4"
    local CATVER="${SUBCATEGORY}"
    local BUTCFG=

    CATVER=`egrep "^${GAME}=" catver.ini | head -1 | cut -d '=' -f 2- | tr -d '\r' | tr -d '\n'`

    if [ -z "${CATVER}" ]; then
        CATVER="${SUBCATEGORY}"
    fi

    if [ ! -e xml/$GAME.xml ]; then
        if [ ! -f $GAME.xml ]; then
            mamefilter $GAME
        fi
        mv $GAME.xml xml/
    fi

    case $BUT in
        6) BUTCFG="-header-pointer 050 -header-data FC";;
        *) BUTCFG="";;
    esac

    mkdir -p $OUTDIR

    AUTHOR="jotego,atrac17"

    echo -----------------------------------------------
    echo Dumping $GAME
    mame2dip xml/$GAME.xml -rbf jtcps2 -outdir $OUTDIR \
        -order key maincpu audiocpu qsound gfx -ignore aboardplds bboardplds cboardplds dboardplds \
        -setword maincpu 16 reverse -setword gfx 64 -qsound -setword qsound 16 \
        -header 44 0xff \
        -header-offset 0 audiocpu qsound gfx -header-offset-bits 10 -header-offset-reverse \
        -header-pointer 16 \
        -header-data 32 FF 00 \
        -header-data 02 04 06 \
        -header-data 26 28 2A 2C 2E 00 00 30 02 04 08 30 \
        -info platform CPS-2 -info category "$CATEGORY" -info catver "$CATVER" -info mraauthor $AUTHOR \
        -corebuttons 6 $BUTCFG -buttons $BUTSTR \
        -nvram 128 -ddr -beta
}

function update_mras() {
    find . -type f -name "*.mra" | while read l; do
        add_nvram "${l}"
    done
}

function update_patches() {
    find . -type f -name "*.mra" | while read l; do
        add_patch "${l}"
    done
}


FIGHTBTN="Light Punch,Middle Punch,Heavy Punch,Light Kick,Middle Kick,Heavy Kick"


cps15_mra sfzch           "$FIGHTBTN" "ff,ff,ff"             "Fighting"

cps2_mra ssf2t          6 "$FIGHTBTN"                        "Fighting"
cps2_mra sfa            6 "$FIGHTBTN"                        "Fighting"
cps2_mra sfa2           6 "$FIGHTBTN"                        "Fighting"
cps2_mra sfz2al         6 "$FIGHTBTN"                        "Fighting"
cps2_mra sfa3           6 "$FIGHTBTN"                        "Fighting"
cps2_mra msh            6 "$FIGHTBTN"                        "Fighting"
cps2_mra mshvsf         6 "$FIGHTBTN"                        "Fighting"
cps2_mra mvsc           6 "$FIGHTBTN"                        "Fighting"
cps2_mra vsav           6 "$FIGHTBTN"                        "Fighting"
cps2_mra xmcota         6 "$FIGHTBTN"                        "Fighting"
cps2_mra dimahoo        3 "Main Shot,Bomb,Rapid Main Shot"   "Shoot 'em up"
cps2_mra progear        3 "Shot,Bomb,Rapid Shot"             "Shoot 'em up"

update_mras
update_patches

exit 0
