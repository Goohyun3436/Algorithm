let N = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
let count = 0;
let maxOfDiagonal = 0;

while (maxOfDiagonal < N) {
  count++;
  maxOfDiagonal += count;
}

const diff = maxOfDiagonal - N;
console.log(count % 2 === 0 ? `${count - diff}/${1 + diff}` : `${1 + diff}/${count - diff}`);