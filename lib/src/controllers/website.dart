import 'dart:io';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf_router/shelf_router.dart';

part 'website.g.dart';

class WebsiteController {
  const WebsiteController();

  Router get router => _$WebsiteControllerRouter(this);

  @Route.get('/')
  @Route.get('/index.html')
  Future<shelf.Response> index(shelf.Request req) async {
    return shelf.Response.ok(
      _index,
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.html.mimeType,
      },
    );
  }

  @Route.get('/admin')
  Future<shelf.Response> admin(shelf.Request req) async {
    return shelf.Response.ok(
      '''<html>hello admin</html>''',
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.html.mimeType,
      },
    );
  }
}

const _index = r'''
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta charset="UTF-8">
    <title>Micropub</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css"
        integrity="sha512-EZLkOqwILORob+p0BXZc+Vm3RgJBOe1Iq/0fiI7r/wJgzOFZMlsqTa29UEl6v6U6gsV4uIpsNZoV32YZqrCRCQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>

    </style>
</head>

<body>
    <div class="container">
        <div id="header">
            <div class="row">
                <h1 class="twelve columns">
                    Micropub
                </h1>
            </div>
            <hr />
        </div>
        <div id="auth">
            <div class="row">
                <h4>Authentication</h4>
                <p>You must enter your <b>private access key</b> to get access to packages</p>
                <form id="authForm">
                    <div class="row">
                        <div class="eight columns">
                            <input class="u-full-width" type="text" id="private-key-input">
                        </div>
                        <input class="button-primary four columns" type="submit" value="Validate">
                        <p><i>If you don't have one, please request one from your administrator.</i></p>
                    </div>

                </form>
            </div>
        </div>
        <div id="results" style="display:none">
            <div class="row">
                <h5 class="twelve columns">
                    Authenticated as <b id="email"></b>
                </h5>
            </div>
            <hr />
        </div>
        <div id="loading" style="display:none">
            <div class="row">
                <h6>Loading...</h6>
            </div>
            <hr />
        </div>
    </div>
    <script>

        var authNode = document.getElementById('auth');
        var resultsNode = document.getElementById('results');
        var loadingNode = document.getElementById('loading');
        var emailNode = document.getElementById('email');
        var authFormNode = document.getElementById('authForm');
        var privateKeyInput = document.getElementById('private-key-input');
        var accessKey = null;

        function authenticate(newAccessKey) {

            if (newAccessKey == null) {
                accessKey = null;
                authNode.style.display = 'block';
                resultsNode.style.display = 'none';
                loadingNode.style.display = 'none';
            }
            else {

                authNode.style.display = 'none';
                resultsNode.style.display = 'none';
                loadingNode.style.display = 'block';
                fetch('/api/me', {
                    method: 'GET',
                    headers: {
                        'authorization': 'bearer ' + newAccessKey,
                    },
                    mode: 'cors',
                    cache: 'default'
                })
                    .then(
                        function (response) {
                            if (response.status === 200) {
                                authNode.style.display = 'none';
                                resultsNode.style.display = 'block';
                                loadingNode.style.display = 'none';
                                response.json().then(function (data) {
                                    emailNode.innerHTML = data['email'];
                                    accessKey = newAccessKey;
                                });
                            }
                            else {
                                console.log('Fetch Error', response.status);
                                authNode.style.display = 'block';
                                resultsNode.style.display = 'none';
                                loadingNode.style.display = 'none';

                            }
                        }
                    )
                    .catch(function (e) {
                        console.log('Fetch Error', e);
                        authNode.style.display = 'block';
                        resultsNode.style.display = 'none';
                        loadingNode.style.display = 'none';
                    });

            }
        }

        authFormNode.onsubmit = function (event) {
            event.preventDefault();
            var newAccessKey = privateKeyInput.value;
            authenticate(newAccessKey);
        };

    </script>
</body>

</html>
''';
