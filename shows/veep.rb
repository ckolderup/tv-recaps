class Show
  @days[0] << :veep

  def self.veep
    characters = [
      'Selina', 'Dan', 'Amy', 'Sue',
      'Gary', 'Jonah', 'Ben', 'Mike',
      'Kent', 'the President'
    ]

    situations = [
      ['%s accidentally insults %s', 2],
      ['%s works on a bill', 1],
      ['%s gets a tip about foreign policy', 1],
      ['%s hits the road with the campaign', 1],
      ['%s accidentally leaks state secrets', 1],
      ['%s resigns and goes to work as a lobbyist', 1]
    ]

    preambles = [
      'LAST NIGHT ON VEEP',
      'VEEP RECAP',
      "LAST NIGHT'S VEEP"
    ]

    (template, num_chars) = situations.sample
    "#{preambles.sample}: #{template % characters.sample(num_chars)}"
  end
end
