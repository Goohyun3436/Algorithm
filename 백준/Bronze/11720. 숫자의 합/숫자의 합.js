let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');

let res = 0;
for (let i = 0; i < parseInt(input); i++) {
  res += parseInt(input[1].split('')[i]);
}
console.log(res);