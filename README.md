# Heavy Metal API

This is a basic API that allows POST and GET calls. [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) is enabled so it is frontend compatible at any origin.


## Making a Get Request
```
curl localhost:3000/api/v1/bands | jq .
```
Note that the pipe into jq just makes the response human readable
### You query the response by the name of the band by parassing parameters `?name=<query>` like so:
```
curl "localhost:3000/api/v1/bands?name=mega" | jq .
```


## Making a Post Request 
Band Name is the only required field and must be unique 
You can provide an object of member names and instruments and an array of albums.

### Example
```
curl -X POST \
     -H "Content-Type: application/json" \
     -d '{
           "name": "Judas Priest",
           "members": {
             "Rob Halford": "vocals",
             "Glenn Tipton": "lead guitar",
             "Richie Faulkner": "lead guitar",
             "Ian Hill": "bass",
             "Scott Travis": "drums"
           },
           "albums": [
             "British Steel",
             "Screaming for Vengeance",
             "Defenders of the Faith",
             "Painkiller",
             "Turbo"
           ],
           "country": "UK"
         }' \
     localhost:3000/api/v1/bands
```
