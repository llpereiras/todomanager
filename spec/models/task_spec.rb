require 'rails_helper'

RSpec.describe List, :type => :model do
  before (:all) do
    DatabaseCleaner.clean_with(:deletion)
  end

  describe "Cadastro com sucesso" do
    context "Quando envia os parâmetros necessários e válidos" do
      context "Então efetua o cadastro com sucesso" do
        it do
          list = List.new
          list.description = Faker::Lorem.words(10).join(' ')
          expect(list.save).to be(true)
          list.destroy
        end
      end
    end
  end

  describe "Cadastro com erro" do
    context "Quando envia os parâmetros invalidos" do
      context "Então nao efetua o cadastro" do
        it do
          list = List.new
          expect(list.save).to be(false)
          list.destroy
        end
      end
    end
  end

end
