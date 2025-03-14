docker run --name mydumper 
     --rm 
     -v ./data:/backups   
     sh -c "rm -rf /backups/data; 
          mydumper 
               -o /backups/data 
               -L /backups/mydumper.log"