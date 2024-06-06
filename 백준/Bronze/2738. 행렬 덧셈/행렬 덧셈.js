let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');

const [N, M] = input[0].split(' ').map(Number);
const A = input.splice(1, N).map(el => el.split(' ').map(Number));
const B = input.splice(1, N).map(el => el.split(' ').map(Number));

let sum = [];
for (let n = 0; n < N; n++) {
  let column = [];
  for (let m = 0; m < M; m++) {
    column.push(A[n][m] + B[n][m]);
  }
  sum.push(column.join(' '));
}

console.log(sum.join('\n'));