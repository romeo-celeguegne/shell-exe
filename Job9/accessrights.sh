MY_INPUT='/home/romeo/Documents/Shell.exe/Job9/Shell_Userlist.csv'
declare -a ID
declare -a PRENOM
declare -a NOM
declare -a MOT_DE_PASSE
declare -a ROLE
while IFS=, read -r COL1 COL2 COL3 COL4 COL5; do
    ID+=("$COL1")
    PRENOM+=("$COL2")
    NOM+=("$COL3")
    MOT_DE_PASSE+=("$COL4")
    ROLE+=("$COL5")
done <"$MY_INPUT"

for index in "${!PRENOM[@]}"; do
   sudo useradd -d "/home/${PRENOM[$index]}" -s /bin/bash -p "$(echo "${MOT_DE_PASSE[$index]}" | openssl passwd -1 -stdin)" -u "${ID[$index]}" --badnames "${PRENOM[$index]}-${NOM[$index]}"
if [ "${ROLE[$index]}" == Admin ]
then
sudo usermod -aG sudo "${PRENOM[index]}-${NOM[$index]}"
fi
done

