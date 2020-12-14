#!/bin/bash

array=()
part=(1 2 3 4 5 6 7 8 9 10)

while true; do
        array+=(${part[@]})
        if [ "${#array[@]}" -gt "$1" ]; then
                break
        fi
done
[user@localhost lab5]$ ^C
[user@localhost lab5]$ cat test_newmem.bash 
#!/bin/bash

for i in $(seq 1 $1); do
        sleep 1
        ./newmem.bash $2&
done
