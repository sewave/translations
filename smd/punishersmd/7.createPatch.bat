@echo off
set T_FILENAME="TR_Punisher, The (U) [!].bin"
set S_FILENAME="Punisher, The (U) [!].bin"
set SCRIPTNAME="punishersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
