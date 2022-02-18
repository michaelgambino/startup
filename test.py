# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class TestKij():
  def setup_method(self, method):
    self.driver = webdriver.Chrome()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_kij(self):
    self.driver.get("http://127.0.0.1:5000/login")
    self.driver.set_window_size(1920, 1053)
    self.driver.find_element(By.ID, "email").click()
    self.driver.find_element(By.ID, "email").send_keys("mathbike8@gmail.com")
    self.driver.find_element(By.ID, "password").click()
    self.driver.find_element(By.ID, "password").send_keys("dC#&M73xg!sgSTqojAhqh5rQMmys")
    self.driver.find_element(By.CSS_SELECTOR, "input:nth-child(6)").click()
    self.driver.find_element(By.LINK_TEXT, "Repost all ads").click()
    self.driver.find_element(By.LINK_TEXT, "Logout").click()
  
