FROM tomcat:10.1-jdk17

# Xoá hết app mặc định trong Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của project day3 vào Tomcat và đặt tên ROOT.war
COPY target/day3-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
