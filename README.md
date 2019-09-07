# Custom Kali Linux Docker
This Kali is a custom kali .
I add a 
 - openssh-server,serve at port22
 - top10 kali tool
 - zsh and oh-my-zsh
 - git

# environments
 - SSHD_PORT : set ssh server port ,default 22
 - PUBLIC_KEY : set the authorized_key ,default blank

## todo
 -[ ]: set default root password

# additional custom
You could change the `Dockerfile-custom` and add the following meta packet .
For details about Kali Linux metapackages, check https://www.kali.org/news/kali-linux-metapackages/
 - kali-linux
 - kali-linux-all
 - kali-linux-forensic
 - kali-linux-full
 - kali-linux-gpu
 - kali-linux-pwtools
 - kali-linux-rfid
 - kali-linux-sdr
 - kali-linux-top10
 - kali-linux-voip
 - kali-linux-web
 - kali-linux-wireless

👇👇👇👇👇👇👇👇👇👇👇👇Official Kali Linux Docker👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇👇
# Official Kali Linux Docker
This Kali Linux Docker image provides a minimal base install of the latest version of the Kali Linux Rolling Distribution.
There are no tools added to this image, so you will need to install them yourself. 
For details about Kali Linux metapackages, check https://www.kali.org/news/kali-linux-metapackages/

# REQUIRES EXPERIMENTAL TO BE TURNED ON
Due to --squash being passed to the docker daemon, if experimental features
aren't turned on in your daemon, the build.sh script will fail.

On Kali, this is done via /etc/docker/daemon.json having the following contents:

```
{
    "experimental": true
}
```

Note: This is only a requirement for us at Offensive Security to reduce the image size when we push a new image to Docker Hub.
If you're building for personal use, you can remove the `--squash` option in build.sh

Mon Sep 2 16:14:06 EDT 2019

