let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');

for (let i = 0; i < parseInt(input[0]); i++) {
  console.log(input[i + 1][0] + input[i + 1][input[i + 1].length - 1]);
}