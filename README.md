
             ██▓███   █     █░███▄    █ 
            ▓██░  ██▒▓█░ █ ░█░██ ▀█   █ 
            ▓██░ ██▓▒▒█░ █ ░█▓██  ▀█ ██▒
            ▒██▄█▓▒ ▒░█░ █ ░█▓██▒  ▐▌██▒
            ▒██▒ ░  ░░░██▒██▓▒██░   ▓██░
            ▒▓▒░ ░  ░░ ▓░▒ ▒ ░ ▒░   ▒ ▒ 
            ░▒ ░       ▒ ░ ░ ░ ░░   ░ ▒░
            ░░         ░   ░    ░   ░ ░ 
                         ░            ░ 
                                        
                ██▒   █▓ ███▄ ▄███▓     
               ▓██░   █▒▓██▒▀█▀ ██▒     
                ▓██  █▒░▓██    ▓██░     
                 ▒██ █░░▒██    ▒██      
                  ▒▀█░  ▒██▒   ░██▒     
                  ░ ▐░  ░ ▒░   ░  ░     
                  ░ ░░  ░  ░      ░     
                    ░░  ░      ░        
                     ░         ░        
                    ░                   

## What is pwnvm?
**pwnvm** is a vagrant box made for your life easier during pwning!

## Getting started
You can download the box directly from VagrantCloud:
- `vagrant init therealbobo/pwnvm`
- `vagrant up`
- `vagrant ssh`

Or you can built it yourself (you'll need packer):
- `git clone https://github.com/therealbobo/pwnvm`
- `cd pwnvm`
- `packer build config_local.json`
- `vagrant box add --name pwnvm output-vagrant/package.box`
- `vagrant init pwnvm`
- `vagrant up`
- `vagrant ssh`

## What's included?

| Name     | Category |
|----------|----------|
| gdb      | Debug    |
| tmux     | Utility  |
| nasm     | Compile  |
| socat    | Utility  |
| pwntools | Utility  |
| peda     | Debug    |
| radare2  | Reverse  |

