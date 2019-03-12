#!/bin/bash

function install_utilities() {
    sudo apt install vim neovim stow tmux htop ctags
}

function install_docker() {
    if [ -x "$(command -v docker)" ]; then
        echo "Docker is already installed; skipping..."
        return
    fi

    # install the prereqs
    sudo apt install apt-transport-https ca-certificates curl software-properties-common

    # add the docker key
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    # add the docker repo and update apt
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update

    # install it
    sudo apt install docker-ce
    sudo usermod -aG docker ${USER}
}

function install_docker_compose() {
    if [ -x "$(command -v docker-compose)" ]; then
        echo "Docker Compose is already installed; skipping..."
        return
    fi

    # this makes me uncomfortable
    sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}

function install_asdf() {
    if [ -x "$(command -v asdf)" ]; then
        echo "asdf is already installed; skipping..."
        return
    fi

    # install prereqs
    sudo apt install automake libssl-dev autoconf libncurses5-dev

    # install the tool
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0

}

function install_google_cloud_sdk() {
    if [ -x "$(command -v gsutil)" ]; then
        echo "google cloud sdk is already installed; skipping..."
        return
    fi

    # Create environment variable for correct distribution
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

    # Add the Cloud SDK distribution URI as a package source
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

    # Import the Google Cloud Platform public key
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

    sudo apt update
    sudo apt install google-cloud-sdk
}

function install_pyenv() {
    if [ -x "$(command -v pyenv)" ]; then
        echo "pyenv is already installed; skipping..."
        return
    fi

    # install the prereqs
    sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev

    # we sure do love installing things from random scripts on github these days -_-
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
}

# Note: this must be run *after* pyenv is setup and in use
function setup_pynvim() {
    pip3 install --user --upgrade pynvim
    pip3 install --user --upgrade jedi
}

function install_ctags() {
    sudo apt install autoconf
    mkdir -p ~/.install
    cd ~/.install
    git clone https://github.com/universal-ctags/ctags.git
    cd ctags
    ./autogen.sh
    ./configure
    make
    sudo make install
}

#install_utilities # TODO
install_docker
install_docker_compose
install_asdf
install_google_cloud_sdk
install_pyenv
install_ctags

