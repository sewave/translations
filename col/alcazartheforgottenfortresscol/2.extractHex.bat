@echo off
set T_FILENAME="TR_Alcazar - The Forgotten Fortress (1985) (Activision).col"
set SCRIPTNAME="alcazartheforgottenfortresscol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2C85:8,2CF9:8,31A8:20,3228:20,3268:20
pause
