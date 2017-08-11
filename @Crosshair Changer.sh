#!/usr/bin/env bash

echo "++  Aaron's HL Crosshair Changer  ++"
echo "------------------------------------"
echo "   What crosshair would you like?"
echo "------------------------------------"
echo "1.  Default Crosshairs"
echo "2.  1px"
echo "3.  3px"
echo "4.  Large Circle"
echo "5.  Medium Circle"
echo "6.  Small Circle"
echo "7.  Large Circle with 1px"
echo "8.  Medium Circle with 1px"
echo "9.  Small Circle with 1px"
echo "10. Change back to the original crosshair"
echo ""
echo "Type in the number according to the crosshair you want and press \"Enter\":"

read crosshair
clear

case $crosshair in
    1)      
        crosshair="Default"
        ;;
    2)
        crosshair="1px"
        ;;
    3)
        crosshair="3px"
        ;;
    4)
        crosshair="Large Circle"
        ;;
    5)
        crosshair="Medium Circle"
        ;;
    6)
        crosshair="Small Circle"
        ;;
    7)
        crosshair="Large Circle with 1px"
        ;;
    8)
        crosshair="Medium Circle with 1px"
        ;;
    9)
        crosshair="Small Circle with 1px"
        ;;
    *)
        rm -f "./valve/sprites/crosshairs.spr"
        cp -f "./crosshairs/original.spr" "./valve/sprites/crosshairs.spr"
        clear
        echo "All done :)"
        sleep 3
        exit
        ;;
esac


echo "++  Aaron's HL Crosshair Changer  ++"
echo "------------------------------------"
echo "    What colour would you like ?"
echo "------------------------------------"
echo "1. Blue"
echo "2. Green"
echo "3. Light Blue"
echo "4. Orange"
echo "5. Pink"
echo "6. Red"
echo "7. Yellow"
echo ""
echo "Type in the number according to the colour you want and press \"Enter\":"

read colour
clear

case $colour in
    1)      
        colour="blue"
        ;;
    2)
        colour="green"
        ;;
    3)
        colour="lightblue"
        ;;
    4)
        colour="orange"
        ;;
    5)
        colour="pink"
        ;;
    6)
        colour="red"
        ;;
    7)
        colour="yellow"
        ;;
    *)
        colour"red"
        ;;
esac

rm -f "./valve/sprites/crosshairs.spr"
cp -f "./crosshairs/$crosshair/$colour.spr" "./valve/sprites/crosshairs.spr"
#clear
echo "All done :)"
sleep 3