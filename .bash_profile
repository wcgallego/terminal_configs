alias vi=vim
alias webroot="cd ~/development/Etsyweb"

source /etc/bash_gitprompt
source /etc/bash_gitcompletion

eval $(dbaliases)
alias remove_old_tmp_images='find /tmp -maxdepth 1 -daystart -mmin +59 -type f -name "*.jpg" | grep "dynamic_s3_photo*" | xargs sudo rm'
