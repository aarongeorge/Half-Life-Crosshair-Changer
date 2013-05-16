@ECHO off
ECHO ++  Aaron's HL Crosshair Changer  ++
ECHO ------------------------------------
ECHO    What crosshair would you like?
ECHO ------------------------------------
ECHO 1.  Default Crosshairs
ECHO 2.  1px
ECHO 3.  3px
ECHO 4.  Large Circle
ECHO 5.  Medium Circle
ECHO 6.  Small Circle
ECHO 7.  Large Circle with 1px
ECHO 8.  Medium Circle with 1px
ECHO 9.  Small Circle with 1px
ECHO 10. Change back to the original crosshair
ECHO.
ECHO Type in the number according to the crosshair you want and press "Enter":
SET /p crosshair=
CLS
GOTO CASE_%crosshair%
    :CASE_1
		SET crosshair=Default
		GOTO END_SWITCH
    :CASE_2
		SET crosshair=1px
		GOTO END_SWITCH
	:CASE_3
		SET crosshair=3px
		GOTO END_SWITCH
	:CASE_4
		SET crosshair=Large Circle
		GOTO END_SWITCH
	:CASE_5
		SET crosshair=Medium Circle
		GOTO END_SWITCH
	:CASE_6
		SET crosshair=Small Circle
		GOTO END_SWITCH
	:CASE_7
		SET crosshair=Large Circle with 1px
		GOTO END_SWITCH
	:CASE_8
		SET crosshair=Medium Circle with 1px
		GOTO END_SWITCH
	:CASE_9
		SET crosshair=Small Circle with 1px
		GOTO END_SWITCH
	:CASE_10
		DEL "%~dp0\valve\sprites\crosshairs.spr"
		COPY "%~dp0\crosshairs\original.spr" "%~dp0\valve\sprites\"
		REN "%~dp0\valve\sprites\original.spr" "crosshairs.spr"
		CLS
		ECHO All done :)
		PAUSE
		EXIT
:END_SWITCH
ECHO ++  Aaron's HL Crosshair Changer  ++
ECHO ------------------------------------
ECHO     What colour would you like ?
ECHO ------------------------------------
ECHO 1. Blue
ECHO 2. Green
ECHO 3. Light Blue
ECHO 4. Orange
ECHO 5. Pink
ECHO 6. Red
ECHO 7. Yellow
ECHO.
ECHO Type in the number according to the colour you want and press "Enter":
SET /p colour=
CLS
GOTO CASE_%colour%
    :CASE_1
		SET colour=blue
		GOTO END_SWITCH
    :CASE_2
		SET colour=green
		GOTO END_SWITCH
	:CASE_3
		SET colour=lightblue
		GOTO END_SWITCH
	:CASE_4
		SET colour=orange
		GOTO END_SWITCH
	:CASE_5
		SET colour=pink
		GOTO END_SWITCH
	:CASE_6
		SET colour=red
		GOTO END_SWITCH
	:CASE_7
		SET colour=yellow
		GOTO END_SWITCH
:END_SWITCH
DEL "%~dp0\valve\sprites\crosshairs.spr"
COPY "%~dp0\crosshairs\%crosshair%\%colour%.spr" "%~dp0\valve\sprites\"
REN "%~dp0\valve\sprites\%colour%.spr" "crosshairs.spr"
CLS
ECHO All done :)
PAUSE