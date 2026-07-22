Flight.destroy_all
Airport.destroy_all

lhr = Airport.create!(
  code: "LHR",
  name: "London Heathrow"
)

man = Airport.create!(
  code: "MAN",
  name: "Manchester"
)

edi = Airport.create!(
  code: "EDI",
  name: "Edinburgh"
)

bhx = Airport.create!(
  code: "BHX",
  name: "Birmingham"
)

ber = Airport.create!(
  code: "BER",
  name: "Berlin"
)

lax = Airport.create!(
  code: "LAX",
  name: "Los Angeles"
)


Flight.create!(
  departure_airport: lhr,
  arrival_airport: man,
  start_datetime: DateTime.new(2026, 8, 10, 8, 30),
  duration: 75
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: man,
  start_datetime: DateTime.new(2026, 8, 15, 14, 15),
  duration: 75
)

Flight.create!(
  departure_airport: man,
  arrival_airport: lhr,
  start_datetime: DateTime.new(2026, 8, 23, 18, 30),
  duration: 70
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: edi,
  start_datetime: DateTime.new(2026, 9, 3, 9, 0),
  duration: 85
)

Flight.create!(
  departure_airport: edi,
  arrival_airport: lhr,
  start_datetime: DateTime.new(2026, 9, 9, 16, 45),
  duration: 90
)

Flight.create!(
  departure_airport: bhx,
  arrival_airport: edi,
  start_datetime: DateTime.new(2026, 9, 20, 10, 30),
  duration: 75
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: ber,
  start_datetime: DateTime.new(2026, 9, 26, 7, 15),
  duration: 115
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: ber,
  start_datetime: DateTime.new(2026, 10, 7, 13, 40),
  duration: 120
)

Flight.create!(
  departure_airport: ber,
  arrival_airport: lhr,
  start_datetime: DateTime.new(2026, 10, 14, 11, 0),
  duration: 125
)

Flight.create!(
  departure_airport: man,
  arrival_airport: ber,
  start_datetime: DateTime.new(2026, 10, 24, 15, 20),
  duration: 125
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: lax,
  start_datetime: DateTime.new(2026, 10, 31, 10, 0),
  duration: 660
)

Flight.create!(
  departure_airport: lhr,
  arrival_airport: lax,
  start_datetime: DateTime.new(2026, 11, 12, 15, 30),
  duration: 675
)

Flight.create!(
  departure_airport: lax,
  arrival_airport: lhr,
  start_datetime: DateTime.new(2026, 11, 27, 18, 0),
  duration: 630
)

Flight.create!(
  departure_airport: edi,
  arrival_airport: ber,
  start_datetime: DateTime.new(2026, 12, 16, 8, 45),
  duration: 135
)

Flight.create!(
  departure_airport: bhx,
  arrival_airport: man,
  start_datetime: DateTime.new(2027, 1, 16, 12, 15),
  duration: 55
)
