require 'spec_helper'
describe 'skills' do

  context 'with defaults for all parameters' do
    it { should contain_class('skills') }
  end
end
