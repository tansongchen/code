FROM codercom/code-server

RUN code-server --install-extension ms-ceintl.vscode-language-pack-zh-hans

RUN sudo apt-get update && sudo chown -R coder:coder /home/coder/.local

COPY init.sh /usr/bin/init.sh

ENTRYPOINT ["/usr/bin/init.sh"]
