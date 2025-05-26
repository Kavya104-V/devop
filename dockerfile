FROM  tomcat:9.0
RUN  rm  -rf /usr/local/tomcat/webapps/*
COPY /target/devops-0.0.1-SNAPSHOT.war      /usr/local/tomcat/webapps/ROOT.war
EXPOSE  8080

orrr
FROM tomcat:9-jdk11

# Fix 1: Add space between 'rm' and '-rf', fix incorrect path
RUN rm -rf /usr/local/tomcat/webapps/*

# Fix 2: Correct path (it was 'user', should be 'usr')
WORKDIR /usr/local/tomcat/webapps/

# Fix 3: Match WAR file name and correct path
COPY target/pgm2-0.0.1-SNAPSHOT.war ROOT.war

# Optional: Expose custom port
EXPOSE 8091

# Fix 4: Correct script name ('catalina.sh', not 'catelina.sh')
CMD ["catalina.sh", "run"]