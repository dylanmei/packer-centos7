# Install VBoxGuestAdditions
mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run --nox11
umount /mnt
rm -f /home/vagrant/VBoxGuestAdditions.iso
