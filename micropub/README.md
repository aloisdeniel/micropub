# micropub

A minimalist private pub server for small teams.

## Setup server

### Install

To install the server on your server from the `install.sh` script.

```bash
curl -s https://raw.githubusercontent.com/aloisdeniel/micropub/main/install.sh | bash -s v0.0.26
```

> You may need to install `unzip` tool before install.
>
> ```bash
> sudo apt install zip
> ```

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
./micropub.exe server -c config.json
```

```json
{
    "directory": ".",
    "adminKey": "my-sensible-admin-key!  # <- Replace with your own",
    "host": "localhost",
    "port": 8080
}
```

#### From a environment variables

```bash
export directory='.'
export adminKey='my-sensible-admin-key!'  # <- Replace with your own
export host='localhost'
export port='8080'
./micropub.exe  server
```

### Deploy

You must deploy the server on a server that supports SSL since `pub` doesn't support `http` hosted references.

> You can use [Letsencrypt](https://letsencrypt.org/) to get an SSL certificate.

## Usage

### Website

The server provide a simple website frontend to list available packages, but also to manage user authorizations!

Simply open the hosting address from your browser.

### Authentication

#### pub

First, make sure to authenticate your pub client by registring your access key.

```bash
flutter pub token add https://mymicropubserver.com:443/ # <- your server address  
```
### Deploy a package

First, make sure to add the `publish_to` property to your `pubspec.yaml` file.

```yaml
name: foo
description: An example package.
version: 1.0.0
publish_to: https://mymicropubserver.com:443/ # <- your server address
```

Then, to upload the package you have several options : using `pub` or `micropub`.


#### Micropub

The micropub allows you to upload the package. 

It may be usefull if you don't want to install the full Dart environment. Be aware that compared to pub regular uploads, there's no package verification before upload.

```bash
export MICROPUB_ACCESS_KEY=my-sensible-admin-key! # <- Replace with your own
./micropub.exe publish <path-to-your-package-directory>
```

#### pub

Make sure that your `pub` client is authenticated.

```bash
./micropub.exe publish <path-to-your-package-directory>
```

### Reference a package

Make sure that your `pub` client is authenticated and add the `hosted` dependency.

```bash
dependencies:
  foo:
    hosted: https://mymicropubserver.com:443/ # <- your server address
    version: ^0.0.1
```

## Thanks

* [unpub](https://pub.dev/packages/unpub) on which is based this package.
