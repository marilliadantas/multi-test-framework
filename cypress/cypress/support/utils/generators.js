const Chance = require('chance');
const chance = new Chance();

export function generateEmail() {
  return `${chance.first().toLowerCase()}.${Date.now()}@qa.com`;
}

export function generateName() {
  return chance.name({ nationality: 'it' })
}