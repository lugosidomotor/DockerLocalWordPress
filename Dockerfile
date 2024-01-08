FROM wordpress:latest

# Copy the script and set permissions
COPY ./init/prep.sh /prep.sh
RUN chmod +x /prep.sh
