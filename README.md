# sqlbackup
Collection of scripts to aid in automated backup of SQL Express server.

HOW TO USE
Import sp_backupdatabases.sql into the SQL Server's master database.

Edit dbBackup.bat to include the SQL Server name and the network location to backup to.
Edit bakCleanup.bat to include the network loaction of the backups. You may change the "-4" to as many days as you'd like to keep + 1. For example: -4 will delete backups four days and older (keep 3 days and newer).
IMPORTANT: These scripts cannot use UNC pathnames, you must use the IP address of the network location.

Setup two tasks in Task Scheduler:
1. Set dbBackup.bat to run first with highest privledges.
2. Set bakCleanup.bat to run after (we use 1hr after) with highest privledges.
