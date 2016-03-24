require 'rails_helper'

RSpec.describe User, :type => :model do
  before (:all) do
    DatabaseCleaner.clean_with(:deletion)
  end

  describe "Cadastro com sucesso" do
    context "Quando envia os parâmetros necessários e válidos" do
      context "Então efetua o cadastro com sucesso" do
        it do
          user = User.new
          user.email = Faker::Internet.email
          user.password = Faker::Internet.password
          expect(user.save).to be(true)
          user.destroy
        end
      end
    end
  end

  describe "Cadastro com erro" do
    context "Quando envia os parâmetros invalidos" do
      context "Então nao efetua o cadastro" do
        it do
          user = User.new
          expect(user.save).to be(false)
          user.destroy
        end
      end
    end
  end

end
