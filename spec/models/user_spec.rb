require 'rails_helper'

describe User do
  let!(:user) { create :user }

  it 'default role is user' do
    expect(user.roles.take.name).to eq('user')
  end
end
