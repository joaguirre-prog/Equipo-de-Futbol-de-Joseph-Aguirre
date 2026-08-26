class Player {
  final String name;
  final String position;
  final int number;
  final String initials;

  const Player({
    required this.name,
    required this.position,
    required this.number,
    required this.initials,
  });
}

const players = <Player>[
  Player(name: 'Joseph Aguirre', position: 'Arquero', number: 1, initials: 'JA'),
  Player(name: 'Carlos Mena', position: 'Defensa', number: 4, initials: 'CM'),
  Player(name: 'Daniel Vera', position: 'Defensa', number: 5, initials: 'DV'),
  Player(name: 'Luis Cedeño', position: 'Mediocampista', number: 8, initials: 'LC'),
  Player(name: 'Mateo Ruiz', position: 'Mediocampista', number: 10, initials: 'MR'),
  Player(name: 'Andrés León', position: 'Delantero', number: 9, initials: 'AL'),
  Player(name: 'Kevin Torres', position: 'Delantero', number: 11, initials: 'KT'),
  Player(name: 'Jorge Zambrano', position: 'Defensa', number: 3, initials: 'JZ'),
];
