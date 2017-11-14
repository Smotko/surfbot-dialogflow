import test from 'ava';
const functions = require('./index');

test('dialogflowFirebaseFulfillment should exists', t => {
	t.is(typeof functions.dialogflowFirebaseFulfillment, 'function');
});
