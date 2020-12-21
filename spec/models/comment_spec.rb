require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { build(:comment) }

  describe 'コメント新規投稿' do
    context '新規投稿ができる場合' do
      it 'コメントの内容が入力されている' do
        expect(comment).to be_valid
      end
      it 'コメント内容が140文字以内で入力されている' do
        comment.comment = Faker::Lorem.characters(number: 140)
        expect(comment).to be_valid
      end
    end
    context '新規投稿ができない場合' do
      it 'コメントの内容が入力されていない' do
        comment.comment = nil
        comment.valid?
        expect(comment.errors.full_messages).to include "Comment can't be blank"
      end
      it 'コメント内容が141文字以上で入力されている' do
        comment.comment = Faker::Lorem.characters(number: 141)
        comment.valid?
        expect(comment.errors.full_messages).to include "Comment is too long (maximum is 140 characters)"
      end
    end
  end
end
