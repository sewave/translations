@echo off
set T_FILENAME="TR_Daze Before Christmas, The (E) [!].bin"
set S_FILENAME="Daze Before Christmas, The (E) [!].bin"
set SCRIPTNAME="dazebeforechristmassmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
