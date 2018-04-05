@echo off 
set T_FILENAME="TL_Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
set S_FILENAME="Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
set SCRIPTNAME="wanpakugo"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME% 
pause 
