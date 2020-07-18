UBUNTU_VER=$(lsb_release -sc)

# X Window environment
if [ "$UBUNTU_VER" = "xenial" ]; then
    sudo add-apt-repository -y ppa:embrosyn/cinnamon
    sudo apt -y update
    sudo apt -y install cinnamon
fi
if [ "$UBUNTU_VER" = "bionic" ]; then
    sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
    sudo apt -y install cinnamon
    sudo apt -y install fcitx-mozc
    # lightdmを入れるとディスプレイマネージャーをgdmかlightdmにするか聞かれるのでlightdmを選択する
    sudo apt -y install lightdm
fi
if [ "$UBUNTU_VER" = "focal" ]; then
    sudo apt -y install cinnamon-desktop-environment
fi

