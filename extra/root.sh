#!/bin/bash
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    grn=$(tput setaf 2)             #  green
    ylw=$(tput setaf 3)             #  yellow
    blu=$(tput setaf 4)             #  blue
    ppl=$(tput setaf 5)             #  purple
    cya=$(tput setaf 6)             #  cyan
    txtbld=$(tput bold)             #  Bold
    bldred=${txtbld}$(tput setaf 1) #  red
    bldgrn=${txtbld}$(tput setaf 2) #  green
    bldylw=${txtbld}$(tput setaf 3) #  yellow
    bldblu=${txtbld}$(tput setaf 4) #  blue
    bldppl=${txtbld}$(tput setaf 5) #  purple
    bldcya=${txtbld}$(tput setaf 6) #  cyan
    txtrst=$(tput sgr0)             #  Reset
    rev=$(tput rev)                 #  Reverse color
    pplrev=${rev}$(tput setaf 5)
    cyarev=${rev}$(tput setaf 6)
    ylwrev=${rev}$(tput setaf 3)
    blurev=${rev}$(tput setaf 4)
    normal='tput sgr0'

if [ -z "${WITH_MAGISK}" ]; then
echo -e ${ylw}"\n\n ▼ Which root method do you want to use?\n"${txtrst}
echo -e "";
echo -e ${blu}" 〉 0 - Magisk "${txtrst}${red}"    ︱ Magisk Root Method"${txtrst}
echo -e "";
echo -e ${blu}" 〉 1 - Native SU"${txtrst}${red}"  ︱  LineageOS superuser binary[default]"${txtrst}
echo -e "";
echo -e ${blu}" 🕑  10 seconds Time-out"${txtrst}${red}"︱ Default option"${txtrst}
echo -e "";
echo -e ${cya}" ▼ Pick a Method"${txtrst}
echo -e "";
$normal
read -t 10 askvariant
sleep 1
if [ "$askvariant" == "0" ];
then
echo -e "";
echo -e ${blu}" ▪ WITH MAGISK ROOT METHOD! "${txtrst}
export WITH_MAGISK="true";
echo -e "";
echo -e "";
$normal
sleep 1
else
echo -e "";
echo -e ${blu}" ▪ Native Su "${txtrst}
export WITH_MAGISK="false";
echo -e "";
echo -e "";
$normal
sleep 1
fi
fi
