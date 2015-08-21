class Show
  @days[1] << :drag_race

  def self.drag_race
    judges = [
      'RuPaul', 'Michelle Visage', 'Santino',
      'Carson', 'Ross', 'Billy'
    ]

    contestants = [
      'Sharon', 'Alaska', 'Detox', 'Katya', 'Raja',
      'Tyra', 'Phi Phi', 'Chad', 'Adore', 'Courtney',
      'Bianca', 'Manila', 'Raven', 'Jujubee'
    ]

    situations = [
      '[contestant] wins the mini-challenge',
      '[contestant] wins the main challenge',
      '[contestant] is crowned America’s Next Drag Superstar',
      '[contestant] sashays away',
      ['%s and %s lip sync for their lives', 2],
      '[judge] reads [contestant] to filth',
      ['%s shades %s', 2],
      '[contestant] cries',
      ['%s and %s fight on Untucked', 2],
      '[contestant] spills the truth tea',
      '[judge] and [contestant] battle on the runway'
    ]

    preambles = [
      'LAST NIGHT ON DRAG RACE',
      'RUPAUL DRAG RACE RECAP',
      "LAST NIGHT'S DRAG RACE"
    ]

    situation = situations.sample

    if situation.is_a?(Array)
      (template, num_chars) = situation
      "#{preambles.sample}: #{template % contestants.sample(num_chars)}"
    else
      "#{preambles.sample}: #{situation.gsub('[contestant]', contestants.sample).gsub('[judge]', judges.sample)}"
    end
  end
end
