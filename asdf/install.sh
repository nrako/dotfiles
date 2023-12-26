brew install asdf
# install versions defined in tool-versions
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add yarn https://github.com/twuni/asdf-yarn.git
asdf plugin add python https://github.com/danhper/asdf-python.git

asdf install nodejs
asdf install ruby
asdf install yarn
asdf install python
