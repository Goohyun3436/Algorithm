let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
let res = 0;

for (let i = 0; i < parseInt(input[0]); i++) {
  let word = input[i + 1];
  let difComparedBefore = [word[0]];

  for (let j = 0; j < word.length - 1; j++) {
    if (word[j] !== word[j + 1]) difComparedBefore.push(word[j + 1]);
  }

  const set = new Set(difComparedBefore);
  if (difComparedBefore.length === set.size) res++;
}

console.log(res);