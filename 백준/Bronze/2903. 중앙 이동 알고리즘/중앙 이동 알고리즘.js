let N = require('fs').readFileSync(0, 'utf-8').trim().split(' ');
console.log((2 ** N + 1) ** 2);