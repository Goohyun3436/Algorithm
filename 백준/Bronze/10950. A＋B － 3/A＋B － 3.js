const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

for (let i = 1; i <= parseInt(input[0]); i++) {
  const [A, B] = input[i].split(" ");
  console.log(parseInt(A) + parseInt(B));
}