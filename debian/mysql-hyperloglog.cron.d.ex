#
# Regular cron jobs for the mysql-hyperloglog package
#
0 4	* * *	root	[ -x /usr/bin/mysql-hyperloglog_maintenance ] && /usr/bin/mysql-hyperloglog_maintenance
