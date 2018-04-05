@echo off
set T_FILENAME="TR_Deep Duck Trouble Starring Donald Duck (U) [!].gg"
set S_FILENAME="Deep Duck Trouble Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="ddtroublegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
