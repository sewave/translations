@echo off
set T_FILENAME="TR_Pirates! Gold (USA).md"
set S_FILENAME="Pirates! Gold (USA).md"
set SCRIPTNAME="piratesgoldsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM HexString.exe -e -4b tr_%SCRIPTNAME%.ext 0x60000 0xDE00 0x1FB18 0x00 %T_FILENAME% %SCRIPTNAME%.tbl
ECHO ----------INSERTING HEXSTRING-----------
HexString.exe -e -4b tr_%SCRIPTNAME%.ext 0x3EEC1 0x47EE 0x1FB18 0x00 %T_FILENAME% %SCRIPTNAME%.tbl
ECHO ----------INSERTING HEXTRACTOR----------
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
