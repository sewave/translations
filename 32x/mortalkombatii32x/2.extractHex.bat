@echo off
set T_FILENAME="TR_Mortal Kombat II (32X) (W) (Jan 1995) [!].32x"
set SCRIPTNAME="mortalkombatii32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
