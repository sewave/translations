@echo off
set T_FILENAME="target\DH.EXE"
set S_FILENAME="source\DH.EXE"
set SCRIPTNAME="darkhalfpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\ARREST.TXT"
set S_FILENAME="source\ARREST.TXT"
set SCRIPTNAME="darkhalfarrestpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\HOTSPOT.TXT"
set S_FILENAME="source\HOTSPOT.TXT"
set SCRIPTNAME="darkhalfhotspotpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\INTERR.TXT"
set S_FILENAME="source\INTERR.TXT"
set SCRIPTNAME="darkhalfinterrpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\MISC.TXT"
set S_FILENAME="source\MISC.TXT"
set SCRIPTNAME="darkhalfmiscpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\MISC2.TXT"
set S_FILENAME="source\MISC2.TXT"
set SCRIPTNAME="darkhalfmisc2pc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

set T_FILENAME="target\RESPONSE.TXT"
set S_FILENAME="source\RESPONSE.TXT"
set SCRIPTNAME="darkhalfresponsepc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -h darkhalfpcTxtAcutes.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%

ECHO "CONVERTING FONT..."
set T_FILENAME="target\BIT5X7.GFT"
set S_FILENAME="tr_font.png"
del %T_FILENAME%
monobit-convert %S_FILENAME% to %T_FILENAME% --format=gdos
pause
