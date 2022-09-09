require 'rails_helper'

RSpec.describe Event, type: :model do
  
  describe 'イベント新規登録' do
    context '新規登録が上手くいく場合'
      it '内容問題無し' do
        event = build(:event)
        expect(event).to be_valid
        expect(event.errors).to be_empty
      end
    end

    context '新規登録が上手くいかない場合'

      it 'titleが空では登録できない' do
        event_without_title = build(:event, title: "")
        expect(event_without_title).to be_invalid
        expect(event_without_title.errors[title]).to include("入力してください")
      end

      it 'bodyが空では登録できない' do
        event_without_body = build(:event, body: "")
        expect(event_without_body).to be_invalid
        expect(event_without_body.errors[body]).to include("入力してください")
      end

      it 'dateが空では登録できない' do
        event_without_date = build(:event, date: "")
        expect(event_without_date).to be_invalid
        expect(event_without_date.errors[date]).to include("入力してください")
      end

      it 'titleが255文字以上では登録できない' do
        user_over_title = build(:user, title: 'a' * 256 )
        expect(user_over_title).to be_invalid
        expect(user_over_title.errors[title]).to include("文字以内で入力してください")
      end

      it 'bodyが16383文字以上では登録できない' do
        user_over_body = build(:user, body: 'a' * 16383 )
        expect(user_over_body).to be_invalid
        expect(user_over_body.errors[body]).to include("文字以内で入力してください")
      end
    end
  end
