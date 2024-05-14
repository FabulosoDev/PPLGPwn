clear 

GREEN='\033[0;92m' 
BLUE='\033[0;94m'
PURPLE='\033[0;95m'
CYAN='\033[0;96m'
NC='\033[0m' # No Color

echo -e "${GREEN}


8888888b.  8888888b.  888      .d8888b.  8888888b.  888       888 888b    888 
888   Y88b 888   Y88b 888     d88P  Y88b 888   Y88b 888   o   888 8888b   888 
888    888 888    888 888     888    888 888    888 888  d8b  888 88888b  888 
888   d88P 888   d88P 888     888        888   d88P 888 d888b 888 888Y88b 888 
8888888P   8888888P   888     888  88888 8888888P   888d88888b888 888 Y88b888 
888        888        888     888    888 888        88888P Y88888 888  Y88888 
888        888        888     Y88b  d88P 888        8888P   Y8888 888   Y8888 
888        888        88888888 Y8888P88  888        888P     Y888 888    Y888 

${NC}
Designed for LG webOS TVs! Ported by ${PURPLE}Kodeine${NC}, with luv <3
With the contribution of ${BLUE}llbranco${NC} & ${BLUE}FabulosoDev${NC}!
Version: v1.2

${CYAN}-------
INSTALLATION
-------${NC}
"
echo -e "

${CYAN}-------
Choose firmware version...
-------${NC}
"
read -p "Firmware version (900-1100): " fmv
echo -e "

${CYAN}-------
Downloading files...
-------${NC}
"
mkdir -p /media/internal/downloads/PPLGPwn
curl -k -L -o /media/internal/downloads/PPLGPwn/pppwn https://github.com/FabulosoDev/PPLGPwn/raw/main/pppwn
curl -k -L -o /media/internal/downloads/PPLGPwn/run.sh https://github.com/FabulosoDev/PPLGPwn/raw/main/run.sh
curl -k -L -o /media/internal/downloads/PPLGPwn/stage1.bin https://github.com/FabulosoDev/PPLGPwn/raw/main/stage1/$fmv/stage1.bin
curl -k -L -o /media/internal/downloads/PPLGPwn/stage2.bin https://github.com/FabulosoDev/PPLGPwn/raw/main/stage2/$fmv/stage2.bin

echo -e "Done!

${CYAN}-------
Writing settings...
-------${NC}
"

echo "
interface=eth0
firmver=$fmv
stage1=/media/internal/downloads/PPLGPwn/stage1.bin
stage2=/media/internal/downloads/PPLGPwn/stage2.bin
" > /media/internal/downloads/PPLGPwn/settings.config
echo "Done!
"
echo "If you wish to change the stage2.bin go into /media/internal/downloads/PPLGPwn and replace the exisiting stage2.bin!
"
echo "To run the exploit execute "run.sh" present in the mentioned directory! But to make it simplier follow the steps to execute the exploit with the click of a button! :)"
echo "Enjoy ;)"

luna-send -a webosbrew -f -n 1 luna://com.webos.notification/createToast '{"sourceId":"webosbrew","message": "<b>PPLGPwn installed.</b>"}'

echo "Running PPLGPWN in 3 seconds..."
sleep 3

cd /media/internal/downloads/PPLGPwn
chmod +x ./run.sh
./run.sh
