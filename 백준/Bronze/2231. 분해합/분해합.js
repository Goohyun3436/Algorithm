let N = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
let M = 0;
let sum = 0;

while (N !== 1) {
  sum = M;

  const strM = String(M);
  for (let i = 0; i < strM.length; i++) {
    sum += parseInt(strM[i]);
  }

  if (sum === N) break;
  if (M > 1000000) {
    M = 0;
    break;
  }

  M++;
}

console.log(M);