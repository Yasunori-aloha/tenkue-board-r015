require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { build(:comment) }

  describe 'コメント新規投稿' do
    context '新規投稿ができる場合' do
      it 'コメントの内容が入力されている' do
      end
      it 'コメント内容が140文字以内で入力されている' do
      end
    end
    context '新規投稿ができない場合' do
      it 'コメントの内容が入力されていない' do
      end
      it 'コメント内容が141文字以上で入力されている' do
      end
    end
  end
end
