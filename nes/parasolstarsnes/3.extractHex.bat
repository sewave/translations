@echo off
set T_FILENAME="TR_Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set SCRIPTNAME="parasolstarsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
