#!/bin/bash
# Output Current PHP Version
php -v

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":$HOME$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
