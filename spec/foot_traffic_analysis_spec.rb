require('rspec')
require('foot_traffic_analysis')

describe('foot_traffic_analysis') do
  it('returns time user 0 spent in room 0') do
    foot_traffic_analysis(["0 0 I 115", "0 0 O 145"]).should(eq('room 0, 30 minute average visit, 1 visitor(s) total'))
  end
end
