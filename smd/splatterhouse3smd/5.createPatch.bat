@echo off
set T_FILENAME="TR_Splatterhouse 3 (U) [c][!].gen"
set S_FILENAME="Splatterhouse 3 (U) [c][!].gen"
set SCRIPTNAME="splatterhouse3smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
