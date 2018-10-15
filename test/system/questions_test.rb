require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying i am going to work yields a happy response from the coach" do
    visit ask_url
    fill_in "question", with: "i am going to work"
    click_on "Ask"

    assert_text "Great!"
    take_screenshot
  end

  test "asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "are you interested in buying cookies?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
