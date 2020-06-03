@echo off
set T_FILENAME="TR_King Neptune's Adventure (Color Dreams) [!].nes"
set SCRIPTNAME="kingneptunesadventurenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
