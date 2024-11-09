@echo off
set T_FILENAME="source2\DH.EXE"
set SCRIPTNAME="darkhalfpc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\ARREST.TXT"
set SCRIPTNAME="darkhalfarrestpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\HOTSPOT.TXT"
set SCRIPTNAME="darkhalfhotspotpc"
java -jar Hextractor.jar -a darkhalfpcTxt.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\INTERR.TXT"
set SCRIPTNAME="darkhalfinterrpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\MISC.TXT"
set SCRIPTNAME="darkhalfmiscpc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\MISC2.TXT"
set SCRIPTNAME="darkhalfmisc2pc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

set T_FILENAME="source2\RESPONSE.TXT"
set SCRIPTNAME="darkhalfresponsepc"
java -jar Hextractor.jar -a darkhalfpcTxtAcutes.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off

ECHO "EXTRACTING FONT..."
set S_FILENAME="source2\BIT5X7.GFT"
set T_FILENAME="source2\font.png"
del %T_FILENAME%
monobit-convert %S_FILENAME% to %T_FILENAME%
pause
