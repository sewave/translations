@echo off
set T_FILENAME="TR_Factory Panic (U) [!].gg"
set SCRIPTNAME="factorypanicgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10ED4:40,10D54:20
pause
