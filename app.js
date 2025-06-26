const http = require('http');

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Hello, Docker World!\n');
});

const port = process.env.APPLICATION_PORT || 8080;
server.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});