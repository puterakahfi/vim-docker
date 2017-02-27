# vim-docker
vim docker


# how to use 
- clone this repo 
   git clone git@github.com:puterakahfi/vim-docker.git
- change directory to vim-docker
- execute :
```  
docker-compose build
docker-compose up -d
```  

- to execute vim docker, just use :
```
   docker exec  -it myvim vim $PWD
```
or you can create an alias for this vim :

alias vim="docker exec -it myvim vim $PWD" 
to make this alias permanent, copy to your ~/.bashrc_aliases or if you are using zsh, oh-my-zsh copy to ~/.zshrc

