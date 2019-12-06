@echo off
set T_FILENAME="Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set SCRIPTNAME="takahasimeijinnoboukenjimawonderboyrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
