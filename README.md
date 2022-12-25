
## Full Text Searcher 🔍

This is an application which gives us a quick search interface from given json file (./data/cache.json)

## Tech Stack Used 🛠
- Typesense: Creates Search experiences that specializes in indexing large amounts of data
- Instasearch: Is a Frontend library to connect to the Search Engine API
- Typesense-instasearch-adapter: To connect both typesense (js backedn library) and instasearch we use this Adapter
- Metadata-scraper: To scrap metadata of a link
- Material UI: Is a Component Library for Frontend Designing

## Brief overview 📜
- Initially, a Typesense server is started. </br>
- We know that the Metadata-scraper scrapes metadata of links from the JSON file. The Links and respective metadata are saved in cache </br> 
- Same data is populated in Typesense server </br> 
- The Frontend connects instasearch API to Typesense server using the typesense-instasearch-adapter </br>
- Components are designed using Material UI Component Library </br>
- And Instasearch is used to render search and hit components with custom design

## How to run 🏃‍♀️

### Running from Source Code
Build docker image
```
sudo docker build -t <username>/<containername> .
```

Run the docker image in interactive mode
```
sudo docker run --name textsearch --network="host" -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" <username>/<containername>:latest
```

Run the docker image in detached mode
```
sudo docker run --name textsearch --network="host" -d -v "/var/run/docker.sock:/var/run/docker.sock:rw" <username>/<containername>:latest
```
If running in detached mode, give the image some time to run. It takes about 1-2 minutes to completely run. 
Finally go to localhost:3000 to see the application.

### Running Image from Docker Hub
Pull the docker image
```
sudo docker pull sadhvikadari2k1/textsearch:latest
```

Run the docker image in interactive mode
```
sudo docker run --name textsearch --network="host" -it -v "/var/run/docker.sock:/var/run/docker.sock:rw" sadhvikadari2k1/textsearch:latest
```

Run the docker image in detached mode
```
sudo docker run --name textsearch --network="host" -d -v "/var/run/docker.sock:/var/run/docker.sock:rw" sadhvikadari2k1/textsearch:latest
```
If running in detached mode, give the image some time to run. It takes approximately 2 minutes to completely run. 

Finally, open localhost:3000 to see the application.

