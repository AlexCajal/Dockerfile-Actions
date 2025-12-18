FROM httpd:2
RUN apt update && apt install git -y
RUN rm -rf /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2/htdocs
RUN git clone https://github.com/moleculemmeng020425/christmas-tree.git .
EXPOSE 80
CMD ["httpd-foreground"]
