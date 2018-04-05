@echo off
set T_FILENAME="TR_Spider-Man (U) [C][!].gbc"
set S_FILENAME="Spider-Man (U) [C][!].gbc"
set SCRIPTNAME="spidermangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
