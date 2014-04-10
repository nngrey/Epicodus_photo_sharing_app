require 'spec_helper'

describe Photo do
  it { should validate_presence_of :name }

  it { should belong_to :user }
  it { should have_many :tags}
  it { should have_many(:users).through(:tags) }
end


# change belong_to through: relationship with :source
