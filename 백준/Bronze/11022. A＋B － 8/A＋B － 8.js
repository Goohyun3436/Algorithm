const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = [];
for (let i = 1; i <= parseInt(input[0]); i++) {
  const [A, B] = input[i].split(" ");
  res.push(
    `Case #${i}: ${parseInt(A)} + ${parseInt(B)} = ${parseInt(A) + parseInt(B)}`
  );
}

console.log(res.join("\n"));