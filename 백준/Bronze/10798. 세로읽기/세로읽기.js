let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(el => el.split(''));
let res = '';

let nList = [];
input.map(el => nList.push(el.length));
const N = Math.max(...nList);

for (let i = 0; i < N; i++) {
  for (let row of input) {
    const character = row.shift();
    if (character !== undefined) res += character;
  }
}

console.log(res);