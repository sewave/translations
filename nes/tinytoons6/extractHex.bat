@echo off 
set T_FILENAME="TR_Tiny Toon Adventures 6 (Unl) [!].nes"
set SCRIPTNAME="tinytoons6"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
