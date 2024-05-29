let fs = require('fs');
let [S, i] = fs.readFileSync(0, 'utf-8').trim().split('\n');

console.log(S[parseInt(i) - 1]);