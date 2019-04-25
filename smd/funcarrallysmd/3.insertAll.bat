@echo off
set T_FILENAME="TR_Fun Car Rally (Beta).bin"
set S_FILENAME="Fun Car Rally (Beta).bin"
set SCRIPTNAME="funcarrallysmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
