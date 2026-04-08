const { add, multiply } = require('./math');

test('add 2 + 3 = 5', () => {
  expect(add(2, 3)).toBe(5);
});

test('multiply 4 * 5 = 20', () => {
  expect(multiply(4, 5)).toBe(20);
});

test('add negative numbers', () => {
  expect(add(-1, -2)).toBe(-3);
});
