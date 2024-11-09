@echo off
set T_FILENAME="source\DH.EXE"
set SCRIPTNAME="darkhalfpc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\ARREST.TXT"
set SCRIPTNAME="darkhalfarrestpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\HOTSPOT.TXT"
set SCRIPTNAME="darkhalfhotspotpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\INTERR.TXT"
set SCRIPTNAME="darkhalfinterrpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\MISC.TXT"
set SCRIPTNAME="darkhalfmiscpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\MISC2.TXT"
set SCRIPTNAME="darkhalfmisc2pc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source\RESPONSE.TXT"
set SCRIPTNAME="darkhalfresponsepc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

ECHO "EXTRACTING FONT..."
set S_FILENAME="source\BIT5X7.GFT"
set T_FILENAME="font.png"
del %T_FILENAME%
monobit-convert %S_FILENAME% to %T_FILENAME%

ECHO "EXTRACTING FONT ES..."
set S_FILENAME="source\DHSPTEST.GFT"
set T_FILENAME="fontEs.png"
del %T_FILENAME%
REM monobit-convert %S_FILENAME% to %T_FILENAME%
pause
