let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(el => el.split(' ').map(Number));
const N = parseInt(input.shift());

let whiteArea = Array.from(Array(100), () => new Array(100).fill(0));
let blackArea = 0;
for (let [x, y] of input) {
  for (let m = 0; m < 10; m++) {
    for (let n = 0; n < 10; n++) {
      if (whiteArea[y + m][x + n] !== 1) {
        whiteArea[y + m][x + n] = 1;
        blackArea++;
      }
    }
  }
}

console.log(blackArea);