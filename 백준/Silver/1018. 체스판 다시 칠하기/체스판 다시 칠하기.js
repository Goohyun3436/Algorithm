let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
const [N, M] = input.shift().split(' ').map(Number);
const board = input;

let cntList = [];

for (let n = 0; n <= N - 8; n++) {
  for (let m = 0; m <= M - 8; m++) {
    for (let color = 0; color <= 1; color++) {
      let firstColor;
      color === 0 ? (firstColor = board[n][m]) : (firstColor = board[n][m] === 'B' ? 'W' : 'B');
      let cnt = 0;

      for (let j = n; j < n + 8; j++) {
        let firstColorOfLine;
        (j - n + 1) % 2 !== 0 ? (firstColorOfLine = firstColor) : (firstColorOfLine = firstColor === 'B' ? 'W' : 'B');

        for (let i = m; i < m + 8; i++) {
          if ((i - m + 1) % 2 !== 0 && firstColorOfLine !== board[j][i]) cnt++;
          if ((i - m + 1) % 2 === 0 && firstColorOfLine === board[j][i]) cnt++;
        }
      }
      cntList.push(cnt);
    }
  }
}

console.log(Math.min(...cntList));