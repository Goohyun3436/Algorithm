const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let isSubmit = new Array(30).fill(0);
let res = [];

for (let i = 0; i < input.length; i++) {
  isSubmit[parseInt(input[i]) - 1] = 1;
}
isSubmit.map((stat, index) => stat === 0 && res.push(index + 1));

console.log(res.join("\n"));