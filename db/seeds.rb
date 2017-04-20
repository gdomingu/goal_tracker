# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Goals::Goal.create(
  title:"Oakland GHG Reduction",
  subtitle:"36% below 2005 levels by 2020",
  deadline:DateTime.new(2020,01,01),
  current_amount: 14.00,
  goal_amount: 36.00
)

Goals::Goal.create(
  title: "California RPS Program",
  subtitle: "50% of electricity from renewables by 2030",
  deadline: Date.new(2030,01,01),
  current_amount: 27.6,
  goal_amount: 50.00
)

Goals::Goal.create(
  title: "San Francisco 100% Renewable",
  subtitle: "100% of electricity from renewables by 2030",
  deadline: Date.new(2030,01,01),
  current_amount: 46.00,
  goal_amount: 100.00
)

Goals::Goal.create(
  title: "Adobe LLC 100% Renewable",
  subtitle: "100% of electricity from renewables by 2035",
  deadline: Date.new(2035,01,01),
  current_amount: 30.00,
  goal_amount: 100.00
)
