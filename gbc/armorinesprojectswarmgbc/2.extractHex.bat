@echo off
set T_FILENAME="TR_Armorines - Project S.W.A.R.M. (USA, Europe) (En,De).gbc"
set SCRIPTNAME="armorinesprojectswarmgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 34E80:B0
pause
