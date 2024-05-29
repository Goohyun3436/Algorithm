const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

const sum = parseInt(input[0]);
let calSum = 0;

for (let i = 2; i < 2 + parseInt(input[1]); i++) {
  const [price, cnt] = input[i].split(" ");
  calSum += price * cnt;
}
console.log(sum === calSum ? "Yes" : "No");