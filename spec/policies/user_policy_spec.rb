require 'rails_helper'
describe UserPolicy do
  subject { UserPolicy }

  let!(:user) { create :user }

  permissions :destroy? do
    it 'denies destroy if user is not admin' do
      expect(subject).not_to permit(user)
    end
  end
end
