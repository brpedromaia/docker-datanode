FROM brpedromaia/hadoop
LABEL Pedro Maia Martins de Sousa <brpedromaia@gmail.com> and  Rodolfo Silva <Homaru> 


#######################################################
### Expose Ports
#######################################################

EXPOSE 22 8040 8042 50010 50020 50075

#######################################################
### Entrypoint
#######################################################

ADD datanode-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
