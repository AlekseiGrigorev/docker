docker run --name mydumper 
     --rm 
     -v ./data:/backups   
     sh -c "rm -rf /backups/data; 
          mydumper -h 172.18.0.3 -u root -p root -o /backups/data -L /backups/mydumper.log"