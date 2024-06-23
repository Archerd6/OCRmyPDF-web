# OCRmyPDF-web [Upgraded to ocrmypdf==16.4.0]

A simple web service for running [OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF). Builds on top of the official OCRmyPDF docker container and adds a simple REST API and lightweight web frontend. Simply drag a PDF file into the browser window and get a file download with the OCRed file back!



## Running

### Using Docker
Expose on port 8000:

```bash
docker build -t ocrmypdfweb . 

docker run -p 8080:8000 ocrmypdfweb
```

## License
OCRmyPDF-web, like the main project, is licensed under the GNU GPL v3.
