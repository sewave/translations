@echo off
set T_FILENAME="TR_Duke Nukem 3D (B) [!].bin"
set S_FILENAME="Duke Nukem 3D (B) [!].bin"
set SCRIPTNAME="dukenukem3dsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
