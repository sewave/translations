@echo off 
set T_FILENAME="Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
set SCRIPTNAME="wanpakugo"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 0001820E-0001841A-FF,00019F61-00019FC3-FF,00019FC5-0001A005-FF,0001E455-0001E5B1-62,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause 
