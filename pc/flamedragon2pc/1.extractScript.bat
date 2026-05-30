@echo off
set S_FILENAME="FDTXT.DAT"
set T_FILENAME="FDTXT.json"
set TABLETNAME="flamedragon2pcExt.tbl"
flamedragon2pc_extract.py -i %S_FILENAME% -o %T_FILENAME% -t %TABLETNAME%
pause
