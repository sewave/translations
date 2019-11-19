@echo off
set T_FILENAME="TR_Alibaba (1984) (Sony) (J).rom"
set SCRIPTNAME="alibabarom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 35D4:70
pause
