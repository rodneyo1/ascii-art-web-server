# ASCII Art Web Export File

This is a simple Go server that generates ASCII art from text input using various banner styles. The server provides both a web interface and an API that can be used to generate ASCII art.

## Features

- Generate ASCII art from text input.
- Choose from various banner styles.
- Download the generated ASCII art as a `.txt` file.
- Use the server as an API to generate ASCII art programmatically.
- You can integrate this API into other web or server-side applications


## Prerequisites
- Go: Make sure you have Go installed. Instructions can be found at [Go's official website](https://golang.org/doc/install).

## Containeriztion
To run the web server using docker you can run the application using run.sh script file.
Ensure Docker is installed on your system. You can download it from [Docker's official website](https://www.docker.com/get-started).



## Installation

1. Clone the repository:

    git clone <a>https://learn.zone01kisumu.ke/git/rodnochieng/ascii-art-web-export-file</a>


2. Navigate to the project directory:

    ```bash
    cd ascii-art-web-export-file
    ```
 
## Usage

Start the server by navigatig to the root folder containing main.go and run:

``` go run main.go ```

For docker, you can also build a docker image and run a docker container by running a shell script as it can can streamline the process and make it repeatable. 


When the server or container is running you go to your browser and type the link:

``` http://localhost:8080 ```

You should see the main page where you can input text and select a banner. After submitting, you will be able to see the generted ASCII art in the specified format.

## API Usage

You can use the server as an API to generate ASCII art programmatically.
You can use curl to send a POST request and get the ASCII art as a plain text response:
``` 
curl -X POST -d "input=Hello&banner=shadow" -H "Accept: text/plain" http://localhost:8080/
```
If required parameters (input or banner) are missing, the API will return a 400 Bad Request status with an appropriate error message.

Errors will be returned as plain text if the Accept header is set to text/plain.

## Testing 
To run the tests present do the following:

Run the test using this command:

```
go test ./server && go test ./asciiart
```

## Contributing

If you have suggestions for improvements, bug fixes, or new features, feel free to open an issue or submit a pull request.

## Author

This project was build and maintained by:

[Thadeus Ogondola](https://learn.zone01kisumu.ke/git/togondol/)

[Rodney Ochieng](https://learn.zone01kisumu.ke/git/rodnochieng)

