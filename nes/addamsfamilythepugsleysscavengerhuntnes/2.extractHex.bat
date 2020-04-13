@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 28270:10,28320:10
pause
