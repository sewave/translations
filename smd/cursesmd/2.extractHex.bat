@echo off
set T_FILENAME="TR_Curse (J) [!].bin"
set SCRIPTNAME="cursesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
