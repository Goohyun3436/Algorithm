const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = [];
input.map((testCase) => {
  const [A, B] = testCase.split(" ");
  res.push(parseInt(A) + parseInt(B));
});

console.log(res.join("\n"));