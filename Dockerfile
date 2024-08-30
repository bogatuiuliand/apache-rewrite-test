FROM httpd:2.4

# Enable mod_rewrite
RUN sed -i 's/#LoadModule rewrite_module modules\/mod_rewrite.so/LoadModule rewrite_module modules\/mod_rewrite.so/' /usr/local/apache2/conf/httpd.conf

# Copy custom httpd configuration file
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy website files
COPY html/ /usr/local/apache2/htdocs/

