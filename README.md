# sqlbackup
Collection of scripts to aid in automated backup of SQL Express server.

<h2>HOW TO USE</h2>
<p>Import sp_backupdatabases.sql into the SQL Server's master database.</p>

<p>
1. Edit dbBackup.bat to include the SQL Server name and the network location to backup to.<br/>
2. Edit bakCleanup.bat to include the network loaction of the backups. You may change the "-4" to as many days as you'd like to keep + 1. For example: -4 will delete backups four days and older (keep 3 days and newer).<br/>
<b>IMPORTANT:</b> These scripts cannot use UNC pathnames, you must use the IP address of the network location.</p>

<b>Setup two tasks in Task Scheduler:</b><br/>
1. Set dbBackup.bat to run first with highest privledges.<br/>
2. Set bakCleanup.bat to run after (we use 1hr after) with highest privledges.
