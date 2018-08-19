@echo off
set T_FILENAME="TR_Mighty Morphin Power Rangers - The Movie (U) [!].bin"
set S_FILENAME="Mighty Morphin Power Rangers - The Movie (U) [!].bin"
set SCRIPTNAME="powerrangersmoviesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
