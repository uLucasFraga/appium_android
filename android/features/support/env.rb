# frozen_string_literal: true
require 'appium_lib'
require 'cucumber'
require 'yaml'
require 'pry'
require_relative 'world_screen.rb'

World(Screen)

APP_PATH = File.join(File.dirname(__FILE__), '/app/app-android-calculator.apk')
SERVER_URL = 'http://localhost:4723/wd/hub'
PORT = 4723
TWENTY_SECONDS = 20

After do
  $driver.driver_quit
end

Before do
  def opts
    {
      caps: {
        udid: '192.168.56.101:5555',
        #deviceName: 'Samsung_Galaxy_S8',
        deviceName: 'Google_Nexus_9',
        platformName: 'Android',
        app: APP_PATH,
        newCommandTimeout: '3600',
        autoGrantPermissions: true,
        # autoAcceptAlerts: true, (iOS)
      },
      appium_lib:
                      { wait: TWENTY_SECONDS,
                        server_url: SERVER_URL,
                        port: PORT }
    }
    end
  end