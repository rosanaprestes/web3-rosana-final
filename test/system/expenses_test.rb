require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Due date", with: @expense.due_date
    fill_in "Expense", with: @expense.expense
    fill_in "Pay day", with: @expense.pay_day
    fill_in "Status", with: @expense.status
    fill_in "Value", with: @expense.value
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Due date", with: @expense.due_date
    fill_in "Expense", with: @expense.expense
    fill_in "Pay day", with: @expense.pay_day
    fill_in "Status", with: @expense.status
    fill_in "Value", with: @expense.value
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
