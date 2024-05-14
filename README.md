# PPLGPwn
A method of executing PPPwn through rooted LGTV's.
This method is using the C++ version of PPPwn, made by xfangfang, the link to the repo it's this one:
https://github.com/xfangfang/PPPwn_cpp

It provides a new way of jailbreaking your PS4, using a rooted LGTV.
For more information of which firmwares are supported, visit the link above.

![image](https://github.com/zauceee/PPLGPwn/assets/37784801/068d16b5-051e-4f22-bdf7-b0e3b46e6590)

## Changes compared to [zauceee/PPLGPwn](https://github.com/zauceee/PPLGPwn)
- use curl instead of wget to download files
- automatically downloading stage1.bin & stage2.bin based an chosen firmware version

Special thanks to [@TheOfficialFloW](https://github.com/TheOfficialFloW) [@xfangfang](https://github.com/xfangfang) [@zauceee](https://github.com/zauceee) [@llbranco](https://github.com/llbranco) [@PSGO](https://github.com/PSGO)

## Requirements
- Rooted LGTV
- Ethernet cable
- Device to connect to the TV thru ssh (You can use a phone)

## Jailbreak your LG TV

To run PPLGPwn you'll need to root your LGTV, the root itself it supported by a couple of models, check both exploits to see if your TV is capable of doing so, more steps on how to root it and activate SSH aswell are available there:
### Dejavuln: https://github.com/throwaway96/dejavuln-autoroot
### Root my TV: https://rootmy.tv/

## Install & launch PPLGPwn

After you jailbreak your own TV (ironic on how we use a jailbroken TV to jailbreak another device lol), you will need to connect to your TV via SSH and download/run the ```install.sh``` through this command:

```
curl -k -L -O https://github.com/FabulosoDev/PPLGPwn/raw/main/install.sh && ./install.sh
```

### On your PS4:
1. Connect your PS4 to your TV through the Ethernet port

2. Go to ```Settings``` and then ```Network```

3. Select ```Set Up Internet connection``` and choose ```Use a LAN Cable```

4. Choose ```Custom``` setup and choose ```PPPoE``` for ```IP Address Settings```

5. Enter anything for ```PPPoE User ID``` and ```PPPoE Password```

6. Choose ```Automatic``` for ```DNS Settings``` and ```MTU Settings```

7. Choose ```Do Not Use``` for ```Proxy Server```

8. Press the ```X``` button on your controller on ```Test Internet Connection```

ALWAYS wait for you console to show the message ```Cannot connect to network: (NW-31274-7)``` before trying this PPPOE injection again.

If the exploit fails or the PS4 crashes, you can skip the internet setup and simply click on ```Test Internet Connection```.

If the exploit works, you should see an output similar to below, and you should see ```Cannot connect to network```. followed by ```PPPwned``` printed on your PS4, or the other way around.

## Execution with a single click on your TV remote
1. Head to the [Homebrew Store](https://www.webosbrew.org/) app and download [LG Input Hook](https://repo.webosbrew.org/apps/org.webosbrew.inputhook/)

2. Open the LG Input Hook and head to the link the app gives you in a device that has a web browser (you can also do this in your TV, but it will take more time)

3. Setup this custom ```Execute``` action to any button you'd like:

```
cd /media/internal/downloads/PPLGPwn && chmod +x ./run.sh && ./run.sh
```   

4. Save your changes

**And done!** The button you setup with the custom action will now execute the exploit everytime you press it!

# NOTES
!! This exploit is made for TV's with the armv7, I'm unsure if it works on any other different arch, to know your TV chip architecture run ```uname -m``` !!

!! This exploit stage2 runs LightningMod's load from usb payload !!

Proudly **🇵🇹** <3

Thanks to the OpenLGTV and the RootMyTV communities that gave us this TV Jailbreak
Also a thanks to everyone in the PS4 jailbreaking community that gave us the exploits!
And also thanks to all the contributors!
