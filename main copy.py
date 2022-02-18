from selenium import webdriver
from selenium.webdriver.common.by import By

#PATH = "~/startup/chromedriver"
PATH = "/home/mike/chromedriver"

driver = webdriver.Chrome(PATH)

driver.get("https://www.kijiji.ca/t-login.html")
driver.maximize_window()

