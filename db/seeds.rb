# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Goals::Goal.where(
  title:"Oakland GHG Reduction",
  subtitle:"36% below 2005 levels by 2020",
  deadline:DateTime.new(2020,01,01),
  current_amount: 14.00,
  goal_amount: 36.00
).first_or_create

Goals::Goal.where(
  title: "California RPS Program",
  subtitle: "50% of electricity from renewables by 2030",
  deadline: DateTime.new(2030,01,01),
  current_amount: 27.6,
  goal_amount: 50.00
).first_or_create

Goals::Goal.where(
  title: "San Francisco 100% Renewable",
  subtitle: "100% of electricity from renewables by 2030",
  deadline: DateTime.new(2030,01,01),
  current_amount: 46.00,
  goal_amount: 100.00
).first_or_create

Goals::Goal.where(
  title: "Adobe LLC 100% Renewable",
  subtitle: "100% of electricity from renewables by 2035",
  deadline: DateTime.new(2035,01,01),
  current_amount: 30.00,
  goal_amount: 100.00
).first_or_create

Goals::Goal.where(
  title: "California Recycle Rate of 75%",
  subtitle: "75% recycle rate by 2020",
  deadline: DateTime.new(2020,01,01),
  current_amount: 50.00,
  goal_amount: 75.00
).first_or_create
