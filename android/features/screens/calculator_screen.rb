# !/usr/bin/env ruby

class CalculatorScreen
  def initialize
    @first_field = 'android_field_first_number'
    @second_field = 'android_field_second_number'
    @add_button = 'android_button_sum'
    @sub_button = 'android_button_sub'
    @mult_button = 'android_button_mult'
    @div_button = 'android_button_div'
    @result = 'android_result_text'
    @text = '//android.widget.TextView[@text="Simple Calculator Android"]'
  end

  def add(one, two)
    wait_for_element(id: @add_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @add_button)
  end

  def sub(one, two)
    wait_for_element(id: @sub_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @sub_button)
  end

  def mult(one, two)
    wait_for_element(id: @mult_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @mult_button)
  end

  def div(one, two)
    wait_for_element(id: @div_button)
    find_element(id: @first_field).send_keys(one)
    find_element(id: @second_field).send_keys(two)
    wait_for_click(id: @div_button)
  end
end
