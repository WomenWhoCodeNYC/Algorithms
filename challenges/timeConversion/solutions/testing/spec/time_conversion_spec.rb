require 'minitest/autorun'
require 'minitest/pride'
require_relative '../../time_conversion.rb'

describe '#time_conversion' do
	it 'converts given time to 24 hour format' do
		assert_equal '18:59:59', time_conversion('06:59:59PM')
		assert_equal '04:59:59', time_conversion('04:59:59AM')
    assert_equal '11:00:00', time_conversion('11:00:00AM')
	end

	it 'successfully converts midnight to 00:00:00' do
		assert_equal '00:00:00', time_conversion('12:00:00AM')
	end

	it 'successfully converts noon to 12:00:00' do
		assert_equal '12:00:00', time_conversion('12:00:00PM')
	end

	describe 'returns an error' do
		error_message = "Please enter a valid time in hh:mm:ssA format."

		it 'when hours is past 12' do
			assert_equal error_message, time_conversion('13:00:00PM')
		end

		it 'when minutes is >= 60' do
			assert_equal error_message, time_conversion('12:60:00PM')
      assert_equal error_message, time_conversion('12:75:00PM')
		end

		it 'when seconds is >= 60' do
			assert_equal error_message, time_conversion('12:00:60PM')
      assert_equal error_message, time_conversion('12:00:85PM')
		end

		it 'when meridian is not AM or PM' do
			assert_equal error_message, time_conversion('12:00:00LM')
      assert_equal error_message, time_conversion('12:00:00OS')
		end
	end
end
