require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'ユーザー新規登録' do
    context '新規登録が上手くいく場合'
      it '内容問題無し' do
        user = build(:user)
        expect(user).to be_valid
        expect(user.errors).to be_empty
      end
    end

    context '新規登録が上手くいかない場合'
      it 'first_nameが空では登録できない' do
        user_without_first_name = build(:user, first_name: "")
        expect(user_without_first_name).to be_invalid
        expect(user_without_first_name.errors[first_name]).to include("入力してください")
      end
      
      it 'last_nameが空では登録できない' do
        user_without_last_name = build(:user, last_name: "")
        expect(user_without_last_name).to be_invalid
        expect(user_without_last_name.errors[first_name]).to include("入力してください")
      end

      it 'passwordが空では登録ができない' do
        user_without_password = build(:user, password: "")
        expect(user_without_password).to be_invalid
        expect(user_without_password.errors[password]).to include("入力してください")
      end

      it 'password_confirmationが空では登録ができない' do
        user_without_password_confirmation = build(:user, password_confirmation: "")
        expect(user_without_password_confirmation).to be_invalid
        expect(user_without_password_confirmation.errors[password_confirmation]).to include("入力してください")
      end

      it 'emailが空では登録ができない' do
        user_without_email = build(:user, email: "")
        expect(user_without_email).to be_invalid
        expect(user_without_email.errors[email]).to include("入力してください")
      end

      it '重複したemailが存在する場合登録できない' do
        user = build(:user)
        another_user = build(:user, email: user.email)
        expect(another_user).to be_invalid
        expect(another_user.errors[email]).to include("すでに存在します")
      end

      it 'nicknameが255文字以上では登録できない' do
        user_over_nickname = build(:user, nickname: 'a' * 256 )
        expect(user_over_nickname).to be_invalid
        expect(user_over_nickname.errors[nickname]).to include("文字以内で入力してください")
      end

      it 'bodyが16383文字以上では登録できない' do
        user_over_body = build(:user, body: 'a' * 16384 )
        expect(user_over_body).to be_invalid
        expect(user_over_body.errors[body]).to include("文字以内で入力してください")
      end
    end

    context 'パスワード検証'
      it 'is valid with another title' do
        user_different_pass = build(:user, password: "password", password_confirmation: "pass" )
        expect(user_different_pass).to be_invalid
        expect(user_different_pass.errors[password_confirmation]).to include("パスワードの入力が一致しません")
      end

      it 'パスワードが暗号化されていること' do
        user = build(:user)
        expect(user.crypted_password).to_not eq 'Itg43y0G'
      end
    end
  end
end
