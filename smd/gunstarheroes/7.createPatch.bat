@echo off
set T_FILENAME="TR_Gunstar Heroes (U) [!].bin"
set S_FILENAME="Gunstar Heroes (U) [!].bin"
set SCRIPTNAME="gunstarheroes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
