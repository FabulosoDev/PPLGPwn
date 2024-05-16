# PPLGPwn
A method of running PPPwn on rooted LG TV's.
This method uses the C++ version of PPPwn, made by xfangfang, the link to the repo it's this one:
https://github.com/xfangfang/PPPwn_cpp

It provides a new way to jailbreak your PS4, using a rooted LG TV.
For more information on which firmwares are supported, check out the link above.

![image](https://github.com/FabulosoDev/PPLGPwn/assets/113933725/e971217e-9847-47b7-b3d9-92ad85f050c1)

## Changes compared to [zauceee/PPLGPwn](https://github.com/zauceee/PPLGPwn)
- use curl instead of wget to download files
- automatic download of stage1.bin & stage2.bin based on chosen PS4 firmware version

Special thanks to [@TheOfficialFloW](https://github.com/TheOfficialFloW) [@SiSTR0](https://github.com/SiSTR0) [@xfangfang](https://github.com/xfangfang) [@zauceee](https://github.com/zauceee) [@llbranco](https://github.com/llbranco) [@PSGO](https://github.com/PSGO)

## Requirements
- Rooted LG TV
- Ethernet cable
- Device to connect to the TV through SSH (PC: [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html) / Android: [ConnectBot](https://play.google.com/store/apps/details?id=org.connectbot)])

## Jailbreaking your LG TV

To run PPLGPwn you'll need to root your LG TV, the root itself it supported by a couple of models, check both exploits to see if your TV is capable of doing so, more steps on how to root it and enable SSH aswell are available there:
#### Dejavuln: https://github.com/throwaway96/dejavuln-autoroot
#### Root my TV: https://rootmy.tv/

## Install & run PPLGPwn

After jailbreaking your own TV (ironically, we are using a jailbroken TV to jailbreak another device 😁), you need to connect to your TV via SSH and download and run `install.sh` using this command:

```
curl -fsSLO https://github.com/FabulosoDev/PPLGPwn/raw/main/install.sh && chmod +x ./install.sh && ./install.sh
```

### On your PS4:
1. Connect your PS4 to your TV using the Ethernet port

2. Go to `Settings` and then `Network`

3. Select `Set Up Internet connection` and choose `Use a LAN Cable`

4. Choose `Custom` setup and choose `PPPoE` for `IP Address Settings`

5. Enter anything for `PPPoE User ID` and `PPPoE Password`

6. Choose `Automatic` for `DNS Settings` and `MTU Settings`

7. Choose `Do Not Use` for `Proxy Server`

8. Press the `X` button on your controller on `Test Internet Connection`

ALWAYS wait for your console to display the message `Cannot connect to network: (NW-31274-7)` before attempting this PPPOE injection again.

If the exploit fails or the PS4 crashes, you can skip the internet setup and just click on `Test Internet Connection`.

If the exploit works, you should see an output via SSH similar to the following. In addition you should see `Cannot connect to network` followed by `PPPwned` displayed as notification on your PS4, or vice versa.

```sh
[+] PPPwn - PlayStation 4 PPPoE RCE by theflow
[+] args: interface=enp0s3 fw=1100 stage1=stage1/stage1.bin stage2=stage2/stage2.bin

[+] STAGE 0: Initialization
[*] Waiting for PADI...
[+] pppoe_softc: 0xffffabd634beba00
[+] Target MAC: xx:xx:xx:xx:xx:xx
[+] Source MAC: 07:ba:be:34:d6:ab
[+] AC cookie length: 0x4e0
[*] Sending PADO...
[*] Waiting for PADR...
[*] Sending PADS...
[*] Waiting for LCP configure request...
[*] Sending LCP configure ACK...
[*] Sending LCP configure request...
[*] Waiting for LCP configure ACK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure NAK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure ACK...
[*] Sending IPCP configure request...
[*] Waiting for IPCP configure ACK...
[*] Waiting for interface to be ready...
[+] Target IPv6: fe80::2d9:d1ff:febc:83e4
[+] Heap grooming...done

[+] STAGE 1: Memory corruption
[+] Pinning to CPU 0...done
[*] Sending malicious LCP configure request...
[*] Waiting for LCP configure request...
[*] Sending LCP configure ACK...
[*] Sending LCP configure request...
[*] Waiting for LCP configure ACK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure NAK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure ACK...
[*] Sending IPCP configure request...
[*] Waiting for IPCP configure ACK...
[+] Scanning for corrupted object...found fe80::0fdf:4141:4141:4141

[+] STAGE 2: KASLR defeat
[*] Defeating KASLR...
[+] pppoe_softc_list: 0xffffffff884de578
[+] kaslr_offset: 0x3ffc000

[+] STAGE 3: Remote code execution
[*] Sending LCP terminate request...
[*] Waiting for PADI...
[+] pppoe_softc: 0xffffabd634beba00
[+] Target MAC: xx:xx:xx:xx:xx:xx
[+] Source MAC: 97:df:ea:86:ff:ff
[+] AC cookie length: 0x511
[*] Sending PADO...
[*] Waiting for PADR...
[*] Sending PADS...
[*] Triggering code execution...
[*] Waiting for stage1 to resume...
[*] Sending PADT...
[*] Waiting for PADI...
[+] pppoe_softc: 0xffffabd634be9200
[+] Target MAC: xx:xx:xx:xx:xx:xx
[+] AC cookie length: 0x0
[*] Sending PADO...
[*] Waiting for PADR...
[*] Sending PADS...
[*] Waiting for LCP configure request...
[*] Sending LCP configure ACK...
[*] Sending LCP configure request...
[*] Waiting for LCP configure ACK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure NAK...
[*] Waiting for IPCP configure request...
[*] Sending IPCP configure ACK...
[*] Sending IPCP configure request...
[*] Waiting for IPCP configure ACK...

[+] STAGE 4: Arbitrary payload execution
[*] Sending stage2 payload...
[+] Done!
```

## Run PPLGPwn with a single press on your TV remote
1. Head to the [Homebrew Store](https://www.webosbrew.org/) app and download [LG Input Hook](https://repo.webosbrew.org/apps/org.webosbrew.inputhook/)

2. Open the LG Input Hook and go to the link the app gives you in a device that has a web browser (you can also do this on your TV, but it will take longer)

3. Set this custom `Execute` action on any button you'd like:

```
cd /media/internal/downloads/PPLGPwn && chmod +x ./run.sh && ./run.sh
```   

4. Save your changes

**And done!** The button you set up with the custom action will now execute the exploit every time you press it!

## How to run GoldHEN on PS4 9.00 / 11.00 using PPLGPwn
1. Download `goldhen.bin` from [goldhen directory](https://github.com/FabulosoDev/PPLGPwn/tree/main/goldhen) 

2. Copy it to the root of an USB stick (formatted as FAT32 or exFAT)  
(Do NOT rename it! The name should be exactly `goldhen.bin`)

3. Plug the USB stick into your PS4
    
4. Run the PPPwn exploit  
    At this point this should automatically:
    1. run PPPwn stage1.bin

    2. trigger stage2.bin from SiSTR0 which will look for `goldhen.bin` on the inserted USB stick

    3. stage2.bin will copy `goldhen.bin` from the USB stick to `/data/GoldHEN/payloads/goldhen.bin` to your console's hard drive.

         **Note:** From this point on, you shouldn't need the USB stick the next time you want to run the exploit, as you now have a local copy of goldhen on your hard drive.  
        (If you use the USB stick in the future, it will overwrite the local copy again. Probably useful for updates of goldhen etc.)
        
    4. GoldHEN should start at this point

# NOTES
**!! This exploit is made for LG TV's with the armv7 architecture, I'm not sure if it works on other architectures !!**

To find out your TV chip architecture connect to your TV via SSH and run `uname -m`

Thanks to the OpenLGTV and RootMyTV communities for giving us this LG TV jailbreak.  
Thanks also to everyone in the PS4 jailbreaking community who gave us the exploits!
And also thanks to all the contributors!
