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

PATH = "/home/mike/chromedriver"

class TestT():
  def setup_method(self, method):
    self.driver = webdriver.Chrome(PATH)
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_t(self):
    self.driver.get("https://www.kijiji.ca/")
    self.driver.set_window_size(1920, 1053)
    element = self.driver.find_element(By.CSS_SELECTOR, ".link-3970392289:nth-child(2) > .image-3611670886")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).perform()
    element = self.driver.find_element(By.CSS_SELECTOR, "body")
    actions = ActionChains(self.driver)
    actions.move_to_element(element, 0, 0).perform()
    self.driver.find_element(By.LINK_TEXT, "Sign In").click()
    self.driver.find_element(By.ID, "emailOrNickname").click()
    self.driver.find_element(By.ID, "emailOrNickname").send_keys("mathbike8@gmail.com")
    self.driver.find_element(By.ID, "password").click()
    self.driver.find_element(By.ID, "password").send_keys("dC#&M73xg!sgSTqojAhqh5rQMmys")
    self.driver.find_element(By.ID, "2ecb1f31-2eb0-4d77-a633-89b52927a856").click()
    self.driver.find_element(By.CSS_SELECTOR, ".signInButton-2798687440").click()
    self.driver.find_element(By.LINK_TEXT, "Post ad").click()
    self.driver.find_element(By.ID, "AdTitleForm").send_keys("Math Tutoring")
    self.driver.find_element(By.CSS_SELECTOR, ".titleButton-581419873").click()
    self.driver.find_element(By.CSS_SELECTOR, ".categoryListItem-3726364752:nth-child(5) > .categoryButton-3830788057").click()
    self.driver.execute_script("window.scrollTo(0,568)")
    self.driver.find_element(By.CSS_SELECTOR, ".suggestedCategory-685771437").click()
    self.driver.find_element(By.CSS_SELECTOR, ".checkboxWrapper-3303533617 > .label-4021859886").click()
    self.driver.find_element(By.ID, "pstad-descrptn").click()
    self.driver.find_element(By.ID, "pstad-descrptn").send_keys("* I make sure that there are no gaps in your mathematical understanding.\\n\\n* I make sure that you understand how YOU learn most effectively.  Do you prefer to read books or do you prefer to watch videos?  Do you prefer to work alone or do you prefer to work with others?\\n\\n* I make sure you understand how to take notes and organize your equations / cheat sheets.  Math can be complicated.  Organization makes all the difference.\\n\\n* I make sure you understand how to create mathematical documents.  Which means learning the typesetting language LaTeX.\\n\\n* I give you supplementary material and exercises suitable to your current level.  Are you currently overwhelmed? Or maybe you’re not challenged enough?\\n\\n* I make sure that you know how to effectively use the resources available to you; books, the internet, lectures, videos, community, helping others, etc.")
    self.driver.find_element(By.ID, "servicesLocationInput").click()
    self.driver.find_element(By.ID, "LocationSelector-item-0").click()
    self.driver.find_element(By.ID, "servicesLocationInput").send_keys("Aurora, ON L4G 7Z7")
    self.driver.find_element(By.CSS_SELECTOR, ".button__primary-1681489609").click()
    element = self.driver.find_element(By.CSS_SELECTOR, ".button__primary-1681489609")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).perform()
    element = self.driver.find_element(By.CSS_SELECTOR, "body")
    actions = ActionChains(self.driver)
    actions.move_to_element(element, 0, 0).perform()
    self.driver.find_element(By.CSS_SELECTOR, ".pineapple-3961138139 > .overviewHeading-218687568").click()
    self.driver.find_element(By.CSS_SELECTOR, ".column-3187416924:nth-child(1) > .lowerDetailsContainer-2121043871 .button-3599696902").click()
    element = self.driver.find_element(By.CSS_SELECTOR, ".column-3187416924:nth-child(1) > .lowerDetailsContainer-2121043871 .button-3599696902")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).perform()
    element = self.driver.find_element(By.CSS_SELECTOR, "body")
    actions = ActionChains(self.driver)
    actions.move_to_element(element, 0, 0).perform()
    self.driver.find_element(By.CSS_SELECTOR, ".button__primary-1681489609").click()
