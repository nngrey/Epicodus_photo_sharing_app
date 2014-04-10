require 'spec_helper'

describe User do
  it { should have_secure_password }
  it { should validate_uniqueness_of :email }

  it { should have_many :photos }
  it { should have_many(:photos).through(:tags) }
  it { should have_many :tags }

end
