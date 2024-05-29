const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = [0, 0];

for (let i = 0; i < input.length; i++) {
  if (parseInt(input[i]) > res[0]) res = [parseInt(input[i]), i + 1];
}

console.log(res.join("\n"));