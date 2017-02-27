FROM phusion/baseimage:latest
USER root


RUN apt-get install -y software-properties-common

RUN apt-get update && \
    apt-get install -y --force-yes \
        vim \
        git \
    && apt-get clean


#RUN mkdir  -p ~/.local/share/fonts/ && cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf


ARG INSTALL_SPACEVIM=false
ENV INSTALL_SPACEVIM ${INSTALL_SPACEVIM}

RUN if [ ${INSTALL_SPACEVIM} = true ]; then \
  # Install the PHP SOAP extension
  curl -sLf https://spacevim.org/install.sh | bash -s -- -h \
;fi

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


