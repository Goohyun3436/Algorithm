let [a1, a2, a3] = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(Number);
console.log(getTriangleType(a1, a2, a3));

function getTriangleType(a1, a2, a3) {
  if (a1 + a2 + a3 === 180) {
    if (a1 === a2 && a2 === a3) {
      return 'Equilateral';
    } else if (a1 === a2 || a2 === a3 || a3 === a1) {
      return 'Isosceles';
    } else if (a1 !== a2 && a2 !== a3) {
      return 'Scalene';
    }
  } else {
    return 'Error';
  }
}