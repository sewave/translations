@echo off
set T_FILENAME="TR_Out of Gas (USA).gb"
set S_FILENAME="Out of Gas (USA).gb"
set SCRIPTNAME="outofgasgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
ECHO -------------INSERTING HEX--------------
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
ECHO ----------INSERTING HEXTRACTOR----------
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
ECHO ----------INSERTING HEXSTRING-----------
HexString.exe -e -2b tr_%SCRIPTNAME%Alt2.ext 0x4313 0x3D9 0x4293 0x00 %T_FILENAME% %SCRIPTNAME%.tbl
ECHO ------------FIXING CHECKSUM-------------
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
