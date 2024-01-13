require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '購入時' do
    before do
      @order_address = FactoryBot.build(:order_address)
    end

    context '内容に問題ない場合' do
      # it 'すべての値が正しく入力されていれば保存できること' do
      #   expect(@order_address).to be_valid
      # end
      it 'building_nameは空でも保存できること' do
        @order_address.building_name = nil
        expect(@order_address).to be_valid
      end
      it "tokenがあれば保存ができること" do
        @order_address.token = "tok_abcdefghijk00000000000000000"
        expect(@order_address).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'postal_cordが空だと保存できないこと' do
        @order_address.postal_cord = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Postal cord can't be blank")
      end
      it 'postal_cordが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
        @order_address.postal_cord = '1234567'
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Postal cord Input correctly')
      end
      it 'prefectureを選択していないと保存できないこと' do
        @order_address.prefecture_id = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Prefecture Select")
      end
      it 'cityが空だと保存できないこと' do
        @order_address.city = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("City can't be blank")
      end
      it 'addressが空だと保存できないこと' do
        @order_address.address = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Address can't be blank")
      end
      it 'phone_numberが空だと保存できないこと' do
        @order_address.phone_number = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'phone_numberが10桁以上でないと保存できないこと' do
        @order_address.phone_number = 0
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Phone number is invalid")
      end
      it 'phone_numberが数値でないと保存できないこと' do
        @order_address.phone_number = "テスト"
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include('Phone number is not a number')
      end
      it 'phone_numberが数値でないと保存できないこと' do
        @order_address.token = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
      it "tokenが空では登録できないこと" do
        @order_address.token = nil
        @order_address.valid?
        expect(@order_address.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end
