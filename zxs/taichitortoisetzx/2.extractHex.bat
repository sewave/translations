@echo off
set T_FILENAME="TR_Tai-Chi Tortoise.tzx"
set SCRIPTNAME="taichitortoisetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B8AA:18,B7AA:28
pause
