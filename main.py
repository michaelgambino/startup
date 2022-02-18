from selenium import webdriver
from selenium.webdriver.common.by import By

PATH = "~/startup/chromedriver"

driver = webdriver.Chrome(PATH)

driver.get("http://127.0.0.1:5000/")

driver.quit()
