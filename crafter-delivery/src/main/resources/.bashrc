# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export JAVA_HOME=/opt/jdk
export CATALINA_HOME=/opt/tomcat
export CRAFTER_HOME=/opt/crafter

PATH=$JAVA_HOME/bin:$CATALINA_HOME/bin:CRAFTER_HOME/bin:$PATH

export PATH