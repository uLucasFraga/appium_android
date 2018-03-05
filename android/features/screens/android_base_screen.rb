# wait_for_element(id: 'xpto')
def wait_for_element(atributos)
  wait = Selenium::WebDriver::Wait.new
  wait.until { find_element(atributos).displayed? }
    rescue Selenium::WebDriver::Error::TimeOutError
      raise "Não encontrou o resultado da busca \n #{e.message}"
    end

# wait_for_click(id: 'xpto')
def wait_for_click(atributos)
  begin
    wait = Selenium::WebDriver::Wait.new
    wait { find_element(atributos).displayed? }
    wait { find_element(atributos).click }
  rescue Selenium::WebDriver::Error::TimeOutError => e
    raise "Não conseguiu efetuar a ação \n #{e.message}"
  end

  # wait_for_seconds_click(id: 'xpto', :timeout => tempo)
  def wait_for_seconds_click(atributos, tempo)
    wait = Selenium::WebDriver::Wait.new timeout: tempo
    wait { find_element(atributos).click }
  rescue Selenium::WebDriver::Error::TimeOutError => e
    raise "Não conseguiu efetuar a ação \n #{e.message}"
  end
end