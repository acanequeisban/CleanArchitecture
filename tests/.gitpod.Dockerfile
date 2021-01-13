FROM gitpod/workspace-full:latest

USER gitpod

# Install .NET SDK 5
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb; \
sudo dpkg -i packages-microsoft-prod.deb; \
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

# Install nodejs
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - ;\
sudo apt-get install -y nodejs

sudo npm cache clean -f ;\
sudo npm install -g n ;\
sudo n stable

#Update path

echo "echo export PATH=/usr/local/bin/node:/home/gitpod/.pyenv/plugins/pyenv-virtualenv/shims:/home/gitpod/.pyenv/shims:/workspace/.cargo/bin:/workspace/.pip-modules/bin:/workspace/.rvm/bin:/home/gitpod/.sdkman/candidates/maven/current/bin:/home/gitpod/.sdkman/candidates/java/current/bin:/home/gitpod/.sdkman/candidates/gradle/current/bin:/home/gitpod/.rvm/gems/ruby-2.6.6/bin:/home/gitpod/.rvm/gems/ruby-2.6.6@global/bin:/home/gitpod/.rvm/rubies/ruby-2.6.6/bin:/home/gitpod/.pyenv/plugins/pyenv-virtualenv/shims:/home/gitpod/.pyenv/shims:/workspace/.cargo/bin:/workspace/.pip-modules/bin:/workspace/.rvm/bin:/home/gitpod/.pyenv/bin:/home/gitpod/.pyenv/shims:/workspace/go/bin:/home/gitpod/go/bin:/home/gitpod/go-packages/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin/:/home/gitpod/.cargo/bin:/home/gitpod/.rvm/bin" > .bashrc
source .bashrc