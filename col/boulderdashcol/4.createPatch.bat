@echo off
set T_FILENAME="TR_Boulder Dash (1984) (Micro Fun).col"
set S_FILENAME="Boulder Dash (1984) (Micro Fun).col"
set SCRIPTNAME="boulderdashcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
