@echo off
set T_FILENAME="TR_Daze Before Christmas, The (E) [!].bin"
set SCRIPTNAME="dazebeforechristmassmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
