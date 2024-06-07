let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(el => el.split(' ').map(Number));

let max = { value: -1, location: [0, 0] };

for (let n = 0; n < 9; n++) {
  for (let m = 0; m < 9; m++) {
    if (parseInt(input[n][m]) > max.value) max = { value: parseInt(input[n][m]), location: [n + 1, m + 1] };
  }
}

console.log(`${max.value}\n${max.location.join(' ')}`);