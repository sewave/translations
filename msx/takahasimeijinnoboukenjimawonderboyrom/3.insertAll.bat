@echo off
set T_FILENAME="TR_Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set S_FILENAME="Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set SCRIPTNAME="takahasimeijinnoboukenjimawonderboyrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
