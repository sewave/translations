@echo off
set T_FILENAME="TR_Mighty Morphin Power Rangers (U) [!].bin"
set S_FILENAME="Mighty Morphin Power Rangers (U) [!].bin"
set SCRIPTNAME="powerrangerssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
