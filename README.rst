Kaoz-clients
============

Clients for Kaoz, a free IRC notifier.

Overview
--------
There are several scripts which interface with a Kaoz server (https://github.com/BinetReseau/Kaoz).
These scripts aim to be installed in folder ``/usr/share/kaoz-clients``.
The subfolders contain configuration files for several hooks, but ``pipes`` and ``style``.
To use these files, you may copy ``pipes/ircpipe.sh`` to another location such as ``/etc/kaoz/ircpipe.sh`` and edit this file accordingly to your configuration.
Then, copy and edit the files you want to have IRC notifications via Kaoz.

Pipes and style
---------------
``pipes`` provides several ``ircpipe`` programs to be used to send message to IRC and keeping this simple.
Advanced users may choose to personalize an ``ircpipe`` for their own needs, regarding the default settings (eg. default IRC channel, Kaoz host, SSL CA).

``style/irc-style.sh`` defines convenient variables to format IRC messages with font style and colors.

Git
---
``git`` folder contains a post-receive hook for Git repositories.
To use this hook, copy ``hook-post-receive`` file to the ``hooks/post-receive`` location of you Git repository and modify it according to your configuration.

Nagios
------
Nagios is a service monitoring tool.
``nagios`` folder contains a script which format Nagios notifications messages.
To make Nagios use this script to publish notifications on IRC, put the content of the two ``.cfg`` files in your Nagios configuration.

NUT (Network UPS Tools)
-----------------------
UPS provides tools to monitor power devices.
``nut-ups`` folder contains a script to format NUT notifications with IRC colors.

PAM (Pluggable Authentication Modules)
--------------------------------------
Linux provides an extensible authentication system.
``pam`` folder PAM configuration files to be used to report on IRC each login/logout, being with SSH, local login or su/sudo.
Each Linux distribution has a different set of default configuration files for PAM, so you *should not blindly copy* and paste the configuration files to your ``/etc/pam.d/`` directory. These files were written for Gentoo in 2012 and may break other Linux distributions.
You may instead edit by hand your files and add a ``pam_exec.so`` line with ``notify-message`` script.
For example in Debian, you may add this to ``/etc/pam.d/common-session`` and ``/etc/pam.d/common-session-noninteractive``::

    session optional    pam_exec.so seteuid /etc/pam.d/notify-message

... where ``/etc/pam.d/notify-message`` is a customized copy of ``pam/notify-message``.

Sessions
--------
``sessions`` folder contains a script which lists all active sessions on an host (ssh, local login and su/sudo).
This script may be executed every night by cron to monitor unexpected opened connection to an host.

Contact
-------

Kaoz is provided by "Binet Réseau", a student association from France's École polytechnique.
If you have inquiries, comments or suggestions, you may contact us at br@eleves.polytechnique.fr

::

                 ________________
               _/ ______________ \_
             _/ _/              \_ \
            / _/   ____    ____   \ \
           / /    / __ \  / __ \   | |
          / /    / /_/ / / /_/ /   | |
          | |   / _, <  / _, _/    | |
          | |  / /_/ / / / | |     | |
          | | /_____/ /_/  | |    / /
           \ \              \ \__/ /
            \ \_             \____/
             \_ \________________
               \________________/
