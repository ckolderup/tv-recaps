class Show
  @days[0] << :breaking_bad

  def self.breaking_bad
    characters = [
      'Walt', 'Jesse', 'Skyler', 'Walt Jr.',
      'Gus', 'Hank', 'Todd', 'Saul', 'Mike',
      'Marie', 'Lydia'
    ]

    situations = [
      ['%s and %s cook some meth', 2],
      ['%s makes Walt Jr. some breakfast', 1],
      ['Skyler yells at %s', 1],
      ['%s is the one who knocks', 1],
      ['%s has to tread lightly', 1],
      ['%s learns about supply and demand', 1],
      ['%s gets addicted to all the drugs', 1]
    ]

    preambles = [
      'BREAKING BAD RECAP',
      "LAST NIGHT'S BREAKING BAD",
      'BREAKING BAD',
      'LAST NIGHT ON BREAKING BAD'
    ]

    (template, num_chars) = situations.sample

    "#{preambles.sample}: #{template % characters.sample(num_chars)}"
  end
end
