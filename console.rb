require('pry')
require_relative('models/bounty.rb')

Bounty.delete_all()

bounty_1 = Bounty.new(
  {
    'name' => 'Chogal',
    'species' => 'Ogre',
    'bounty_value' => 5000,
    'danger_level' => 'high'
  }
  );

  bounty_2 = Bounty.new(
    {
      'name' => 'Cthulhu',
      'species' => 'god',
      'bounty_value' => 100000,
      'danger_level' => 'ermagerdyerderd'
    }
    );

    binding.pry
    nil
