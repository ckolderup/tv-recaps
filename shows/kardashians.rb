class Show
  @days[0] << :kardashians

  def self.kardashians
    characters = [
      'Khloe', 'Kim', 'Kourtney', 'Rob',
      'Kris', 'Kylie', 'Kendall', 'Malika',
      'Khadijah', 'Jonathan', 'Scott', 'Mason',
      'Penelope', 'Nori'
    ]

    activities = [
      ['%s cries', 1],
      ['%s and %s fight', 2],
      ['%s and %s make up', 2],
      ['%s has a photo shoot', 1],
      ['%s travels to London', 1],
      ['%s travels to Paris', 1],
      ['%s travels to Tokyo', 1],
      ['%s travels to New York', 1],
      ['%s travels to Miami', 1],
      ['%s visits Dash', 1],
      ['%s has a club appearance', 1],
      ['%s gets too drunk', 1]
    ]

    preambles = [
      'KEEPING UP WITH THE KARDASHIANS',
      'LAST NIGHT ON KARDASHIANS',
      "'KEEPING UP' RECAP",
      'LAST NIGHT ON THE KARDASHIANS'
    ]

    activity_num_chars = activities.sample
    activity = activity_num_chars[0]
    num_chars = activity_num_chars[1]

    "#{preambles.sample}: #{activity % characters.sample(num_chars)}"
  end
end
