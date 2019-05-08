#!/usr/bin/env bash

echo "\n>>>>>>>>>>>> exists >>>>>>>>>>>>>>>>>>>"
# query the encrypt status
curl http:/root:toor@confserver.ailu.internal:9999/admin/user/exists/sta

echo "\n>>>>>>>>>>>> encrypt status >>>>>>>>>>>>>>>>>>>"

# query the encrypt status
curl  http:/root:toor@confserver.ailu.internal:9999/encrypt/status

echo "\n>>>>>>>>>>>> encrypt asdf >>>>>>>>>>>>>>>>>>>"

# encrypt
curl  http:/root:toor@confserver.ailu.internal:9999/encrypt -d asdf

echo "\r\n>>>>>>>>>> change root password >>>>>>>>>>>>>>>>>>>>>"
# change root password

# return false
curl  http:/root:toor@confserver.ailu.internal:9999/admin/pass/root/root

echo "\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

# return true
curl  http:/root:toor@confserver.ailu.internal:9999/admin/pass/toor/root
echo "\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"


# return true
curl  http:/root:root@confserver.ailu.internal:9999/admin/pass/root/toor



echo "\n>>>>>>>>>> gen new token >>>>>>>>>>>>>>>>>>>>>"

# gen new token
curl  http:/root:toor@confserver.ailu.internal:9999/admin/token


echo "\n>>>>>>>>>> set ws token >>>>>>>>>>>>>>>>>>>>>"

# add new token of given app
curl  http:/root:toor@confserver.ailu.internal:9999/admin/add/ws/token:token@


echo "\n>>>>>>>>>>> query the ws token >>>>>>>>>>>>>>>>>>>>"

# query the token of given app
curl  http:/root:toor@confserver.ailu.internal:9999/admin/ws/token


echo "\n>>>>>>>>>>> End test >>>>>>>>>>>>>>>>>>>>"

