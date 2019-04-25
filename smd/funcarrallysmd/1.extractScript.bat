@echo off
set T_FILENAME="Fun Car Rally (Beta).bin"
set SCRIPTNAME="funcarrallysmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
