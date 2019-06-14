@echo off
set T_FILENAME="TR_Boulder Dash (1984) (Micro Fun).col"
set SCRIPTNAME="boulderdashcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
