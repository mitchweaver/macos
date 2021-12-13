# Time Machine over SMB

Time Machine is an amazing thing. Annoyingly trying to back up to a
regular Windows/Linux network share is not that intuitive.

## Preface

This is not "officially" supported, as Apple of course wants you to buy
a Time Capsule device which is really just a SMB server on Apple
hardware.

To override this, and allow any SMB server that allows "fruit"
connection parameters, put this in your Mac's `~/.profile`:

```
# allow time machine to backup to samba/nfs
defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1
```

## Guide

Here is an example configuration file that has all the info you need to
get your Time Machine backups working. Simply copy paste the file and
change your file paths.

For example, my RAID array is `/mnt/array`, and a folder I am using for
the backups is `/mnt/array/Time Machine`

You will also need to create a user and group, in my example these are
both `samba`

Example:

```
apt install -y samba-common cifs-utils winbind
useradd samba
passwd samba
groupadd samba
mkdir -p /home/samba
chown -R samba /home/samba
smbpasswd -a samba
mv -f smb.conf /etc/samba/
systemctl start smbd winbind
systemctl enable smbd winbind
```

## And you're done!

You should now be able to add this location as a "drive" for Time
Machine.

![networked_time_machine_drive](https://i.imgur.com/SUOsmsj.png)
