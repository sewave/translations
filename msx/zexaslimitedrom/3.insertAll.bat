@echo off
set T_FILENAME="TR_Zexas Limited (1985) (dB-Soft) (J).rom"
set S_FILENAME="Zexas Limited (1985) (dB-Soft) (J).rom"
set SCRIPTNAME="zexaslimitedrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
