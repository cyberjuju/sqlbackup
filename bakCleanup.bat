@echo off
rem Delete SQL backups older than 3 days
echo Deleting old SQL backups...
pushd \\192.168.X.X\PATH
forfiles /m *.bak /D -4 /C "cmd /c del @path"
popd
echo Complete.