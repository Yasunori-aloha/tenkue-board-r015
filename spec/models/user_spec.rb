require 'rails_helper'
describe User, type: :model do
  let(:user) { Factorybot.build(:user) }

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
    end

    context '新規登録ができない場合' do
    end
  end
end
