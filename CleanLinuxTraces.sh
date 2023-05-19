#!/bin/bash
# Install required packages
apt install secure-delete bleachbit nwipe shred -y
# Clean package cache
apt clean
apt -s clean
apt clean all
apt autoremove -y
apt-get clean
apt-get -s clean
apt-get clean all
apt-get autoclean
# Delete Recent History 
usb_history_file_deb="$HOME/.local/share/recently-used.xbel"
if [ -f "$usb_history_file_deb" ]; then
    > "$usb_history_file_deb"
fi
usb_history_file_red="$HOME/.recently-used.xbel"
if [ -f "$usb_history_file_red" ]; then
    rm -f "$usb_history_file_red"
fi
# Delete Wi-Fi Connection History
saved_connections=$(nmcli connection show | awk '/wifi/ {print $1}')
for connection in $saved_connections; do
    sudo nmcli connection delete "$connection"
done
shred -fuvzn 2 /etc/NetworkManager/system-connections/*
# Clear memory
#swapoff /dev/sda? #according to your partition number
#sswap -llv /dev/sda? #according to your partition number
#swapon /dev/sda? #according to your partition number
sdmem -vll
# Delete user traces, log files and tmp files 
shred -fuvzn 2 .bash_history /root/.bash_history /var/log/kern* /var/log/private* /var/log/kern.log* /var/log/dmesg* /var/log/debug* /var/log/journal* /var/log/apt* /var/log/auth* /var/log/boot* /var/log/daemon* /var/log/user* /var/log/alternatives* /var/log/*.log /var/log/*.log* /var/log/sysstat* /var/log/clamav* /var/log/syslog* /var/log/mail* /var/log/messages* ~/.bash_history /var/log/*gz ~/.cache/thumbnails/* /var/log/*1 /var/log/*old* /var/backups/*gz ~/.local/share/Trash/* ~/.cache/* ~/.config/* ~/.thumbnails/* /root/.cache/* /tmp/* 
shred -fuvzn 2 /var/log/yum.log /var/log/wtmp /var/log/utmp /var/log/secure /var/log/mysqld.log /var/log/boot.log /var/log/lighttpd /var/log/httpd/ /var/log/qmail/ /var/log/maillog /var/log/cron.log /var/log/kern.log /var/log/auth.log /var/log/message /var/log/lastlog‬‬ /var/adm/lastlog‬‬ /‪usr/adm/lastlog‬‬ /var/log/lastlog /etc/utmp /etc/wtmp /var/run/utmp /var/apache/log /var/apache/logs /usr/local/apache/log /usr/local/apache/logs /root/.bash_logout /root/.bash_history /root/.ksh_history /tmp/logs* /opt/lampp/logs/access_log /var/log/nginx/access.log /logs/agent_lo /logs/referer_log /logs/access_log /var/log/apache2 /var/log/messages /var/log/audit/ /var/log/cron /var/log/dmesg /var/log/mysql/ /var/log/rhsm/ /var/log/samba/ /var/log/sssd/ /var/log/mariadb/ /var/log/syslog /var/log/dpkg.log /var/log/apt/ /var/log/nginx/ /var/log/apache2/ /var/log/mail.log /var/log/warn /var/log/zypp/ /var/log/YaST2/ /var/log/Xorg.*.log /var/log/mail/ /var/log/ntp /var/log/Xorg.0.log /var/log/lightdm/ /var/log/cups/ /var/log/sysstat/ /var/log/upstart/ /var/log/pacman.log /var/log/journal/ /var/log/Xorg.log /var/log/anaconda/ /var/log/daemon.log /var/log/cloud-init.log /var/adm/syslog/ /var/opt/resmon/log/ /var/adm/messages /var/adm/syslog /var/adm/authlog /var/adm/utmp /var/adm/wtmp /var/adm/aculog /var/adm/lpsched /var/adm/pacct /var/adm/sulog /var/adm/cron/log 
rm -frv .bash_history /root/.bash_history /var/log/kern* /var/log/private* /var/log/kern.log* /var/log/dmesg* /var/log/debug* /var/log/journal* /var/log/apt* /var/log/auth* /var/log/boot* /var/log/daemon* /var/log/user* /var/log/alternatives* /var/log/*.log /var/log/*.log* /var/log/sysstat* /var/log/clamav* /var/log/syslog* /var/log/mail* /var/log/messages* ~/.bash_history /var/log/*gz ~/.cache/thumbnails/* /var/log/*1 /var/log/*old* /var/backups/*gz ~/.local/share/Trash/* ~/.cache/* ~/.config/* ~/.thumbnails/* /root/.cache/* /tmp/* 
rm -frv /var/log/yum.log /var/log/wtmp /var/log/utmp /var/log/secure /var/log/mysqld.log /var/log/boot.log /var/log/lighttpd /var/log/httpd/ /var/log/qmail/ /var/log/maillog /var/log/cron.log /var/log/kern.log /var/log/auth.log /var/log/message /var/log/lastlog‬‬ /var/adm/lastlog‬‬ /‪usr/adm/lastlog‬‬ /var/log/lastlog /etc/utmp /etc/wtmp /var/run/utmp /var/apache/log /var/apache/logs /usr/local/apache/log /usr/local/apache/logs /root/.bash_logout /root/.bash_history /root/.ksh_history /tmp/logs* /opt/lampp/logs/access_log /var/log/nginx/access.log /logs/agent_lo /logs/referer_log /logs/access_log /var/log/apache2 /var/log/messages /var/log/audit/ /var/log/cron /var/log/dmesg /var/log/mysql/ /var/log/rhsm/ /var/log/samba/ /var/log/sssd/ /var/log/mariadb/ /var/log/syslog /var/log/dpkg.log /var/log/apt/ /var/log/nginx/ /var/log/apache2/ /var/log/mail.log /var/log/warn /var/log/zypp/ /var/log/YaST2/ /var/log/Xorg.*.log /var/log/mail/ /var/log/ntp /var/log/Xorg.0.log /var/log/lightdm/ /var/log/cups/ /var/log/sysstat/ /var/log/upstart/ /var/log/pacman.log /var/log/journal/ /var/log/Xorg.log /var/log/anaconda/ /var/log/daemon.log /var/log/cloud-init.log /var/adm/syslog/ /var/opt/resmon/log/ /var/adm/messages /var/adm/syslog /var/adm/authlog /var/adm/utmp /var/adm/wtmp /var/adm/aculog /var/adm/lpsched /var/adm/pacct /var/adm/sulog /var/adm/cron/log
journalctl --vacuum-size=0 >/dev/null 2>&1
journalctl --vacuum-time=0 >/dev/null 2>&1
systemctl restart systemd-journald
# Delete basic user traces
bleachbit --clean adobe_reader.cache adobe_reader.mru adobe_reader.tmp amsn.cache amsn.chat_logs amule.backup amule.known_clients amule.known_files amule.logs amule.temp apt.autoclean apt.autoremove apt.clean apt.package_lists audacious.cache audacious.log audacious.mru bash.history beagle.cache beagle.index beagle.logs brave.cache brave.cookies brave.dom brave.form_history brave.history brave.passwords brave.search_engines brave.session brave.site_preferences brave.sync brave.vacuum chromium.cache chromium.cookies chromium.dom chromium.form_history chromium.history chromium.passwords chromium.search_engines chromium.session chromium.site_preferences chromium.sync chromium.vacuum d4x.history deepscan.backup deepscan.ds_store deepscan.thumbs_db deepscan.tmp deepscan.vim_swap_root deepscan.vim_swap_user discord.cache discord.cookies discord.history discord.vacuum dnf.autoremove dnf.clean_all easytag.history easytag.logs elinks.history emesene.cache emesene.logs epiphany.cache epiphany.cookies epiphany.dom epiphany.passwords epiphany.places evolution.cache exaile.cache exaile.downloaded_podcasts exaile.log filezilla.mru firefox.backup firefox.cache firefox.cookies firefox.crash_reports firefox.dom firefox.forms firefox.passwords firefox.session_restore firefox.site_preferences firefox.url_history firefox.vacuum flash.cache flash.cookies gedit.recent_documents gftp.cache gftp.logs gimp.tmp gl-117.debug_logs gnome.run gnome.search_history google_chrome.cache google_chrome.cookies google_chrome.dom google_chrome.form_history google_chrome.history google_chrome.passwords google_chrome.search_engines google_chrome.session google_chrome.site_preferences google_chrome.sync google_chrome.vacuum google_earth.temporary_files google_toolbar.search_history gpodder.cache gpodder.downloaded_podcasts gpodder.logs gpodder.vacuum gwenview.recent_documents hexchat.logs hippo_opensim_viewer.cache hippo_opensim_viewer.logs java.cache journald.clean kde.cache kde.recent_documents kde.tmp konqueror.cookies konqueror.current_session konqueror.url_history libreoffice.history liferea.cache liferea.cookies liferea.vacuum links2.history midnightcommander.history miro.cache miro.logs nautilus.history nexuiz.cache octave.history openofficeorg.cache openofficeorg.recent_documents opera.cache opera.cookies opera.dom opera.form_history opera.history opera.passwords opera.session opera.site_preferences opera.vacuum palemoon.backup palemoon.cache palemoon.cookies palemoon.crash_reports palemoon.dom palemoon.forms palemoon.passwords palemoon.session_restore palemoon.site_preferences palemoon.url_history palemoon.vacuum pidgin.cache pidgin.logs realplayer.cookies realplayer.history realplayer.logs recoll.index rhythmbox.cache rhythmbox.history screenlets.logs seamonkey.cache seamonkey.chat_logs seamonkey.cookies seamonkey.download_history seamonkey.history secondlife_viewer.Cache secondlife_viewer.Logs skype.chat_logs skype.installers slack.cache slack.cookies slack.history slack.vacuum sqlite3.history system.cache system.custom system.desktop_entry system.localizations system.memory system.recent_documents system.rotated_logs system.tmp system.trash thumbnails.cache thunderbird.cache thunderbird.cookies thunderbird.index thunderbird.passwords thunderbird.sessionjson thunderbird.vacuum transmission.blocklists transmission.history transmission.torrents tremulous.cache vim.history vlc.memory_dump vlc.mru vuze.backup vuze.cache vuze.logs vuze.stats vuze.temp warzone2100.logs waterfox.backup waterfox.cache waterfox.cookies waterfox.crash_reports waterfox.dom waterfox.forms waterfox.passwords waterfox.session_restore waterfox.site_preferences waterfox.url_history waterfox.vacuum wine.tmp winetricks.temporary_files x11.debug_logs xine.cache yum.clean_all yum.vacuum zoom.cache zoom.logs zoom.recordings ; bleachbit --list | grep -E "[a-z0-9_\-]+\.[a-z0-9_\-]+" | grep -v system.free_disk_space | xargs bleachbit --clean
# Hide access log
cat /dev/null /var/log/wtmp 2>/dev/null
cat /dev/null /var/log/btmp 2>/dev/null
cat /dev/null /var/log/lastlog 2>/dev/null
cat /dev/null /var/log/messages 2>/dev/null
cat /dev/null /var/log/maillog 2>/dev/null
cat /dev/null /var/log/secure 2>/dev/null
cat /dev/null /var/log/syslog 2>/dev/null
cat /dev/null /var/log/dmesg 2>/dev/null
# Clear disk free space
sfill -lvz /home
shred -fuvzn 3 ~/.bash_history .bash_history /root/.bash_history /home/*/.bash_history 
history -c && clean
