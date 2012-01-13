require 'spec_helper'

describe User do  
  context 'should be invalid ' do
    it 'terms of service is not accepted' do
      @user = Factory.build(:extended_user, :terms_of_service_accepted => false)
      @user.should be_invalid
    end
    it 'name is not provided' do
      @user = Factory.build(:extended_user, :name => '')
      @user.should be_invalid
    end
    it 'sex is not provided' do
      @user = Factory.build(:extended_user, :sex => '')
      @user.should be_invalid
    end
    it 'email is not provided' do
      @user = Factory.build(:extended_user, :email => '')
      @user.should be_invalid
    end
  end
end
