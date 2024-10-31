# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../app/person'

Minitest::Reporters.use! [
                           # Minitest::Reporters::SpecReporter.new,
                           Minitest::Reporters::HtmlReporter.new(
                             reports_dir: 'test/reports',
                             report_filename: 'test_results.html',
                             # clean: true,
                             add_timestamp: true
                           )
                         ]

class MyTest < Minitest::Test


  def test_get_age
    person = Person.new("FirstName", "LastName", Date.new(Date.today.year, Date.today.month, Date.today.day - 1))
    assert_instance_of Integer, person.get_age
    assert_equal(person.get_age(), 1, "Age of person should be equal to 0")
  end

  def test_raises_error_when_birth_date_today
    assert_raises "Birth date must be in the past" do
      Person.new("FirstName", "LastName", Date.new(Date.today.year, Date.today.month, Date.today.day))
    end
  end
end