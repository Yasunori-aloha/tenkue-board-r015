require 'rails_helper'
describe User, type: :model do
  let(:user) { build(:user) }

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it '名前・メールアドレス・パスワードが入力されている場合' do
        expect(user).to be_valid
      end
      it 'メールアドレスの入力が半角文字だけの場合' do
        user.email = 'test@test.com'
        expect(user).to be_valid
      end
      it 'パスワードが8文字以上32文字以下で半角英数字が入力されている場合' do
        user.password = '1234567890test'
        user.password_confirmation = user.password
        expect(user).to be_valid
      end
    end

    context '新規登録ができない場合' do
      it '名前が入力されていない場合' do
        user.name = nil
        user.valid?
        expect(user.errors.full_messages).to include "Name can't be blank"
      end
      it 'メールアドレスが入力されていない場合' do
        user.email = nil
        user.valid?
        expect(user.errors.full_messages).to include "Email can't be blank"
      end
      it 'メールアドレス入力に全角文字が挿入されている場合' do
        user.email = 'test@ｔｅｓｔ.com'
        user.valid?
        expect(user.errors.full_messages).to include "Email is invalid"
      end
      it 'パスワードが入力がされていない場合' do
        user.password = nil
        user.valid?
        expect(user.errors.full_messages).to include "Password can't be blank"
      end
      it 'パスワード入力が7文字以下の場合' do
        user.password = '123456a'
        user.valid?
        expect(user.errors.full_messages).to include "Password is invalid"
      end
      it 'パスワード入力が33文字以上の場合' do
        user.password = '12345678901234567890123456789012a'
        user.valid?
        expect(user.errors.full_messages).to include "Password is invalid"
      end
      it 'パスワード入力半角英字が挿入されていない場合' do
        user.password = '12345678'
        user.valid?
        expect(user.errors.full_messages).to include "Password is invalid"
      end
      it 'パスワード入力半角数字が挿入されていない場合' do
        user.password = 'abcdefgh'
        user.valid?
        expect(user.errors.full_messages).to include "Password is invalid"
      end
      it '確認用パスワードが入力されていない場合' do
        user.password_confirmation = nil
        user.valid?
        expect(user.errors.full_messages).to include "Password confirmation can't be blank"
      end
      it '確認用パスワードがパスワードと一致しない場合' do
        user.password = 'a1234567'
        user.password_confirmation = 'b1234567'
        user.valid?
        expect(user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
    end
  end
end
