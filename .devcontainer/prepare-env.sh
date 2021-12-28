JVM_HOME=/workspace/JVM_HOME 
mkdir -p $JVM_HOME 
cd $JVM_HOME 
#fetch debug info 
if [ ! -f OpenJDK11U-debugimage_x64_linux_hotspot_11.0.13_8.tar.gz ] 
then 
    wget https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-debugimage_x64_linux_hotspot_11.0.13_8.tar.gz 
fi 
if [ ! -d jdk-11.0.13+8-debug-image ] 
then 
    tar xzf OpenJDK11U-debugimage_x64_linux_hotspot_11.0.13_8.tar.gz 
fi 
cp -rLv $JVM_HOME/jdk-11.0.13+8-debug-image/jdk-11.0.13+8/ . 
if [ ! -f OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz ] 
then 
    wget https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.13%2B8/OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz 
    tar xzf OpenJDK11U-jdk_x64_linux_hotspot_11.0.13_8.tar.gz 
fi 
if [ ! -d jdk11u ] 
then 
    git clone https://github.com/adoptium/jdk11u.git 
    cd jdk11u 
    #   git switch -c <new-branch-name> 
fi 
git checkout cf0dad3c2382 
WORKSPACE=/workspace/
mkdir -p $WORKSPACE
cd $WORKSPACE
wget https://archive.apache.org/dist/lucene/java/8.10.0/lucene-8.10.0-src.tgz
tar xvf lucene-8.10.0-src.tgz


