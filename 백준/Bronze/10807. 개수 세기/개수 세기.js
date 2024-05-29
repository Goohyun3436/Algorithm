const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = 0;
for (let i = 0; i < parseInt(input[0]); i++) {
  input[1].split(" ")[i] === input[2] && (res += 1);
}

console.log(res);