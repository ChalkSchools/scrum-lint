def fake_trello_card(name: 'What card', desc: 'some desc')
  instance_double(Trello::Card, name: name, desc: desc)
end

def fake_trello_list(name: 'Planned', cards: [])
  instance_double(Trello::List, name: name, cards: cards)
end

def fake_trello_board(name: 'Eng: Current', lists: [fake_trello_list])
  instance_double(Trello::Board, name: name, lists: lists)
end
