let fs = require('fs');
const input = fs.readFileSync('/dev/stdin').toString().trim().split();

console.log(parseInt(input) - 543);