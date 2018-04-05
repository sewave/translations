@echo off
set T_FILENAME="TR_Lion King, The (W) [!].gen"
set SCRIPTNAME="lionkingthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
