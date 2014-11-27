source /usr/local/rvm/scripts/rvm
cd /var/lib/jenkins/jobs
unzip /var/chef1/code/primefactors.zip
chown -R jenkins:jenkins primefactors
cd /var/lib/jenkins/plugins
cp -r -f /var/chef1/code/jenkins_plugins/* .
chown -R jenkins:jenkins *
cd /var/lib/jenkins
cp /var/chef1/code/credentials.xml .
cp /var/chef1/code/org.jenkinsci.plugins.xvfb.XvfbBuildWrapper.xml .
chown jenkins:jenkins credentials.xml
chown jenkins:jenkins org.jenkinsci.plugins.xvfb.XvfbBuildWrapper.xml
sudo service jenkins restart