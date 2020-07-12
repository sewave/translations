@echo off
set T_FILENAME="TR_Mr. Heli no Daibouken (Japan).pce"
set S_FILENAME="Mr. Heli no Daibouken (Japan).pce"
set SCRIPTNAME="mrhelinodaiboukenpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
