require 'rails_helper'

RSpec.describe Task, :type => :model do
  before (:all) do
    DatabaseCleaner.clean_with(:deletion)
  end

  describe "Cadastro com sucesso" do
    context "Quando envia os parâmetros necessários e válidos" do
      context "Então efetua o cadastro com sucesso" do
        it do
          task = Task.new
          task.list = FactoryGirl.create(:list)
          task.description = Faker::Lorem.words(10).join(' ')
          expect(task.save).to be(true)
          task.destroy
        end
      end
    end
  end

  describe "Cadastro com erro" do
    context "Quando envia os parâmetros invalidos" do
      context "Então nao efetua o cadastro" do
        it do
          task = Task.new
          expect(task.save).to be(false)
          task.destroy
        end
      end
    end
  end

end
