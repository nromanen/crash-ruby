# frozen_string_literal: true

require "minitest/autorun"
require "minitest/spec"
# require_relative 'test_helper'
require_relative "../app/person"

describe Person do
  let(:person) { Person.new("FirstName", "LastName", Date.new(Date.today.year, Date.today.month, Date.today.day - 1)) }
  it "#get_age" do
    p person
    expect(person.get_age).must_equal 0
  end
end

describe "negative tests" do
  it "#must raise error for setting today date for birth date of person" do
    expect { Person.new("FirstName", "LastName", Date.new(Date.today.year, Date.today.month, Date.today.day)) }.must_raise ArgumentError
  end
end

