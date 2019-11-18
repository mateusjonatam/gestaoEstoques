require "application_system_test_case"

class EstoquesTest < ApplicationSystemTestCase
  setup do
    @estoque = estoques(:one)
  end

  test "visiting the index" do
    visit estoques_url
    assert_selector "h1", text: "Estoques"
  end

  test "creating a Estoque" do
    visit estoques_url
    click_on "New Estoque"

    fill_in "Data", with: @estoque.data
    fill_in "Operacao", with: @estoque.operacao
    fill_in "Pessoa", with: @estoque.pessoa_id
    fill_in "Produto", with: @estoque.produto
    fill_in "Quantidade", with: @estoque.quantidade
    click_on "Create Estoque"

    assert_text "Estoque was successfully created"
    click_on "Back"
  end

  test "updating a Estoque" do
    visit estoques_url
    click_on "Edit", match: :first

    fill_in "Data", with: @estoque.data
    fill_in "Operacao", with: @estoque.operacao
    fill_in "Pessoa", with: @estoque.pessoa_id
    fill_in "Produto", with: @estoque.produto
    fill_in "Quantidade", with: @estoque.quantidade
    click_on "Update Estoque"

    assert_text "Estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Estoque" do
    visit estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estoque was successfully destroyed"
  end
end
