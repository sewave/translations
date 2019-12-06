@echo off
set T_FILENAME="TR_Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set SCRIPTNAME="takahasimeijinnoboukenjimawonderboyrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
