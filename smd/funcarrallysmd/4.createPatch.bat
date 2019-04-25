@echo off
set T_FILENAME="TR_Fun Car Rally (Beta).bin"
set S_FILENAME="Fun Car Rally (Beta).bin"
set SCRIPTNAME="funcarrallysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
