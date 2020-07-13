#!/bin/bash

install_path=${HOME}

if [[ ! -d "/usr/local/Cellar" ]]
then
    echo "Homebrew is not installed on your system"
    echo
    exit 1
fi

function update_brew {
    echo "Upgrading and updating brew dependencies "
    echo
    brew update
    brew upgrade
}

function install_brew_dependency {
    echo "Installing brew dependencies: "
    echo ${base_deps[@]}
    echo
    brew install ${base_deps[@]}
}

function link_brew_libraries {
    brew link --force openssl
    ln -s /usr/local/Cellar/icu4c/64.2/lib/ /usr/local/opt/icu4c/lib
}

function install_icu4c {
    icu4c_version=64.2
    cd $(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-core/Formula
    # Delete any previous branch, in the case of a reinstall
    git branch -d icu4c-64
    # ICU4C 64.2 is what is used
    git checkout -b icu4c-64 896d1018c7a4906f2c3fa1386aaf283497db60a2
    brew reinstall ./icu4c.rb
    brew switch icu4c ${icu4c_version}
    git checkout master
}

function install_base_deps {
    base_deps=(bash openssl@1.1 cmake ninja)
    install_brew_dependency
}

declare -a installers=(
    install_base_deps
    link_brew_libraries
    install_icu4c
)

for install in "${installers[@]}"
do
    ${install}
done