class Show
  @days[1] << :celebrity_apprentice

  def self.celebrity_apprentice
    situations = [
      ['%s is named project manager', 1],
      ['%s is fired', 1],
      ['%s wins a challenge', 1],
      ['%s cries', 1],
      ['%s and %s battle in the boardroom', 2],
      ['%s dukes it out with the Donald', 1],
      ['%s and %s’s feud escalates', 1],
      ['%s and %s have to work together', 2]
    ]

    preambles = [
      'LAST NIGHT ON CELEBRITY APPRENTICE',
      'CELEBRITY APPRENTICE',
      'CELEBRITY APPRENTICE RECAP'
    ]

    (template, num_chars) = situations.sample
    "#{preambles.sample}: #{template % random_celebrity(num_chars)}"
  end
end
