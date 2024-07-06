let triangles = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
triangles.pop();

triangles.map(el => {
  const [l1, l2, l3] = el.split(' ').map(Number);
  console.log(getTriangleType(l1, l2, l3));
});

function getTriangleType(l1, l2, l3) {
  if (l1 === l2 && l2 === l3) {
    return 'Equilateral';
  } else {
    if (Math.max(l1, l2, l3) * 2 >= l1 + l2 + l3) {
      return 'Invalid';
    } else if (l1 !== l2 && l2 !== l3 && l3 !== l1) {
      return 'Scalene';
    } else {
      return 'Isosceles';
    }
  }
}