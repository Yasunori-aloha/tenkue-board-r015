require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:content) { build(:content) }

  describe '掲示板新規投稿' do
    context '新規投稿ができる場合' do
      it '投稿の内容が入力されている' do
      end
      it '内容が140文字以内で入力されている' do
      end
    end
    context '新規投稿ができない場合' do
      it '投稿の内容が入力されていない' do
      end
      it '内容が141文字以上で入力されている' do
      end
    end
  end
end
