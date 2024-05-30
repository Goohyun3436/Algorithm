let input = require('fs').readFileSync(0, 'utf-8').trim().split('');
const dial = {
  2: 'ABC',
  3: 'DEF',
  4: 'GHI',
  5: 'JKL',
  6: 'MNO',
  7: 'PQRS',
  8: 'TUV',
  9: 'WXYZ',
};

let sum = 0;
input.map(alphabet => {
  Object.entries(dial).map(([key, value]) => {
    if (value.indexOf(alphabet) !== -1) sum += 2 + parseInt(key) - 1;
  });
});

console.log(sum);