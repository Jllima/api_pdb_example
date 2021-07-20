require 'rails_helper'

RSpec.describe Status, type: :model do
  subject { create(:status) }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:name) }
end
