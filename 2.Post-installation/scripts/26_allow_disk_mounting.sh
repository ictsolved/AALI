# #!/bin/bash
# #Needed for i3-wm
# echo "Enabling Disk Mounting for PCManFM"
# echo 'polkit.addRule(function(action, subject) {
#    if ((action.id == "org.freedesktop.udisks2.filesystem-mount-system" &&
#       subject.local && subject.active && subject.isInGroup("storage")))
#       {
#          return polkit.Result.YES;
#       }
# });' | sudo tee --append /etc/polkit-1/rules.d/00-mount-internal.rules
# echo

# echo "Adding User to storage group"
# #replace sarad with your username
# sudo usermod -aG storage sarad
# echo