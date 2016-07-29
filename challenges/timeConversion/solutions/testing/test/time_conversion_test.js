var assert = require('chai').assert;
var timeConversion = require('../../time_conversion.js');

describe('#timeConversion', function() {
  it('converts given time to 24 hour format', function() {
    assert.equal('18:59:59', timeConversion('06:59:59PM'));
    assert.equal('04:59:59', timeConversion('04:59:59AM'));
    assert.equal('11:00:00', timeConversion('11:00:00AM'));
  });

  it('successfully converts midnight to 00:00:00', function() {
    assert.equal('00:00:00', timeConversion('12:00:00AM'));
  });

  it('successfully converts noon to 12:00:00', function() {
    assert.equal('12:00:00', timeConversion('12:00:00PM'));
  });

  describe('returns an error', function() {
    var errorMessage = "Please enter a valid time in hh:mm:ssA format.";

    it('when hours is past 12', function() {
      assert.equal(errorMessage, timeConversion('13:00:00PM'));
    });

    it('when minutes is >= 60', function() {
      assert.equal(errorMessage, timeConversion('12:60:00PM'));
      assert.equal(errorMessage, timeConversion('12:75:00PM'));
    });

    it('when seconds is >= 60', function() {
      assert.equal(errorMessage, timeConversion('12:00:60PM'));
      assert.equal(errorMessage, timeConversion('12:00:85PM'));
    });

    it('when meridian is not AM or PM', function() {
      assert.equal(errorMessage, timeConversion('12:00:00LM'));
      assert.equal(errorMessage, timeConversion('12:00:00OS'));
    });
  });
});
