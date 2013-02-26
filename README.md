Kaoz-clients
============

Clients for Kaoz, a free IRC notifier.

Overview
------------------
There are several scripts which interfaces with a Kaoz server. These scripts aims to be installed in folder `/usr/share/kaoz-clients`.

<dl>
<dt>nagios</dt>
<dd>A simple formater and configuration files for Nagios, a popular service monitoring tool. With this configuration, Nagios can send notifications on IRC</dt>
<dt>nut-ups</dt>
<dd>A simple formater for NUT, a popular UPS monitoring tool.</dd>
<dt>pam</dt>
<dd>PAM may be configured to write a message on IRC each time an user logs login or do su/sudo.</dd>
<dt>python</dt>
<dd>A simple Python script which interfaces well with Kaoz server interface.</dd>
<dt>shell</dt>
<dd>`ircpipe` shell script allows you to use the shell pipe operator to send messages to Kaoz. Please note that since it contains Kaoz's password, it is rather sensible.
`irc-style.sh` defines some useful definitions to write color messages on IRC.</dd>
</dl>

Contact
-------

Kaoz is provided by "Binet Réseau", a student association from France's École polytechnique.
If you have inquiries, comments or suggestions, you may contact us at br@eleves.polytechnique.fr

<pre>
                 ________________
               _/ ______________ \_
             _/ _/              \_ \
            / _/   ____    ____   \ \
           / /    / __ \  / __ \   | |
          / /    / /_/ / / /_/ /   | |
          | |   / _, &lt;  / _, _/    | |
          | |  / /_/ / / / | |     | |
          | | /_____/ /_/  | |    / /
           \ \              \ \__/ /
            \ \_             \____/
             \_ \________________
               \________________/

</pre>