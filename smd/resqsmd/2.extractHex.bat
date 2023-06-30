@echo off
set T_FILENAME="TR_Resq (Europe) (Proto).md"
set SCRIPTNAME="resqsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3002C:200,30B2C:40,30C2C:80,3136C:40,3142C:80,
pause
