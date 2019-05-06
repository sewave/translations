@echo off
set T_FILENAME="TR_Fire Shark (U) [!].bin"
set SCRIPTNAME="firesharksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 53BC0:140,564A0:200,560C0:400
pause
