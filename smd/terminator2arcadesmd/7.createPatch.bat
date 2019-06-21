@echo off
set T_FILENAME="TR_T2 - The Arcade Game (UE) (REV01) [!].bin"
set S_FILENAME="T2 - The Arcade Game (UE) (REV01) [!].bin"
set SCRIPTNAME="terminator2arcadesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
