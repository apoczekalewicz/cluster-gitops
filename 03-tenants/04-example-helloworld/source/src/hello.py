#!/usr/bin/python3
import os
from http.server import HTTPServer, BaseHTTPRequestHandler


message = os.getenv('APPENV', 'Default Hello World!')
message2 = 'Msg for you is' + message

class handler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type','text/html')
        self.end_headers()

        self.wfile.write(bytes(message, "utf8"))

print("I will show you message:", message)

with HTTPServer(('', 8080), handler) as server:
    server.serve_forever()
