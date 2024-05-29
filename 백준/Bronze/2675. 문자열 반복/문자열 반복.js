let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');

for (let i = 0; i < parseInt(input[0]); i++) {
  let P = '';
  const [R, S] = input[i + 1].split(' ');
  S.split('').map((s) => (P += s.repeat(R)));
  console.log(P);
}