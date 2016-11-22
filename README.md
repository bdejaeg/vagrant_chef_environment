Make sure there is a directory x which contains the following files:

-rw-r--r--  1 wd  staff   40418410 Oct  8 00:48 chef-12.15.19-1.el7.x86_64.rpm

-rw-r--r--  1 wd  staff  308616448 Aug 24 23:09 chef-manage-2.4.3-1.el7.x86_64.rpm

-rw-r--r--  1 wd  staff  581768504 Sep 27 17:59 chef-server-core-12.9.1-1.el7.x86_64.rpm

-rw-r--r--  1 wd  staff        887 Oct 14 23:33 chef-server.key

-rw-r--r--  1 wd  staff        944 Oct 14 23:34 chef-server.pem

-rw-r--r--  1 wd  staff  107296708 Sep 28 03:23 chefdk-0.18.30-1.el7.x86_64.rpm

-rw-r--r--  1 wd  staff  282175291 Jul 28 17:21 opscode-push-jobs-server-2.1.0-1.el7.x86_64.rpm

-rw-r--r--  1 wd  staff  271574635 Aug 10 17:45 opscode-reporting-1.6.4-1.el7.x86_64.rpm

The chef-server.key and chef-server.pem is the self signed certificate for running the chef server.
This allows you to accept the cert in your browser and not have to remove the cert each time you redeploy.

The params.sh file contains parameters used in the scripts - adapt them to your own situation.

