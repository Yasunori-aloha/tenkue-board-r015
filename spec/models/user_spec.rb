require 'rails_helper'
describe User, type: :model do
  let(:user) { Factorybot.build(:user) }

  describe 'ユーザー新規登録' do
    context '新規登録ができる場合' do
      it '名前・メールアドレス・パスワードが入力されている場合' do
      end
      it 'メールアドレスの入力が半角文字だけの場合' do
      end
      it 'パスワードが8文字以上32文字以下で半角英数字が入力されている場合' do
      end
    end

    context '新規登録ができない場合' do
      it '名前が入力されていない場合' do
      end
      it 'メールアドレスが入力されていない場合' do
      end
      it 'メールアドレス入力に全角文字が挿入されている場合' do
      end
      it 'パスワードが入力がされていない場合' do
      end
      it 'パスワード入力が7文字以下の場合' do
      end
      it 'パスワード入力が33文字以上の場合' do
      end
      it 'パスワード入力半角英字が挿入されていない場合' do
      end
      it 'パスワード入力半角数字が挿入されていない場合' do
      end
      it '確認用パスワードが入力されていない場合' do
      end
      it '確認用パスワードがパスワードと一致しない場合' do
      end
    end
  end
end
