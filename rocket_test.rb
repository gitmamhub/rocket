require "minitest/autorun"
require_relative "rocket"



class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
      @rocket = Rocket.new
  end

def test_new_name
  @rocket.name =('alpha1')
  value = @rocket.name
  expected = 'alpha1'
  assert_equal(expected,value)
end

def test_color_new
  @rocket.colour =('blue')
  value = @rocket.colour
  expected = 'blue'
  assert_equal(expected,value)
end

def test_flying
  @rocket1 = Rocket.new(flying: true)
  value = @rocket1.flying?
  assert(true,value)
end

def test_lift_off_true

  @rocket2 = Rocket.new
  value1 = @rocket2.flying?
  value = @rocket2.lift_off
  assert_equal(true,value)

end

def test_lift_off_false

  @rocket2 = Rocket.new(flying: true)
  value1 = @rocket2.flying?
  value = @rocket2.lift_off
  assert_equal(false,value)

end

def test_land_true
  @rocket2 = Rocket.new(flying: true)

  value = @rocket2.land
  assert_equal(true,value)
end


def test_land_false
  @rocket2 = Rocket.new()

  value = @rocket2.land
  assert_equal(false,value)

end

def test_status_flying_through_the_sky
  @rocket = Rocket.new(name: "ARIES III" ,flying: true)
  value = @rocket.status

  expected = "Rocket ARIES III is flying through the sky!"
  assert_equal(expected,value)
end

def test_status_ready_for_lift_off
  @rocket = Rocket.new(name: "ARIES III")
  value = @rocket.status

  expected = "Rocket ARIES III is ready for lift off!"
  assert_equal(expected,value)

end


end
