require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { build(:post) }

  describe '掲示板新規投稿' do
    context '新規投稿ができる場合' do
      it '投稿の内容が入力されている' do
        expect(post).to be_valid
      end
      it '内容が140文字以内で入力されている' do
        post.content = Faker::Lorem.characters(number: 140)
        expect(post).to be_valid
      end
    end
    context '新規投稿ができない場合' do
      it '投稿の内容が入力されていない' do
        post.content = nil
        post.valid?
        expect(post.errors.full_messages).to include "Content can't be blank"
      end
      it '内容が141文字以上で入力されている' do
        post.content = Faker::Lorem.characters(number: 141)
        post.valid?
        expect(post.errors.full_messages).to include "Content is too long (maximum is 140 characters)"
      end
    end
  end
end
