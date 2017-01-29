from haskell

env VER=1.1
env USER=paolino

run apt-get update
run apt-get install -y ssh
run apt-get install -y bash-completion

run userdel ${USER}
RUN useradd -ms /bin/bash ${USER}

CMD bash -c "cd /src && bash"
