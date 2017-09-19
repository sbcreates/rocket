require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test

  def test_change_name
    rocket = Rocket.new
    rocket.name=("Bert")

    assert_equal(rocket.name, "Bert")
  end

  def test_change_colour
    rocket = Rocket.new
    rocket.colour=("magenta")

    assert_equal(rocket.colour, "magenta")
  end

  def test_if_flying
    rocket = Rocket.new
    refute rocket.flying?
  end

  def test_lift_off_when_not_flying
    rocket = Rocket.new

    assert_equal(rocket.flying?, false)
  end

  def test_lift_off_when_flying
    rocket = Rocket.new
    rocket.lift_off

    assert_equal(rocket.flying?, true)
  end

  def test_not_flying_when_landed
    rocket = Rocket.new
    rocket.lift_off
    rocket.land

    refute rocket.flying?
  end

  def test_flying_when_lift_off
    rocket = Rocket.new
    rocket.lift_off

    assert rocket.flying?
  end

  def test_status_when_flying
    rocket = Rocket.new
    rocket.lift_off

    assert_equal rocket.status, "Rocket #{rocket.name} is flying through the sky!"
  end

  def test_status_when_not_flying
    rocket = Rocket.new

    assert_equal rocket.status, "Rocket #{rocket.name} is ready for lift off!"
  end
end
