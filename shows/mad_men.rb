class Show
  @days[0] << :mad_men

  def self.mad_men
    characters = [
      'Don', 'Peggy',
      'Pete', 'Betty',
      'Joan', 'Roger',
      'Ted', 'Bert',
      'Ken', 'Harry',
      'Bobby', 'Megan',
      'Sally', 'Henry',
      'Ginsberg', 'Paul',
      'Lane', 'Stan',
      'Sal', 'Bob Benson',
      'Trudy', 'Cutler', 'Freddy'
    ]

    situations = [
      'signs a new client',
      'gets too drunk',
      'leaves the office',
      'makes an inappropriate advance',
      'leaves for California'
    ]

    preambles = [
      'MAD MEN RECAP',
      "LAST NIGHT'S MAD MEN"
    ]

    character = characters.sample
    situations << 'challenges Don' unless character == 'Don'
    situations << 'challenges Roger' unless character == 'Roger'

    "#{preambles.sample}: #{character} #{situations.sample}"
  end
end
