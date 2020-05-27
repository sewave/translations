@echo off
set T_FILENAME="TR_Trampoline Terror! (U) [!].bin"
set SCRIPTNAME="trampolineterrorsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
