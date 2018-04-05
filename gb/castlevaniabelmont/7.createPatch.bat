@echo off
set T_FILENAME="TR_Castlevania II - Belmont's Revenge (U) [!].gb"
set S_FILENAME="Castlevania II - Belmont's Revenge (U) [!].gb"
set SCRIPTNAME="castlevaniabelmont"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
