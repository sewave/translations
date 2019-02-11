@echo off
set T_FILENAME="TR_After Burner (Tengen) [!].nes"
set SCRIPTNAME="afterburnernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AD20:20,3DA30:60,3EA30:60
pause
