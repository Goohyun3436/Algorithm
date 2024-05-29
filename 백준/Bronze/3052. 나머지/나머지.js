const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n').map(Number);

let res = [];
for (let i = 0; i < input.length; i++) {
  res.push(input[i] % 42);
}

console.log([...new Set(res)].length);