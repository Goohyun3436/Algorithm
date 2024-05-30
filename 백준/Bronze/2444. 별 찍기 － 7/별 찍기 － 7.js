let N = parseInt(require('fs').readFileSync(0, 'utf-8').trim());

let starWithSpacing = [];
for (let i = 1; i <= 2 * N - 1; i++) {
  if (i % 2 !== 0) starWithSpacing.push(' '.repeat((2 * N - 1 - i) / 2) + '*'.repeat(i));
}
starWithSpacing = [...starWithSpacing, ...starWithSpacing.reverse().splice(1, N)];

console.log(starWithSpacing.join('\n'));