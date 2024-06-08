let rowLengthList = [];
let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n')
  .map(el => {
    rowLengthList.push(el.length);
    return el.split('');
  });
let res = '';
const N = Math.max(...rowLengthList);

for (let i = 0; i < N; i++) {
  for (let row of input) {
    const character = row.shift();
    if (character !== undefined) res += character;
  }
}

console.log(res);