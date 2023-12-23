require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    it 'nicknameが空では登録できない' do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end
    it "emailが空では登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end 
    it "passwordとpassword_confirmationが不一致では登録できない" do
      @user.password = "12345"
      @user.password_confirmation = "123456"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it "emailに@が含まれていないと登録できない" do
      @user.email = "testemail.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordが5文字以下だと登録できない" do
      @user.password = "123ab"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it "passwordがアルファベットだけだと登録できない" do
      @user.password = "abcdef"
      @user.password_confirmation = "abcdef"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end
    it "passwordが数字だけだと登録できない" do
      @user.password = "123456"
      @user.password_confirmation = "123456"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end
    it "first_nameが空だと登録できない" do
      @user.first_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    it "first_nameが半角含む英数字だと登録できない" do
      @user.first_name = "test１２３"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name Full-width characters")
    end
    it "last_nameが空だと登録できない" do
      @user.last_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end
    it "last_nameが半角含む英数字だと登録できない" do
      @user.last_name = "test１２３"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name Full-width characters")
    end
    it "first_name_readが空だと登録できない" do
      @user.first_name_read = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name read can't be blank")
    end
    it "first_name_readが半角含む英数字だと登録できない" do
      @user.first_name_read = "test１２３"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name read Full-width katakana characters")
    end
    it "first_name_readが全角カタカナ以外だと登録できない" do
      @user.first_name_read = "試験"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name read Full-width katakana characters")
    end
    it "last_name_readが空だと登録できない" do
      @user.last_name_read = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name read can't be blank")
    end
    it "last_name_readが半角含む英数字だと登録できない" do
      @user.last_name_read = "test１２３"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name read Full-width katakana characters")
    end
    it "last_name_readがカタカナでないと登録できない" do
      @user.last_name_read = "試験"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name read Full-width katakana characters")
    end
    it 'birthdayが空では登録できない' do
      @user.birthday = ""
      @user.valid?
      expect(@user.errors.full_messages).to include "Birthday can't be blank"
    end
  end
end
