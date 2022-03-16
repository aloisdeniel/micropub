# micropub

A minimalist private pub server for small teams.

## Setup

### Install

To install the server on your server from the `install.sh` script.

```bash
curl -s https://raw.githubusercontent.com/aloisdeniel/micropub/main/install.sh | bash -s v0.0.16
```

### Run the server

To run the server, execute the server with arguments:

* `directory`: the directory where packages and metadata are saved
* `adminKey`: the root admin private key
* `host`: the server host address
* `port`: the server port number

> You may need to modify file permissions to run the server
>
> ```bash
> chmod +x micropub.exe
> ```  

#### From a config file

```bash
./micropub.exe -c config.json
```

```json
{
    "directory": ".",
    "adminKey": "adm1n",
    "host": "localhost",
    "port": 8080
}
```

#### From a environment variables

```bash
export directory='.'
export adminKey='my-sensible-admin-key!'
export host='localhost'
export port='8080'
./micropub.exe 
```

## Usage

### Authentication

### Deploy a package

### Reference a package

## Thanks

* [unpub](https://pub.dev/packages/unpub) on which is based this package.