@echo off
set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%" 
mysqldump --all-databases -uroot -prootroot > D:\myworkspace\mysql-data-bak\all_%Ymd%.sql
@echo on